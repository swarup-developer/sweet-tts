# Sweet TTS (recovered from All In One TTS 3.1)

Sweet TTS is an Android text-to-speech engine app. This source tree was recovered
from the release APK "All In One TTS V 3.1.APK" after the original source code was
lost, and renamed to Sweet TTS (applicationId `sweet.tts`).

## What the app is

A full Android TTS engine (declares `android.intent.action.TTS_SERVICE`, so it can be
selected system-wide as the speech engine, e.g. by TalkBack) that bundles:

- **Nuance Vocalizer Embedded** voices (`assets/vocalizer/*.xmf`, `libNuanceVocalizer.so`)
- **Eloquence** (`org.eloqium.tts.engine`, `libeloqiumjni.so`)
- **Google TTS** and other installed engines as external/backup voices
- Emoji dictionaries for many languages (`assets/emoji/*.json`) and language-id
  models (`assets/lid/*.bin`) for automatic language switching

Features (from the recovered code): per-app voice rules, volume/rate/pitch control,
per-voice parameter sliders, user dictionary with import/export, number
pronunciation settings, stress-test activity, diagnostic logging.

## Layout

- `app/` - apktool project (AndroidManifest.xml, smali, res, assets, lib, original).
  This is the buildable source.
- `jadx-src/` - jadx decompiled Java view of the same code, for reading/editing
  reference. Classes under `aio/tts/` here are the app's code (renamed to
  `sweet/tts/` in `app/smali/`); `com/nuance/...` and `org/eloqium/...` are the
  native engine bindings and must keep their package names (the .so JNI exports
  bind to them).
- `CHANGELOG.md` - recovery log.

## Rebuilding

Needs Java 11+ and apktool 2.12.1:

    java -jar apktool.jar b app -o sweet-tts-unsigned.apk
    # then zipalign + sign with apksigner (uber-apk-signer works)

Sign with the Sweet TTS release keystore (kept outside git). The original
`aio.tts` signing key is lost, so this app uses the new package id `sweet.tts`
and a new key; it installs alongside the old All In One TTS build.
