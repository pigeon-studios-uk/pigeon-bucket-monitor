# Changelog

All notable changes to Pigeon Bucket Monitor are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.1.0] - 2026-11-07

### Added

- 22 more languages, so it now comes in 23: Czech, Danish, German, Spanish, Estonian, Finnish, French, Croatian, Hungarian, Indonesian, Italian, Dutch, Norwegian, Polish, Portuguese, Brazilian Portuguese, Romanian, Slovenian, Swedish, Turkish, and Simplified and Traditional Chinese.
- `Config.Locale = 'auto'`, the new default: it follows ox_lib's language (`setr ox:locale "de"` in `server.cfg`) and is English when that isn't set. A config that already says `'en'` stays in English.

## [1.0.0] - 2026-11-03

First release.

### Highlights

- Every routing bucket change logged to Discord
- Players stuck outside the default bucket reported
- Likely cause shown, from resources that report it
- /bucket check, set, fix, list and snapshot for staff
- Character details with Qbox, QBCore or ESX

### Added

- Reports for every bucket change, players stuck outside the default bucket (after `Config.StuckAfterSeconds`, repeated every `Config.StuckRepeatMinutes`), and players who spawn or load a character outside it.
- Changes seen as FiveM reports them, and by a scan every `Config.ScanSeconds`.
- Expected buckets that are never reported as stuck.
- The likely cause of a change, from the `ReportBucketChange` and `SetPlayerBucket` exports, and a list of known bucket resources when it's unknown.
- Staff commands `/bucket check`, `set`, `fix`, `list` and `snapshot`, with an ACE permission, usable from the server console, and reported with who used them.
- Reports with the player, their character, job and gang (Qbox, QBCore or ESX), licence, Discord, FiveM and Steam identifiers behind spoilers, position and health, each of which can be turned off. IP addresses are never included.
- Discord reports sent within Discord's rate limits, retried when Discord asks, with an optional role mention for stuck players. Reports also go to the server console.
- Every message in `locales/`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-bucket-monitor/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/pigeon-studios-uk/pigeon-bucket-monitor/releases/tag/v1.1.0
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-bucket-monitor/releases/tag/v1.0.0
