# Sweet TTS

A small text-to-speech engine for Android, built for blind and low-vision
users. It continues the All In One TTS project under a new name, with the
same voices and features, plus fixes and improvements.

## Features

- Nuance Vocalizer voices for Indian and international languages
- IBM Eloquence and SpeechFlow as optional voices (their own apps required)
- Works with TalkBack and other screen readers as a system TTS engine
- Phone speaker for speech: keep spoken feedback on the phone speaker
  while music plays on Bluetooth (Other Settings)
- Custom dictionary and punctuation level settings
- Small download: the app is about 9 MB. Voices download once on first
  open (about 47 MB), straight inside the app.
- Fully automatic updates: the app checks when it opens, downloads the
  new version itself, and the installer opens by itself
- App and What's New available in English, Hindi, Bengali, Urdu, Arabic

## Requirements

- Android 10 or newer
- arm64-v8a device (most phones from the last several years)

## Install

1. Open the [latest release](../../releases/latest).
2. Download `Sweet.TTS.<version>.apk`.
3. Open the downloaded file and allow installation from your browser or
   file manager when Android asks.
4. On first open the app downloads its voices once (about 47 MB).
   Keep the app open until it finishes.
5. In Android settings, choose Sweet TTS as your text-to-speech engine.

Updates install in place; settings are kept.

## Updates

The app checks for new releases when it opens (at most once every 6
hours). When an update is available it shows a prompt with the What's New
notes and a Download button. The download happens inside the app and the
package installer opens by itself.

## Project layout

- `app/` - the app source as a decompiled project (apktool), maintained
  directly in smali
- Voice data lives in the `voices-v1` release and downloads on first run
- Update metadata lives in
  [sweet-tts-update](https://github.com/swarup-developer/sweet-tts-update)

## Contributing

See CONTRIBUTING.md.

## License and voices

The bundled Nuance Vocalizer and IBM Eloquence voices are commercial
components. They are here so the app keeps working for its existing
users, not as a grant of redistribution rights. The app code changes in
this repository are shared freely; the voice data is not.
