# River Raid Disassembly Completion Plan

## Task Tracking

Tasks are tracked in the `tasks/` directory. Each task is a Markdown file:

- **Format:** `NNN_short_name.md` (e.g., `001_main_gameplay_loop.md`)
- **Status values:** `Todo`, `In Progress`, `Done`, `Blocked`
- **Priorities:** Adjusted by renumbering or noting in the task file

**Workflow:**

1. Pick a task, change its status to `In Progress`
2. Work on the task in `river-raid.ctl`
3. If new tasks emerge (e.g., deeper documentation needed), create the next task with the next available number (e.g.
   `007_new_task.md`)
4. Mark task `Done` when acceptance criteria are met
5. Commit task file changes together with code changes

To see current tasks: `ls tasks/`

## Project Status

| Metric                 | Value                                   |
|------------------------|-----------------------------------------|
| Documentation coverage | 16% (37/229 routines have descriptions) |
| Global variables       | 75 (well-documented)                    |
| Constants defined      | 100+ (good coverage)                    |
| Build status           | Passing (byte-identical output)         |

**Goal 1** (reassemblable source) is complete.
**Goal 2** (document internal mechanics) is 16% complete.

## Critical Undocumented Areas

### Tier 1: System Architecture (six routines)

These control overall game flow and execute millions of times per game session:

| Address | Name                 | Description                                         | Priority |
|---------|----------------------|-----------------------------------------------------|----------|
| $5F91   | Main gameplay loop   | Central state machine orchestrating all subsystems  | Critical |
| $6136   | Collision dispatcher | Routes collision detections to appropriate handlers | Critical |
| $6BDB   | NMI handler          | Frame timing and interrupt-driven updates           | Critical |
| $6BED   | Process controls     | Input → action → sound pipeline                     | Critical |
| $60A5   | Render plane/terrain | Top-level render orchestration                      | Critical |
| $683B   | Island rendering     | Core visual update system                           | Critical |

### Tier 2: Major Game Systems (~25 routines)

| System            | Routines                   | Status               |
|-------------------|----------------------------|----------------------|
| Input handling    | $5FDA, $600A, $6039, $6068 | Undocumented         |
| Enemy AI/spawning | $6FE6, $6FF6, $76AF, $76DA | Undocumented         |
| Sound effects     | 11 routines ($6C31-$8A02)  | Undocumented         |
| Bridge system     | $68E9, $693C, $694D, $6927 | Partially documented |
| Terrain/islands   | $696B, $6A4F, $6990, $6AA3 | Partially documented |

### Tier 3: Algorithmic Functions (~60 routines)

Terrain rendering pipeline, sprite rendering helpers, coordinate transformations, scroll/attribute updates.

### Tier 4: Utilities (~100 routines)

Supporting functions, data transformations, specialized helpers.

## Execution Hot Paths

From profiling data (`river-raid.prof`), the most executed code:

1. **$6859-$68C0** – Core rendering hot path (~300M+ executions)
2. **$5F91** – Main loop (~171M executions)
3. **$6136** – Collision dispatch (~54M executions)
4. **$6BED** – Control processing (~43M executions)
5. **$683B** – Island rendering (~38M executions)

These routines have minimal documentation despite being the most critical.

## Proposed Phases

### Phase 1: System Architecture (5–10 hours)

Document the six Tier 1 routines that form the game's backbone:

| Task                                     | Address | Description                            |
|------------------------------------------|---------|----------------------------------------|
| [001](tasks/001_main_gameplay_loop.md)   | $5F91   | Main gameplay loop structure           |
| [002](tasks/002_collision_dispatcher.md) | $6136   | Collision detection dispatch mechanism |
| [003](tasks/003_nmi_handler.md)          | $6BDB   | NMI handler and timing                 |
| [004](tasks/004_process_controls.md)     | $6BED   | Control state processing               |
| [005](tasks/005_render_orchestration.md) | $60A5   | Render orchestration                   |
| [006](tasks/006_island_rendering.md)     | $683B   | Island/scroll system                   |

**Deliverable:** High-level understanding of game architecture.

### Phase 2: Major Systems (12–25 hours)

Document major game subsystems:

1. [ ] Input system pipeline (4 routines)
2. [ ] Enemy spawning and AI (8+ routines)
3. [ ] Sound effect system (11 routines)
4. [ ] Bridge progression system (five routines)
5. [ ] Terrain generation system (6+ routines)

**Deliverable:** Complete documentation of all major game features.

### Phase 3: Core Algorithms

Document rendering and calculation routines:

1. [ ] Sprite rendering pipeline ($8B1E, $8B3C, $8B70)
2. [ ] Terrain rendering details
3. [ ] Coordinate transformation operations
4. [ ] Attribute/color update routines
5. [ ] Scrolling mechanics

**Deliverable:** Algorithmic understanding sufficient for reimplementation.

### Phase 4: Completion

Fill remaining gaps:

1. [ ] Utility functions
2. [ ] Edge cases and minor handlers
3. [ ] Data structure documentation
4. [ ] Cross-reference verification

**Deliverable:** 100% routine documentation coverage.

## Estimated Total Effort

| Phase     | Hours     | Routines |
|-----------|-----------|----------|
| Phase 1   | 5-10      | 6        |
| Phase 2   | 12-25     | 25       |
| Phase 3   | 15-30     | 60       |
| Phase 4   | 10-25     | 100      |
| **Total** | **42-90** | **192**  |

## Documentation Standards

All documentation should follow the patterns established in CLAUDE.md:

- Multi-paragraph N directives for complex algorithms
- Register annotations (I:, O:) for function parameters
- Cross-references using #R$XXXX format
- Game-level color constants (COLOR_PLAYER_1, COLOR_RIVER, etc.)
- Concise EXT_ATTR comments (AT row,col, INK COLOR, PAPER COLOR)
- Algorithm descriptions sufficient for higher-level reimplementation
- Data structure tables documented inline when first encountered
- Skip routines with unclear purposes rather than speculating

## Success Criteria

1. All routines with clear purposes have D (description) blocks
2. All hot-path routines have N (narrative) blocks explaining algorithms
3. All data structures are documented when first encountered
4. Cross-references are consistent and complete
5. Someone unfamiliar with Z80 could understand the game logic

## Approach Decisions

1. **Priority ordering:** Functional grouping (not execution frequency). Work through related routines together.

2. **Depth vs breadth:** Breadth first. Achieve complete shallow coverage before deep dives into complex algorithms.

3. **Verification approach:** Compare documented behavior against the actual disassembly code.

4. **Data structures:** Document as they emerge. When code references a data structure, document it immediately.

5. **Unknown routines:** Skip routines with unclear purposes. Do not speculate; only document what is understood.
