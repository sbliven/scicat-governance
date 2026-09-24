# Governance Amendments

## Abbreviations and Links

SC = [Steering Committee](../governance-entities/STEERING-COMMITTEE.md)
AC = [Active Contributors](../governance-entities/CONTRIBUTORS-COMMUNITY.md)
PL = [Project Leaders](../governance-entities/PROJECT-LEADERS.md)
PC = [Project Channels](../project-components/PROJECT-CHANNELS.md)
Project = [SciCat Project](../project-components/SCICAT-PROJECT.md)

## Purpose

This document defines how the SciCat governance documents are amended after initial ratification.

## Scope

Amendments apply to the following documents:

- `governance-entities/`
- `procedures/`

Documents under `other/`, `project-components` and `utils/` are not subject to this procedure.
They may be updated with approval by the Project Leaders (PL).
Documents in `roles/` will be updated with the current membership following elections and appointments.

## Document Versions

- The **authoritative version** of the governed documents is the latest [GitHub release](https://github.com/SciCatProject/governance/releases) of this repository.
- An approved amendment takes effect when incorporated into a new GitHub release. Until then, the previously ratified release remains authoritative.

Tags follow semantic versioning, starting at `v1.0.0` and with the following interpretation:

- Major versions indicate amendments to in-scope documents that have been approved following the procedure below
- Minor versions indicate changes to out-of-scope documents. For example, election results are recorded in `roles/` and trigger a minor release.
- Patch versions are for minor spelling or formatting changes.

## Amendment Procedure

### Proposal

Any Active Contributor may propose an amendment by pull request to this repository. The pull request must clearly describe the change and its rationale.

### Approval

An amendment requires approval by a two-thirds supermajority of the SC.

At least a majority (>= 50%)  of SC members must participate (in person or remotely). If
quorum is not met, the vote does not take effect and may be rescheduled.

### Venue and Timing

Amendment votes are held at the annual SciCatCon meeting when possible. If SciCatCon is not feasible, a special session may be called by the Project Leaders.

Remote participation is permitted and count toward quorum and vote totals.

### Announcement and Discussion

Amendments must be publicly announced through the official Project Channels (PC) with reasonable advance notice. The announcement must identify:

- the pull request under vote
- the date and location (or remote access details) of the vote
- the eligible voting bodies and quorum requirements

A public discussion period should precede the vote, as described in the [Voting](./VOTING.md) document.

### Effect

An approved amendment takes effect when incorporated into a new GitHub release. Until then, the previously ratified release remains authoritative.

Results must be documented and published through the official PC.

## Relationship to Other Procedures

- Amendment votes use the supermajority thresholds defined in this document.
- Initial ratification follows the [Ratification](./RATIFICATION.md) procedure.
- Other Project decisions follow the [Voting](./VOTING.md) procedure unless this document states otherwise.
- Documents not included in the scope may be updated with approval from a PL without the amendment procedure in this document.

## Records

Amendment results must be recorded and made publicly accessible through the official PC, including:

- the amendment pull request
- quorum attainment for each voting body
- vote totals
- the effective date or release tag

***
Licensed under the [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) License.
