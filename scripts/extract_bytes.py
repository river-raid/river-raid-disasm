#!/usr/bin/env python3

import sys
from skoolkit.snapshot import get_snapshot

def extract_bytes(snapshot_path, start_addr, size, output_path):
    snapshot = get_snapshot(snapshot_path)

    data = bytes(snapshot[start_addr:start_addr + size])

    with open(output_path, 'wb') as f:
        f.write(data)

if __name__ == '__main__':
    if len(sys.argv) != 5:
        print(f'Usage: {sys.argv[0]} <snapshot.z80> <start_addr> <size> <output.bin>')
        sys.exit(2)

    extract_bytes(sys.argv[1], int(sys.argv[2]), int(sys.argv[3]), sys.argv[4])

