#!/usr/bin/env python3
"""
Validate that instructions within each address block in a SkoolKit .ctl file
follow the canonical order.

Canonical order for instructions at the same address:
1. @ (directives: label, isub, equ, org, etc.)
2. b/c/t/u/w/s/g (block type declaration)
3. D (description - first and additional paragraphs)
4. N (block-level comments - first and additional paragraphs)
5. R (register annotations - inputs and outputs)
6. i (instruction-level comments)
"""

import sys
import re
from typing import List, Tuple, Optional, Dict
from collections import defaultdict


# Canonical order mapping (lower number = earlier in order)
INSTRUCTION_ORDER = {
    '@': 1,  # Directives (label, isub, equ, org, etc.)
    'b': 2,  # Block type: data byte
    'c': 2,  # Block type: code
    't': 2,  # Block type: text
    'u': 2,  # Block type: unused
    'w': 2,  # Block type: word
    's': 2,  # Block type: space
    'g': 2,  # Block type: game status buffer
    'D': 3,  # Description
    'N': 4,  # Block-level comments
    'R': 5,  # Register annotations
    'i': 6,  # Instruction-level comments
    '>': 0,  # EQU directives (should come before @ in practice, but rare)
}


class InstructionInfo:
    """Information about an instruction at a specific address."""

    def __init__(self, line_number: int, line_content: str, address: int, instruction_type: str):
        self.line_number = line_number
        self.line_content = line_content.rstrip()
        self.address = address
        self.instruction_type = instruction_type
        self.order_priority = INSTRUCTION_ORDER.get(instruction_type, 999)

    def __repr__(self):
        return f"Line {self.line_number}: {self.instruction_type} ${self.address:04X}"


def parse_address(addr_str: str) -> Optional[int]:
    """
    Parse a hexadecimal address string (e.g., '$4000' or '4000') to an integer.

    Args:
        addr_str: Address string, optionally prefixed with '$'

    Returns:
        Integer address or None if parsing fails
    """
    addr_str = addr_str.strip()
    if addr_str.startswith('$'):
        addr_str = addr_str[1:]

    try:
        return int(addr_str, 16)
    except ValueError:
        return None


def extract_instructions(ctl_file_path: str) -> Dict[int, List[InstructionInfo]]:
    """
    Extract all instructions from a .ctl file, grouped by address.

    Args:
        ctl_file_path: Path to the .ctl file

    Returns:
        Dictionary mapping address to a list of InstructionInfo objects
    """
    instructions_by_address = defaultdict(list)

    # Patterns for different instruction types
    # Main directives: c, g, b, t, u, s, w, i (followed by address)
    main_directive_pattern = re.compile(r'^([cgbtuswi])\s+\$([0-9A-Fa-f]+)')

    # Annotation directives: @ (followed by address)
    annotation_pattern = re.compile(r'^@\s+\$([0-9A-Fa-f]+)')

    # EQU directives: > (followed by address)
    equ_pattern = re.compile(r'^>\s+\$([0-9A-Fa-f]+)')

    # Sub-directives: N, D, R, E (followed by address)
    sub_directive_pattern = re.compile(r'^([NDRE])\s+\$([0-9A-Fa-f]+)')

    # Line-level comment directives: address,length (e.g., "  $5CD2,3 Comment")
    line_comment_pattern = re.compile(r'^\s+\$([0-9A-Fa-f]+),')

    with open(ctl_file_path, 'r', encoding='utf-8') as f:
        for line_number, line in enumerate(f, start=1):
            # Try to match main directives (c, g, b, t, u, s, w, i)
            match = main_directive_pattern.match(line)
            if match:
                instruction_type = match.group(1)
                address = parse_address(match.group(2))
                if address is not None:
                    info = InstructionInfo(line_number, line, address, instruction_type)
                    instructions_by_address[address].append(info)
                continue

            # Try to match annotation directives (@)
            match = annotation_pattern.match(line)
            if match:
                address = parse_address(match.group(1))
                if address is not None:
                    info = InstructionInfo(line_number, line, address, '@')
                    instructions_by_address[address].append(info)
                continue

            # Try to match EQU directives (>)
            match = equ_pattern.match(line)
            if match:
                address = parse_address(match.group(1))
                if address is not None:
                    info = InstructionInfo(line_number, line, address, '>')
                    instructions_by_address[address].append(info)
                continue

            # Try to match sub-directives (N, D, R, E)
            match = sub_directive_pattern.match(line)
            if match:
                instruction_type = match.group(1)
                address = parse_address(match.group(2))
                if address is not None:
                    info = InstructionInfo(line_number, line, address, instruction_type)
                    instructions_by_address[address].append(info)
                continue

            # Try to match line-level comments
            match = line_comment_pattern.match(line)
            if match:
                address = parse_address(match.group(1))
                if address is not None:
                    info = InstructionInfo(line_number, line, address, 'i')
                    instructions_by_address[address].append(info)
                continue

    return instructions_by_address


def validate_instruction_order(instructions_by_address: Dict[int, List[InstructionInfo]]) -> Tuple[bool, List[Tuple[InstructionInfo, InstructionInfo]]]:
    """
    Validate that instructions within each address block follow canonical order.

    Args:
        instructions_by_address: Dictionary mapping address to a list of instructions

    Returns:
        Tuple of (is_valid, list_of_violations)
        where list_of_violations contains pairs of (previous_instruction, current_instruction)
    """
    violations = []

    for address in sorted(instructions_by_address.keys()):
        instructions = instructions_by_address[address]

        # Check order within this address block
        for i in range(1, len(instructions)):
            prev_instr = instructions[i - 1]
            curr_instr = instructions[i]

            # Violation if current instruction has lower priority than previous
            if curr_instr.order_priority < prev_instr.order_priority:
                violations.append((prev_instr, curr_instr))

    return len(violations) == 0, violations


def main():
    """Main entry point."""
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <ctl_file>")
        print()
        print("Validates that instructions within each address block follow canonical order:")
        print("  1. @ (directives)")
        print("  2. b/c/t/u/w/s/g (block type)")
        print("  3. D (description)")
        print("  4. N (block-level comments)")
        print("  5. R (register annotations)")
        print("  6. i (instruction-level comments)")
        sys.exit(1)

    ctl_file_path = sys.argv[1]

    try:
        instructions_by_address = extract_instructions(ctl_file_path)
        is_valid, violations = validate_instruction_order(instructions_by_address)

        if is_valid:
            return 0

        print(f"Found {len(violations)} ordering violation(s):")
        print()

        for prev_instr, curr_instr in violations:
            print(f"  Violation at address ${curr_instr.address:04X}:")
            print(f"    {prev_instr}")
            print(f"      {prev_instr.line_content}")
            print(f"    should come AFTER")
            print(f"    {curr_instr}")
            print(f"      {curr_instr.line_content}")
            print()

        return 1

    except FileNotFoundError:
        print(f"Error: File not found: {ctl_file_path}")
        return 1
    except Exception as e:
        print(f"Error: {e}")
        import traceback
        traceback.print_exc()
        return 1


if __name__ == '__main__':
    sys.exit(main())
