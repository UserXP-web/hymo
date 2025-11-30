## v0.2.8-r5-gdbf4c8f

Changes since v0.2.8-r4:
* fix(mount): remove unused bail import and umount_dir function
* feat(overlayfs): port robust mounting logic and child restoration from meta-overlayfs
* fix(core): remove unused constants and utilities after nuke refactor
* refactor(nuke): remove nuke module and lkm binaries, integrate stealth logic into main
* feat(log): upgrade to tracing with panic hooks and file logging
* fix(core): resolve unused variable warnings in inventory and planner
* 	modified:   src/core/mod.rs
* Reapply "chore(deps): enable `no_thp`, `override` for mimalloc"
* refactor(core): remove legacy sync logic from modules.rs
* ix(executor): adapt to new planner and finalize main integration
* feat(planner): implement classification pipeline and conflict detection
* refactor(core): decouple storage and split modules.rs into inventory/sync
* Revert "chore(deps): enable `no_thp`, `override` for mimalloc"
* fix(utils): ensure copy_path_context is exported to fix build error
* refactor: overhaul mount logic (skip empty, wipe sync, relocate mount point)
* [skip ci] Update KernelSU json and changelog for v0.2.8-r4