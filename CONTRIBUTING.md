# Contributing to Sweet TTS

Sweet TTS is maintained as a decompiled project (apktool), not as a
regular Android Studio source tree. That is unusual, so please read this
before sending changes.

## Ground rules

- The app is for blind and low-vision users. Every change must keep
  working with TalkBack. If a change touches the interface, test it with
  TalkBack on, eyes closed.
- Keep the app small. Voice data and other large files do not go into
  the APK; they download on first run from the voices release.
- No emojis in user-facing text, release notes, or documentation.

## Repository layout

- `app/` - the apktool project (smali, resources, manifest)
- `CHANGELOG.md` - release history

## Building a release APK

Requirements: apktool, Android SDK build-tools (zipalign, apksigner),
the project keystore.

1. Edit the smali or resources under `app/`.
2. Bump `versionCode` and `versionName` in `app/apktool.yml`.
3. Update the What's New strings in `app/smali/sweet/tts/WhatsNew.smali`
   (all five languages: English, Hindi, Bengali, Urdu, Arabic).
4. Build with apktool, then repack so `.so` files stay compressed.
5. Align with `zipalign -p 4` and sign with apksigner.
6. Verify the APK installs in place over the previous version before
   publishing.
7. Publish a single arm64 APK as the GitHub release and update
   `latest.json` in the sweet-tts-update repository.

## Reporting issues

Open an issue with your phone model, Android version, and what TalkBack
said (or did not say). That is usually enough to reproduce a problem.
