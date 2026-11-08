# Changelog

## Sweet TTS 3.6 - 2026-11-08

- In-app updater: the Download button now downloads the APK inside the app
  with a progress bar, then opens the Android package installer by itself -
  no browser step. Adds REQUEST_INSTALL_PACKAGES and uses the existing
  FileProvider. Falls back to the browser release page if in-app download
  is unavailable on a build.
- Same signing key; installs as an in-place update.

## Sweet TTS 3.5 - 2026-11-08

- Smaller downloads: the release now ships a universal APK plus per-ABI
  builds (arm64-v8a, armeabi-v7a); each phone downloads only the build for
  its processor. Native libs and voice data stay uncompressed (the engine
  mmaps them); classes.dex is now compressed.
- The update prompt now appears when the app opens (no need to visit
  settings), at most once per 6 hours, and stays silent for a version you
  dismiss with Later.
- Update dialog reworked for TalkBack: Download and Later are now separate
  full-width buttons stacked vertically, and What's New is one short line
  per item.
- Same signing key; installs as an in-place update.

## Sweet TTS 3.4 - 2026-11-08

- What's New cleaned up: the original app's leftover entries (old 2.0 notes
  in all languages) are gone; the dialog now lists only Sweet TTS's own
  changes, in all 5 languages.
- Fixed APK packaging: native libraries are now page-aligned as Android 10+
  requires (zipalign -p). The 3.2/3.3 assets that failed to install with
  "package appears to be invalid" were replaced with corrected builds.
- Same signing key; installs as an in-place update over 3.3.

## Sweet TTS 3.3 - 2026-11-08

- Automatic update check: when Sweet TTS opens its settings it checks for a
  newer release and shows an "update available" prompt with the What's New
  text and a Download button that opens the release page in the browser.
  TalkBack-friendly: standard labelled dialog (title, message, Download and
  Later buttons). Tapping Later silences the prompt for that version only.
  Includes the 3.2 crash hardening and the Phone speaker for speech toggle.
- Adds the INTERNET permission (used only for the update check).
- Carries the same signing key, so it installs as an in-place update.

## Sweet TTS 3.2 - 2026-11-08

- Hardening for the Android 10/11 instant crash: the Vocalizer engine's
  native library load and initialisation are now guarded - if the native
  engine fails to load on a device, the TTS service still starts and the
  other voices (Eloquence, Google/external) keep working instead of the
  whole engine crashing at bind time. Same guard on Eloquence engine init.
  NOTE: root cause could not be reproduced in our environment (no emulator
  capable of booting); this is defensive hardening pending on-device test.

- New experimental setting: "Phone speaker for speech" (Other Settings).
  When ON, Sweet TTS plays its own speech through the phone speaker while
  music/media keeps playing on Bluetooth or wired headphones - automatic,
  no manual switching. When OFF, behavior is unchanged (default).
  Technical note: a TTS engine cannot reroute the screen reader's own
  playback (TalkBack plays the PCM, not the engine), so the engine plays
  the speech itself on the built-in speaker (accessibility volume stream)
  and hands the caller silence of identical duration, keeping TalkBack's
  timing and interruption behavior intact. Covers the built-in Vocalizer
  and Eloquence voices. Implemented via new smali/sweet/tts/SpeakerRoute.
- Removed the remaining "All In One" name strings from the UI
  (background notification description, What's New history, Arabic help).
- What's New entry retitled to 3.2.
- versionCode 123.

## Sweet TTS 3.1 (update 2) - 2026-11-08

- Removed the old app name everywhere: every UI string, resource, translated
  help/What's New text (English, Hindi, Bengali, Urdu, Arabic), and the
  on-device folders now say "Sweet TTS" (voice folder "Sweet TTS Voices",
  log folder "Sweet TTS").
- What's New now points updates to the project's GitHub releases page:
  github.com/swarup-developer/sweet-tts/releases
- Rebuilt and re-signed; same versionCode 122 / versionName 3.1.


## Sweet TTS 3.1 (recovered) - 2026-11-08

- Recovered the app from the released the released 3.1 APK (versionCode 122)
  after the original source code was lost.
- Decompiled with apktool 2.12.1 (buildable smali project) and jadx 1.5.3
  (readable Java reference in jadx-src/).
- Renamed the app: app label -> "Sweet TTS",
  applicationId `aio.tts` -> `sweet.tts` (new package id because the original
  signing key is lost; the TTS engine declaration is unchanged, so it still
  registers system-wide as a TTS engine).
- All features, voices, native libraries and resources preserved as shipped.
- Rebuilt and re-signed with a new Sweet TTS release keystore.

## 3.8 (build 129)

- The APK is now about 9 MB (was 76 MB). Voice data moved out of the app
  and downloads once on first open, from the voices-v1 release.
- Updates no longer need a token or sign-in: the repository is now public
  and downloads happen inside the app over plain HTTPS.
- arm64 only from this version on; no more armeabi-v7a builds.
- Native libraries now install compressed (smaller download).

## 3.7 (build 128)

- Updates are now fully automatic: the app downloads the new version itself (with a progress dialog) and the package installer opens by itself. No browser step anymore.
- Uses a read-only GitHub token (Contents: Read-only on this repo only) baked into the app for update downloads.
- Installs in place: settings are kept.

## 3.6 (build 127)

- In-app updater added: update check when the app opens (at most once every 6 hours), What's New dialog with vertical Download and Later buttons, per-ABI download URLs.
- Downloads still used the browser in this version; 3.7 removes that.
- Fixed install failure on Android 10 and 11: APKs are now page-aligned (zipalign -p) so updates install in place.
