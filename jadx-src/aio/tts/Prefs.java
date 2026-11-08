package aio.tts;

import aio.tts.Dictionary;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.DebugKt;

/* compiled from: Prefs.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\"\n\u0002\b)\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010$\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0005J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0005J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0005J\u0016\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dJ\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0005J\u0016\u0010!\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010\"\u001a\u00020\u001dJ\u000e\u0010#\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001dJ\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0005J\u0016\u0010%\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dJ\u000e\u0010&\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010'\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\nJ\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050*J\u000e\u0010+\u001a\u00020\f2\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\f2\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\f2\u0006\u0010,\u001a\u00020\u0005J\u0018\u0010/\u001a\u0004\u0018\u00010\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u001e\u00100\u001a\u00020\f2\u0006\u0010,\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005J\u0006\u00101\u001a\u00020\u001dJ\u000e\u00102\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u00103\u001a\u00020\u0005J\u000e\u00104\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u00105\u001a\u00020\u0005J\u000e\u00106\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u00107\u001a\u00020\u0005J\u000e\u00108\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u00109\u001a\u00020\nJ\u000e\u0010:\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010;\u001a\u00020\nJ\u000e\u0010<\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010=\u001a\u00020\nJ\u000e\u0010>\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010?\u001a\u00020\u0005J\u000e\u0010@\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0005J\b\u0010A\u001a\u00020\u0005H\u0002J\u0006\u0010B\u001a\u00020\nJ\u000e\u0010C\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010D\u001a\u00020\u001dJ\u000e\u0010E\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010F\u001a\u00020\nJ\u000e\u0010G\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010H\u001a\u00020\u001dJ\u000e\u0010I\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001dJ\u001d\u0010J\u001a\u0004\u0018\u00010\u001d2\u0006\u0010K\u001a\u00020\u001d2\u0006\u0010L\u001a\u00020\u001d¢\u0006\u0002\u0010MJ\u001e\u0010N\u001a\u00020\f2\u0006\u0010K\u001a\u00020\u001d2\u0006\u0010L\u001a\u00020\u001d2\u0006\u0010O\u001a\u00020\u001dJ\u000e\u0010P\u001a\u00020\f2\u0006\u0010K\u001a\u00020\u001dJ\b\u0010Q\u001a\u0004\u0018\u00010\u0005J\u000e\u0010R\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010S\u001a\u00020TJ\u000e\u0010U\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020TJ\u0006\u0010V\u001a\u00020\nJ\u000e\u0010W\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010X\u001a\u00020\nJ\u000e\u0010Y\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010Z\u001a\u00020\fJ\u0006\u0010[\u001a\u00020\nJ\u000e\u0010\\\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010]\u001a\u00020\nJ\u000e\u0010^\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\nJ\u0010\u0010_\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010`\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\u0005J\u0006\u0010b\u001a\u00020\fJ\u0006\u0010c\u001a\u00020\fJ\u0006\u0010d\u001a\u00020\fJ\u0006\u0010e\u001a\u00020\fJ\u0006\u0010f\u001a\u00020\fJ\u0014\u0010g\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010hJ\u001c\u0010i\u001a\u00020\f2\u0014\u0010j\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010hJ\u0006\u0010k\u001a\u00020\fJ\u0006\u0010l\u001a\u00020\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006m"}, d2 = {"Laio/tts/Prefs;", "", "<init>", "()V", "NAME", "", "MATCH_LANGUAGE", "prefs", "Landroid/content/SharedPreferences;", "logsClearedForPrivacyV96", "", "setLogsClearedForPrivacyV96", "", "debugLogText", "setDebugLogText", "v", "debugNoBreaker", "setDebugNoBreaker", "debugSkipInternal", "setDebugSkipInternal", "voiceFor", "lang", "setVoiceFor", "voiceName", "emojiVoice", "setEmojiVoice", "numberVoice", "setNumberVoice", "volumeFor", "", "setVolumeFor", "value", "rateFor", "setRateFor", "vocalizerRateCap", "setVocalizerRateCap", "pitchFor", "setPitchFor", "isLanguageEnabled", "setLanguageEnabled", "enabled", "addedApps", "", "addApp", "packageName", "removeApp", "clearAppVoices", "voiceForApp", "setVoiceForApp", "longNumberMinDigits", "setLongNumberMinDigits", "punctuationLevel", "setPunctuationLevel", "longNumberReadingMode", "setLongNumberReadingMode", "mobile13DigitPattern", "setMobile13DigitPattern", "croreLakhEnabled", "setCroreLakhEnabled", "otpReadingEnabled", "setOtpReadingEnabled", "otpClipboardEnabled", "setOtpClipboardEnabled", "descLanguage", "setDescLanguage", "whatsNewKey", "whatsNewHidden", "setWhatsNewHidden", "otpClipboardDelaySec", "setOtpClipboardDelaySec", "quickStartReadingEnabled", "setQuickStartReadingEnabled", "eloquencePreset", "setEloquencePreset", "eloquenceStep", "preset", "param", "(II)Ljava/lang/Integer;", "setEloquenceStep", "step", "clearEloquenceSteps", "eloquenceBuiltIn", "setEloquenceBuiltIn", "eloqFastStopOffUntil", "", "setEloqFastStopOffUntil", "keepRunningEnabled", "setKeepRunningEnabled", "seamlessReadingModeEnabled", "setSeamlessReadingModeEnabled", "migrateGoogleVolumeDefaultOnce", "diagnosticLogEnabled", "setDiagnosticLogEnabled", "detailedLogEnabled", "setDetailedLogEnabled", "dictionaryJsonFor", "setDictionaryJsonFor", "json", "migrateDictionaryEnToVocalizerEnglishOnce", "migrateDictionaryToPerLanguageOnce", "seedDictionaryWordExclusionDefaultsOnce", "seedDictionaryWordExclusionDefaultsV2Once", "seedDictionaryIndianEnglishV3Once", "exportableEntries", "", "importEntries", "map", "resetVolumeRatePitchToNewDefaultsOnce", "resetNumberEmojiVoiceToMatchLanguageOnce", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Prefs {
    public static final Prefs INSTANCE = new Prefs();
    public static final String MATCH_LANGUAGE = "__match_language__";
    private static final String NAME = "aiotts_settings";

    private Prefs() {
    }

    private final SharedPreferences prefs() {
        SharedPreferences sharedPreferences = App.INSTANCE.getContext().getSharedPreferences(NAME, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    public final boolean logsClearedForPrivacyV96() {
        return prefs().getBoolean("logs_cleared_privacy_v96", false);
    }

    public final void setLogsClearedForPrivacyV96() {
        prefs().edit().putBoolean("logs_cleared_privacy_v96", true).apply();
    }

    public final boolean debugLogText() {
        return prefs().getBoolean("debug_log_text", false);
    }

    public final void setDebugLogText(boolean v) {
        prefs().edit().putBoolean("debug_log_text", v).apply();
    }

    public final boolean debugNoBreaker() {
        return prefs().getBoolean("debug_no_breaker", false);
    }

    public final void setDebugNoBreaker(boolean v) {
        prefs().edit().putBoolean("debug_no_breaker", v).apply();
    }

    public final String debugSkipInternal() {
        String string = prefs().getString("debug_skip_internal", "");
        return string == null ? "" : string;
    }

    public final void setDebugSkipInternal(String v) {
        Intrinsics.checkNotNullParameter(v, "v");
        prefs().edit().putString("debug_skip_internal", v).apply();
    }

    public final String voiceFor(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        return prefs().getString("voice_" + lang, null);
    }

    public final void setVoiceFor(String lang, String voiceName) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        prefs().edit().putString("voice_" + lang, voiceName).apply();
    }

    public final String emojiVoice() {
        return prefs().getString("voice_emoji", MATCH_LANGUAGE);
    }

    public final void setEmojiVoice(String voiceName) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        prefs().edit().putString("voice_emoji", voiceName).apply();
    }

    public final String numberVoice() {
        return prefs().getString("voice_number", MATCH_LANGUAGE);
    }

    public final void setNumberVoice(String voiceName) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        prefs().edit().putString("voice_number", voiceName).apply();
    }

    public final int volumeFor(String voiceName) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        return prefs().getInt("volume_" + voiceName, (Intrinsics.areEqual(voiceName, VoiceCatalog.ELOQUENCE_VOICE_NAME) || StringsKt.startsWith$default(voiceName, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null)) ? 100 : 80);
    }

    public final void setVolumeFor(String voiceName, int value) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        prefs().edit().putInt("volume_" + voiceName, value).apply();
    }

    public final int rateFor(String voiceName) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        return prefs().getInt("rate_" + voiceName, Intrinsics.areEqual(voiceName, VoiceCatalog.ELOQUENCE_VOICE_NAME) ? 70 : 100);
    }

    public final void setRateFor(String voiceName, int value) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        prefs().edit().putInt("rate_" + voiceName, value).apply();
    }

    public final int vocalizerRateCap() {
        return RangesKt.coerceIn(prefs().getInt("vocalizer_rate_cap", 400), 100, 1000);
    }

    public final void setVocalizerRateCap(int value) {
        prefs().edit().putInt("vocalizer_rate_cap", value).apply();
    }

    public final int pitchFor(String voiceName) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        return prefs().getInt("pitch_" + voiceName, 100);
    }

    public final void setPitchFor(String voiceName, int value) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        prefs().edit().putInt("pitch_" + voiceName, value).apply();
    }

    public final boolean isLanguageEnabled(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        return prefs().getBoolean("lang_enabled_" + lang, VoiceCatalog.INSTANCE.getDEFAULT_ENABLED_LANGUAGES().contains(lang));
    }

    public final void setLanguageEnabled(String lang, boolean enabled) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        prefs().edit().putBoolean("lang_enabled_" + lang, enabled).apply();
    }

    public final Set<String> addedApps() {
        Set<String> stringSet = prefs().getStringSet("added_apps", SetsKt.emptySet());
        return stringSet == null ? SetsKt.emptySet() : stringSet;
    }

    public final void addApp(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        prefs().edit().putStringSet("added_apps", SetsKt.plus(addedApps(), packageName)).apply();
    }

    public final void removeApp(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        prefs().edit().putStringSet("added_apps", SetsKt.minus(addedApps(), packageName)).apply();
    }

    public final void clearAppVoices(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = "appvoice_" + packageName + "_";
        SharedPreferences.Editor editorEdit = prefs().edit();
        Set<String> setKeySet = prefs().getAll().keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            String str2 = (String) obj;
            Intrinsics.checkNotNull(str2);
            if (StringsKt.startsWith$default(str2, str, false, 2, (Object) null)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            editorEdit.remove((String) it.next());
        }
        editorEdit.apply();
    }

    public final String voiceForApp(String packageName, String lang) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(lang, "lang");
        return prefs().getString("appvoice_" + packageName + "_" + lang, null);
    }

    public final void setVoiceForApp(String packageName, String lang, String voiceName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        prefs().edit().putString("appvoice_" + packageName + "_" + lang, voiceName).apply();
    }

    public final int longNumberMinDigits() {
        return RangesKt.coerceIn(prefs().getInt("long_number_min_digits", 10), 5, 10);
    }

    public final void setLongNumberMinDigits(int value) {
        prefs().edit().putInt("long_number_min_digits", RangesKt.coerceIn(value, 5, 10)).apply();
    }

    public final String punctuationLevel() {
        String string = prefs().getString("punctuation_level", PunctuationReader.NONE);
        return string == null ? PunctuationReader.NONE : string;
    }

    public final void setPunctuationLevel(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        prefs().edit().putString("punctuation_level", value).apply();
    }

    public final String longNumberReadingMode() {
        String string = prefs().getString("long_number_reading_mode", "group_5");
        return string == null ? "group_5" : string;
    }

    public final void setLongNumberReadingMode(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        prefs().edit().putString("long_number_reading_mode", value).apply();
    }

    public final String mobile13DigitPattern() {
        String string = prefs().getString("mobile_13_digit_pattern", "5-5");
        return string == null ? "5-5" : string;
    }

    public final void setMobile13DigitPattern(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        prefs().edit().putString("mobile_13_digit_pattern", value).apply();
    }

    public final boolean croreLakhEnabled() {
        return prefs().getBoolean("crore_lakh_enabled", true);
    }

    public final void setCroreLakhEnabled(boolean value) {
        prefs().edit().putBoolean("crore_lakh_enabled", value).apply();
    }

    public final boolean otpReadingEnabled() {
        return prefs().getBoolean("otp_reading_enabled", true);
    }

    public final void setOtpReadingEnabled(boolean value) {
        prefs().edit().putBoolean("otp_reading_enabled", value).apply();
    }

    public final boolean otpClipboardEnabled() {
        return prefs().getBoolean("otp_clipboard_enabled", true);
    }

    public final void setOtpClipboardEnabled(boolean value) {
        prefs().edit().putBoolean("otp_clipboard_enabled", value).apply();
    }

    public final String descLanguage() {
        String string = prefs().getString("desc_language", null);
        return (string == null || !Desc.INSTANCE.getLANGS().contains(string)) ? DebugKt.DEBUG_PROPERTY_VALUE_OFF : string;
    }

    public final void setDescLanguage(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        SharedPreferences.Editor editorEdit = prefs().edit();
        if (!Desc.INSTANCE.getLANGS().contains(value)) {
            value = DebugKt.DEBUG_PROPERTY_VALUE_OFF;
        }
        editorEdit.putString("desc_language", value).apply();
    }

    private final String whatsNewKey() {
        return Edition.INSTANCE.getPLUS() ? "whatsnew_hidden_2_0" : "whatsnew_hidden_3_0";
    }

    public final boolean whatsNewHidden() {
        return prefs().getBoolean(whatsNewKey(), false);
    }

    public final void setWhatsNewHidden(boolean value) {
        prefs().edit().putBoolean(whatsNewKey(), value).apply();
    }

    public final int otpClipboardDelaySec() {
        return RangesKt.coerceIn(prefs().getInt("otp_clipboard_delay_sec", 4), 1, 8);
    }

    public final void setOtpClipboardDelaySec(int value) {
        prefs().edit().putInt("otp_clipboard_delay_sec", RangesKt.coerceIn(value, 1, 8)).apply();
    }

    public final boolean quickStartReadingEnabled() {
        return prefs().getBoolean("quick_start_reading_enabled", false);
    }

    public final void setQuickStartReadingEnabled(boolean value) {
        prefs().edit().putBoolean("quick_start_reading_enabled", value).apply();
    }

    public final int eloquencePreset() {
        return prefs().getInt("eloq_preset", 0);
    }

    public final void setEloquencePreset(int value) {
        prefs().edit().putInt("eloq_preset", value).apply();
    }

    public final Integer eloquenceStep(int preset, int param) {
        if (prefs().contains("eloq_" + preset + "_" + param)) {
            return Integer.valueOf(prefs().getInt("eloq_" + preset + "_" + param, 0));
        }
        return null;
    }

    public final void setEloquenceStep(int preset, int param, int step) {
        prefs().edit().putInt("eloq_" + preset + "_" + param, step).apply();
    }

    public final void clearEloquenceSteps(int preset) {
        SharedPreferences.Editor editorEdit = prefs().edit();
        for (String str : prefs().getAll().keySet()) {
            Intrinsics.checkNotNull(str);
            if (StringsKt.startsWith$default(str, "eloq_" + preset + "_", false, 2, (Object) null)) {
                editorEdit.remove(str);
            }
        }
        editorEdit.apply();
    }

    public final String eloquenceBuiltIn() {
        return prefs().getString("eloq_builtin", null);
    }

    public final void setEloquenceBuiltIn(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        prefs().edit().putString("eloq_builtin", value).apply();
    }

    public final long eloqFastStopOffUntil() {
        return prefs().getLong("eloq_faststop_off_until", 0L);
    }

    public final void setEloqFastStopOffUntil(long value) {
        prefs().edit().putLong("eloq_faststop_off_until", value).apply();
    }

    public final boolean keepRunningEnabled() {
        return prefs().getBoolean("keep_running_enabled", true);
    }

    public final void setKeepRunningEnabled(boolean value) {
        prefs().edit().putBoolean("keep_running_enabled", value).apply();
    }

    public final boolean seamlessReadingModeEnabled() {
        return prefs().getBoolean("seamless_reading_mode_enabled", false);
    }

    public final void setSeamlessReadingModeEnabled(boolean value) {
        prefs().edit().putBoolean("seamless_reading_mode_enabled", value).apply();
    }

    public final void migrateGoogleVolumeDefaultOnce() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("migrated_google_volume_90_default", false)) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesPrefs.edit();
        Map<String, ?> all = sharedPreferencesPrefs.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            Intrinsics.checkNotNull(key);
            if (StringsKt.startsWith$default(key, "volume_Google ", false, 2, (Object) null) && Intrinsics.areEqual(value, (Object) 80)) {
                editorEdit.putInt(key, 90);
            }
        }
        editorEdit.putBoolean("migrated_google_volume_90_default", true);
        editorEdit.apply();
    }

    public final boolean diagnosticLogEnabled() {
        return prefs().getBoolean("diagnostic_log_enabled", true);
    }

    public final void setDiagnosticLogEnabled(boolean value) {
        prefs().edit().putBoolean("diagnostic_log_enabled", value).apply();
    }

    public final boolean detailedLogEnabled() {
        return prefs().getBoolean("detailed_log_enabled", false);
    }

    public final void setDetailedLogEnabled(boolean value) {
        prefs().edit().putBoolean("detailed_log_enabled", value).apply();
    }

    public final String dictionaryJsonFor(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        return prefs().getString("dictionary_" + lang, null);
    }

    public final void setDictionaryJsonFor(String lang, String json) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(json, "json");
        prefs().edit().putString("dictionary_" + lang, json).apply();
    }

    public final void migrateDictionaryEnToVocalizerEnglishOnce() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("migrated_dictionary_en_to_vocalizer_english", false)) {
            return;
        }
        String string = sharedPreferencesPrefs.getString("dictionary_en", null);
        SharedPreferences.Editor editorEdit = sharedPreferencesPrefs.edit();
        if (string != null && sharedPreferencesPrefs.getString("dictionary_vocalizer_english", null) == null) {
            editorEdit.putString("dictionary_vocalizer_english", string);
        }
        editorEdit.putBoolean("migrated_dictionary_en_to_vocalizer_english", true);
        editorEdit.apply();
    }

    public final void migrateDictionaryToPerLanguageOnce() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("migrated_dictionary_to_per_language", false)) {
            return;
        }
        List<Pair<String, String>> languages = VoiceCatalog.INSTANCE.getLANGUAGES();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(languages, 10));
        Iterator<T> it = languages.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) it.next()).getFirst());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String str = (String) obj;
            if (!Intrinsics.areEqual(str, "en") && INSTANCE.isLanguageEnabled(str)) {
                arrayList2.add(obj);
            }
        }
        ArrayList<String> arrayList3 = arrayList2;
        Iterator it2 = CollectionsKt.listOf((Object[]) new String[]{"vocalizer_other", "google"}).iterator();
        while (it2.hasNext()) {
            List<Dictionary.Entry> listEntriesFor = Dictionary.INSTANCE.entriesFor((String) it2.next());
            if (!listEntriesFor.isEmpty()) {
                for (String str2 : arrayList3) {
                    List<Dictionary.Entry> listEntriesFor2 = Dictionary.INSTANCE.entriesFor(str2);
                    List<Dictionary.Entry> list = listEntriesFor2;
                    ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator<T> it3 = list.iterator();
                    while (it3.hasNext()) {
                        arrayList4.add(((Dictionary.Entry) it3.next()).getFind());
                    }
                    Set set = CollectionsKt.toSet(arrayList4);
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj2 : listEntriesFor) {
                        if (!set.contains(((Dictionary.Entry) obj2).getFind())) {
                            arrayList5.add(obj2);
                        }
                    }
                    ArrayList arrayList6 = arrayList5;
                    if (!arrayList6.isEmpty()) {
                        Dictionary.INSTANCE.setEntriesFor(str2, CollectionsKt.plus((Collection) listEntriesFor2, (Iterable) arrayList6));
                    }
                }
            }
        }
        sharedPreferencesPrefs.edit().putBoolean("migrated_dictionary_to_per_language", true).apply();
    }

    public final void seedDictionaryWordExclusionDefaultsOnce() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("seeded_dictionary_word_exclusion_defaults", false)) {
            return;
        }
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"Maybe", "Profile picture for", "~"});
        for (String str : CollectionsKt.listOf((Object[]) new String[]{"eti_eloquence", "vocalizer_english"})) {
            List<Dictionary.Entry> listEntriesFor = Dictionary.INSTANCE.entriesFor(str);
            List<Dictionary.Entry> list = listEntriesFor;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((Dictionary.Entry) it.next()).getFind());
            }
            Set set = CollectionsKt.toSet(arrayList);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : listListOf) {
                if (!set.contains((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = arrayList2;
            if (!arrayList3.isEmpty()) {
                Dictionary dictionary = Dictionary.INSTANCE;
                List<Dictionary.Entry> list2 = listEntriesFor;
                ArrayList arrayList4 = arrayList3;
                ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList4, 10));
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    arrayList5.add(new Dictionary.Entry((String) it2.next(), "", false, 4, null));
                }
                dictionary.setEntriesFor(str, CollectionsKt.plus((Collection) list2, (Iterable) arrayList5));
            }
        }
        sharedPreferencesPrefs.edit().putBoolean("seeded_dictionary_word_exclusion_defaults", true).apply();
    }

    public final void seedDictionaryWordExclusionDefaultsV2Once() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("seeded_dictionary_word_exclusion_defaults_v2", false)) {
            return;
        }
        for (String str : CollectionsKt.listOf((Object[]) new String[]{"eti_eloquence", "vocalizer_english"})) {
            List<Dictionary.Entry> listEntriesFor = Dictionary.INSTANCE.entriesFor(str);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listEntriesFor) {
                if (!Intrinsics.areEqual(((Dictionary.Entry) obj).getFind(), "Profile picture for")) {
                    arrayList.add(obj);
                }
            }
            Dictionary.INSTANCE.setEntriesFor(str, arrayList);
        }
        List<Dictionary.Entry> listEntriesFor2 = Dictionary.INSTANCE.entriesFor("eti_eloquence");
        List<Dictionary.Entry> list = listEntriesFor2;
        if ((list instanceof Collection) && list.isEmpty()) {
            Dictionary.INSTANCE.setEntriesFor("eti_eloquence", CollectionsKt.plus((Collection<? extends Dictionary.Entry>) listEntriesFor2, new Dictionary.Entry("_", "", false, 4, null)));
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((Dictionary.Entry) it.next()).getFind(), "_")) {
                    break;
                }
            }
            Dictionary.INSTANCE.setEntriesFor("eti_eloquence", CollectionsKt.plus((Collection<? extends Dictionary.Entry>) listEntriesFor2, new Dictionary.Entry("_", "", false, 4, null)));
        }
        sharedPreferencesPrefs.edit().putBoolean("seeded_dictionary_word_exclusion_defaults_v2", true).apply();
    }

    public final void seedDictionaryIndianEnglishV3Once() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("seeded_dictionary_indian_english_v3", false)) {
            return;
        }
        for (String str : CollectionsKt.listOf((Object[]) new String[]{"eti_eloquence", "vocalizer_english"})) {
            List<Dictionary.Entry> listEntriesFor = Dictionary.INSTANCE.entriesFor(str);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listEntriesFor) {
                Dictionary.Entry entry = (Dictionary.Entry) obj;
                if ((!Intrinsics.areEqual(entry.getFind(), "~") && !Intrinsics.areEqual(entry.getFind(), "_")) || entry.getReplace().length() != 0) {
                    arrayList.add(obj);
                }
            }
            Dictionary.INSTANCE.setEntriesFor(str, arrayList);
        }
        List<Dictionary.Entry> listEntriesFor2 = Dictionary.INSTANCE.entriesFor("eti_eloquence");
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listEntriesFor2, 10));
        Iterator<T> it = listEntriesFor2.iterator();
        while (it.hasNext()) {
            String lowerCase = ((Dictionary.Entry) it.next()).getFind().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            arrayList2.add(lowerCase);
        }
        Set set = CollectionsKt.toSet(arrayList2);
        List<Dictionary.Entry> eloquence_english = DictionarySeeds.INSTANCE.getELOQUENCE_ENGLISH();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : eloquence_english) {
            String lowerCase2 = ((Dictionary.Entry) obj2).getFind().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            if (!set.contains(lowerCase2)) {
                arrayList3.add(obj2);
            }
        }
        Dictionary.INSTANCE.setEntriesFor("eti_eloquence", CollectionsKt.plus((Collection) arrayList3, (Iterable) listEntriesFor2));
        sharedPreferencesPrefs.edit().putBoolean("seeded_dictionary_indian_english_v3", true).apply();
    }

    public final Map<String, Object> exportableEntries() {
        Map<String, ?> all = prefs().getAll();
        Intrinsics.checkNotNull(all);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            if (!Intrinsics.areEqual(key, "added_apps") && !StringsKt.startsWith$default(key, "appvoice_", false, 2, (Object) null) && !StringsKt.startsWith$default(key, "digit_threshold_", false, 2, (Object) null) && !StringsKt.startsWith$default(key, "mobile_pattern_", false, 2, (Object) null) && !StringsKt.startsWith$default(key, "digit_pause_", false, 2, (Object) null) && !StringsKt.startsWith$default(key, "dictionary_", false, 2, (Object) null) && !StringsKt.startsWith$default(key, "migrated_", false, 2, (Object) null) && !StringsKt.startsWith$default(key, "whatsnew_", false, 2, (Object) null) && !Intrinsics.areEqual(key, "eloq_faststop_off_until") && !Intrinsics.areEqual(key, "eloq_builtin") && !Intrinsics.areEqual(key, "eloq_phrase_prediction") && !Intrinsics.areEqual(key, "eloq_short_first") && !Intrinsics.areEqual(key, "eloq_sample_rate_hz")) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public final void importEntries(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        SharedPreferences.Editor editorEdit = prefs().edit();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Boolean) {
                editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof Integer) {
                editorEdit.putInt(key, ((Number) value).intValue());
            } else if (value instanceof Long) {
                editorEdit.putInt(key, (int) ((Number) value).longValue());
            } else if (value instanceof String) {
                editorEdit.putString(key, (String) value);
            } else {
                Unit unit = Unit.INSTANCE;
            }
        }
        editorEdit.apply();
    }

    public final void resetVolumeRatePitchToNewDefaultsOnce() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("migrated_80_100_100_defaults", false)) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesPrefs.edit();
        for (String str : sharedPreferencesPrefs.getAll().keySet()) {
            Intrinsics.checkNotNull(str);
            if (StringsKt.startsWith$default(str, "volume_", false, 2, (Object) null)) {
                editorEdit.putInt(str, 80);
            } else if (StringsKt.startsWith$default(str, "rate_", false, 2, (Object) null)) {
                editorEdit.putInt(str, 100);
            } else if (StringsKt.startsWith$default(str, "pitch_", false, 2, (Object) null)) {
                editorEdit.putInt(str, 100);
            }
        }
        editorEdit.putBoolean("migrated_80_100_100_defaults", true);
        editorEdit.apply();
    }

    public final void resetNumberEmojiVoiceToMatchLanguageOnce() {
        SharedPreferences sharedPreferencesPrefs = prefs();
        if (sharedPreferencesPrefs.getBoolean("migrated_number_emoji_match_language", false)) {
            return;
        }
        sharedPreferencesPrefs.edit().putString("voice_number", MATCH_LANGUAGE).putString("voice_emoji", MATCH_LANGUAGE).putBoolean("migrated_number_emoji_match_language", true).apply();
    }
}
