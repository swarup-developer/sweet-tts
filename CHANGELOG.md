# Changelog

## Sweet TTS 3.1 (recovered) - 2026-11-08

- Recovered the app from the released "All In One TTS V 3.1.APK" (versionCode 122)
  after the original source code was lost.
- Decompiled with apktool 2.12.1 (buildable smali project) and jadx 1.5.3
  (readable Java reference in jadx-src/).
- Renamed the app: label "All In One TTS" -> "Sweet TTS",
  applicationId `aio.tts` -> `sweet.tts` (new package id because the original
  signing key is lost; the TTS engine declaration is unchanged, so it still
  registers system-wide as a TTS engine).
- All features, voices, native libraries and resources preserved as shipped.
- Rebuilt and re-signed with a new Sweet TTS release keystore.
