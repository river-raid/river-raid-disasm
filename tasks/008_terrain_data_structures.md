# Task 008: Document Terrain Data Structures

**Status:** Done
**Phase:** 2 - Major Systems
**Priority:** High

## Objective

Document the data structures that define terrain shapes, islands, and level layouts.

## Scope

- Document terrain profiles ($8063)
- Document island data ($C600)
- Document level terrain data ($9500)
- Document screen row table ($5B00)

## Acceptance Criteria

- [x] Terrain profiles documented with table format
- [x] Island data documented with 3-byte entry format
- [x] Level terrain data documented with 4-byte fragment format
- [x] Screen row table documented with purpose explained
- [x] Build passes after changes

## Completed Work

### Terrain Profiles ($8063)
- 15 profiles × 16 bytes = 240 bytes
- Each byte is X offset for bank edge at that scanline
- Special profiles: 1=pre-bridge, 2=bridge, 3=post-bridge
- Bit 7 triggers special rendering at #R$6B7B

### Island Data ($C600)
- 36 islands × 3 bytes = 108 bytes
- Byte 0: Profile index (0-14) from #R$8063
- Byte 1: Width offset added to profile values
- Byte 2: Edge mode (0=direct, 1=mirror, 2=offset)

### Level Terrain Data ($9500)
- 48 levels × 256 bytes = 12,288 bytes
- 64 fragments per level × 4 bytes each
- Byte 0: Profile number
- Bytes 1-2: Row offset (16-bit)
- Byte 3: Edge mode (bits 0-1) + island index (bits 2-7)

### Screen Row Table ($5B00)
- 64 entries × 2 bytes = 128 bytes
- Pre-computed screen addresses for fast row lookup
- Avoids complex ZX Spectrum screen address calculation

## Notes

These structures together define how River Raid generates its infinite scrolling terrain with varying river widths, islands, and bridges.
