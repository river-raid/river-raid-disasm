#!/usr/bin/env python3
"""
Validate that all directives in a SkoolKit .ctl file are ordered by address.

This script reads a .ctl file and checks that all address-based directives
(c, g, b, t, u, s, w, i, @, >, N, D, R, E, and line-level comments)
are in ascending address order.
"""

import sys
import re
from typing import List, Tuple, Optional


class DirectiveInfo:
    """Information about a directive with an address."""

    def __init__(self, line_number: int, line_content: str, address: int, directive_type: str):
        self.line_number = line_number
        self.line_content = line_content.rstrip()
        self.address = address
        self.directive_type = directive_type

    def __repr__(self):
        return f"Line {self.line_number}: {self.directive_type} ${self.address:04X}"


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


def extract_directives(ctl_file_path: str) -> List[DirectiveInfo]:
    """
    Extract all address-based directives from a .ctl file.

    Args:
        ctl_file_path: Path to the .ctl file

    Returns:
        List of DirectiveInfo objects
    """
    directives = []

    # Patterns for different directive types
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
                directive_type = match.group(1)
                address = parse_address(match.group(2))
                if address is not None:
                    directives.append(DirectiveInfo(line_number, line, address, directive_type))
                continue

            # Try to match annotation directives (@)
            match = annotation_pattern.match(line)
            if match:
                address = parse_address(match.group(1))
                if address is not None:
                    directives.append(DirectiveInfo(line_number, line, address, '@'))
                continue

            # Try to match EQU directives (>)
            match = equ_pattern.match(line)
            if match:
                address = parse_address(match.group(1))
                if address is not None:
                    directives.append(DirectiveInfo(line_number, line, address, '>'))
                continue

            # Try to match sub-directives (N, D, R, E)
            match = sub_directive_pattern.match(line)
            if match:
                directive_type = match.group(1)
                address = parse_address(match.group(2))
                if address is not None:
                    directives.append(DirectiveInfo(line_number, line, address, directive_type))
                continue

            # Try to match line-level comments
            match = line_comment_pattern.match(line)
            if match:
                address = parse_address(match.group(1))
                if address is not None:
                    directives.append(DirectiveInfo(line_number, line, address, 'comment'))
                continue

    return directives


def validate_address_order(directives: List[DirectiveInfo]) -> Tuple[bool, List[Tuple[DirectiveInfo, DirectiveInfo]]]:
    """
    Validate that directives are in ascending address order.

    Args:
        directives: List of DirectiveInfo objects

    Returns:
        Tuple of (is_valid, list_of_violations)
        where list_of_violations contains pairs of (previous_directive, current_directive)
    """
    violations = []

    for i in range(1, len(directives)):
        prev_directive = directives[i - 1]
        curr_directive = directives[i]

        if curr_directive.address < prev_directive.address:
            violations.append((prev_directive, curr_directive))

    return len(violations) == 0, violations


def main():
    """Main entry point."""
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <ctl_file>")
        print()
        print("Validates that all directives in a SkoolKit .ctl file are ordered by address.")
        sys.exit(1)

    ctl_file_path = sys.argv[1]

    try:
        directives = extract_directives(ctl_file_path)
        is_valid, violations = validate_address_order(directives)

        if is_valid:
            return 0

        print(f"Found {len(violations)} ordering violation(s):")
        print()

        for prev_directive, curr_directive in violations:
            print(f"  Violation:")
            print(f"    {prev_directive}")
            print(f"      {prev_directive.line_content}")
            print(f"    {curr_directive}")
            print(f"      {curr_directive.line_content}")
            print()

        return 1

    except FileNotFoundError:
        print(f"Error: File not found: {ctl_file_path}")
        return 1
    except Exception as e:
        print(f"Error: {e}")
        return 1


if __name__ == '__main__':
    sys.exit(main())
