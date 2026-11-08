# Changelog

## Sweet TTS 3.2 - 2026-11-08

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
