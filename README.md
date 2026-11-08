# Sweet TTS

A text-to-speech engine for Android, built for blind and low-vision users.
It continues the All In One TTS project under a new name, with the same
voices and features, plus fixes and improvements.

## Features

- Nuance Vocalizer voices for Indian and international languages, built in
- IBM Eloquence and SpeechFlow as optional voices (their own apps required)
- Works with TalkBack and other screen readers as a system TTS engine
- Phone speaker for speech: keep spoken feedback on the phone speaker
  while music plays on Bluetooth (Other Settings)
- Custom dictionary and punctuation level settings
- Automatic update checks with an in-app updater: downloads inside the app
  and opens the installer by itself
- App and What's New available in English, Hindi, Bengali, Urdu, Arabic

## Requirements

- Android 10 or newer
- arm64-v8a or armeabi-v7a device

## Install

1. Open the [latest release](../../releases/latest).
2. Download the build for your phone:
   - `Sweet.TTS.<version>.arm64.apk` - most phones
   - `Sweet.TTS.<version>.armv7.apk` - older 32-bit phones
   - `Sweet.TTS.<version>.apk` - universal, works everywhere
3. Open the downloaded file and allow installation from your browser or
   file manager when Android asks.
4. In Android settings, choose Sweet TTS as your text-to-speech engine.

Updates install in place; settings are kept.

## Updates

The app checks for new releases when it opens (at most once every 6 hours).
When an update is available it shows a prompt with the What's New notes and
a Download button.

## Privacy and licensing

This repository is private because the bundled Nuance Vocalizer and IBM
Eloquence voices are commercial components that cannot be redistributed
publicly. The update metadata repository
([sweet-tts-update](https://github.com/swarup-developer/sweet-tts-update))
is public and contains only version metadata, never the app itself.

## Building

The app is maintained as a decompiled project (apktool). See CHANGELOG.md
for the release history. Release APKs are built with zipalign page
alignment (`zipalign -p`) and signed with the project keystore.
