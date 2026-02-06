# ✨ Changelog (`v3.16.2`)

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Version Info

```text
This version -------- v3.16.2
Previous version ---- v2.3.0
Initial version ----- v2.1.1
Total commits ------- 32
```

## [v3.16.2] - 2026-02-06

### 🔄 Changed

- extend CD pipeline with enhanced bug bounty publication workflow

## [v3.16.1] - 2026-01-27

### 🆕 Added

- add attachment accessible political businesses

## [v3.16.0] - 2025-12-12

### :arrows_counterclockwise: Changed

- religion proto : added codes for manual print if person is minor or foreigner
- manual_voting_card_generator_jobs_requests: added missing fields domain_of_influence_identification_church and domain_of_influence_identification_school

## [v3.15.0] - 2025-12-08

### :new: Added

- include_domain_of_influence_church and include_domain_of_influence_school in VotingCardLayoutDataConfiguration

## [v3.14.0] - 2025-12-01

### 🆕 Added

- add voter lists with empty voting cards

## [v3.13.0] - 2025-11-19

### 🆕 Added

- support empty voting cards per domain of influence

## [v3.12.3] - 2025-11-19

### 🔄 Changed

- extend voter duplicate with street and house number

## [v3.12.2] - 2025-11-18

### 🆕 Added

- add domain of influence bfs

## [v3.12.1] - 2025-11-17

### 🔄 Changed

- message CreateManualVotingCardVoterRequest: allow empty peron_id since this field is optional.

## [v3.12.0] - 2025-11-13

### 🆕 Added

- religion and is_householder to message ManualVotingCardVoter

## [v3.11.0] - 2025-11-04

### 🆕 Added

- new sort criteria in enum VotingCardSort: VOTING_CARD_SORT_PLACE, VOTING_CARD_SORT_DENOMINATION, VOTING_CARD_SORT_HOUSEHOLD

## [v3.10.1] - 2025-10-22

### 🔄 Changed

- angular and base components update

## [v3.10.0] - 2025-10-21

### 🆕 Added

- stistat_municipality in domain_of_influence.proto

## [v3.9.0] - 2025-09-25

### 🆕 Added

- add version choice and eCH-0045 v6 to e-voting export

## [v3.8.2] - 2025-08-28

### 🔄 Changed

- bump voting lib version

## [v3.8.1] - 2025-08-20

### 🆕 Added

- add voting card counts

## [v3.8.0] - 2025-07-25

### 🆕 Added

- add voting card layout data configuration

## [v3.7.1] - 2025-07-25

### 🔄 Changed

- message UpdateDomainOfInfluenceVotingCardBrickContentRequest: mag_lengt of content to 6000

## [v3.7.0] - 2025-06-20

### 🆕 Added

- add e-voting approval on political businesses

## [v3.6.0] - 2025-05-28

### 🆕 Added

- condensed_print_jobs_state to contest proto

## [v3.5.1] - 2025-05-15

### 🆕 Added

- add communal deadlines preview

## [v3.5.0] - 2025-03-26

### 🆕 Added

- add contest dates electoral register e-voting from and delivery to post

## [v3.4.0] - 2025-03-14

### 🆕 Added

- generate empty manual voting card

## [v3.3.0] - 2025-03-03

### 🔄 Changed

- angular 19 update

### 🔄 Changed

- angular 19 update

## [v3.2.0] - 2025-02-27

### 🆕 Added

- domain of influence voter duplicate handling

## [v3.1.0] - 2025-01-28

### 🆕 Added

- send attachment only to householder

## [v3.0.3] - 2024-12-06

### ❌ Removed

- remove unused political business approved field

## [v3.0.2] - 2024-12-05

### 🆕 Added

- add additional invoice position comment

## [v3.0.1] - 2024-11-22

### 🔄 Changed

- add e-voting info to domain of influence

## [v3.0.0] - 2024-11-15

BREAKING CHANGE: update Angular to version 18

### 🔄 Changed

- update Angular to version 18

## [v2.3.1] - 2024-10-16

### 🔄 Changed

- add generate voting cards triggered field to domain of influence

## [v2.3.0] - 2024-10-08

### 🆕 Added

- voter list auto send voting cards to doi return address split

## [v2.2.4] - 2024-09-18

### 🔄 Changed

- increase max length of attachment name and supplier

## [v2.2.3] - 2024-09-18

### ❌ Removed

- remove sync steps endpoint

## [v2.2.2] - 2024-08-28

### :arrows_counterclockwise: Changed

- update bug bounty template reference
- patch ci-cd template version, align with new defaults

## [v2.2.1] - 2024-07-19

### ❌ Removed

- remove voting card group bfs

## [v2.2.0] - 2024-07-11

### 🆕 Added

- extend filter metadata response with person dataset actuality.

## [v2.1.2] - 2024-07-10

### 🆕 Added

- add additional print job details

## [v2.1.1] - 2024-06-19

### 🎉 Initial release for Bug Bounty
