package aio.tts;

import android.speech.tts.SynthesisCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Voice.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\r\u001a\u00020\u0003H\u0016J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0012À\u0006\u0003"}, d2 = {"Laio/tts/VoiceBackend;", "", "speak", "", "text", "", "lang", "callback", "Landroid/speech/tts/SynthesisCallback;", "callerRate", "", "callerPitch", "appPackage", "stop", "beginUtterance", "wasStopped", "", "resolveVoiceName", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public interface VoiceBackend {
    default void beginUtterance() {
    }

    default String resolveVoiceName(String lang, String appPackage) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        return null;
    }

    void speak(String text, String lang, SynthesisCallback callback, int callerRate, int callerPitch, String appPackage);

    default void stop() {
    }

    default boolean wasStopped() {
        return false;
    }

    /* compiled from: Voice.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final class DefaultImpls {
        @Deprecated
        public static void stop(VoiceBackend voiceBackend) {
            VoiceBackend.super.stop();
        }

        @Deprecated
        public static void beginUtterance(VoiceBackend voiceBackend) {
            VoiceBackend.super.beginUtterance();
        }

        @Deprecated
        public static boolean wasStopped(VoiceBackend voiceBackend) {
            return VoiceBackend.super.wasStopped();
        }

        @Deprecated
        public static String resolveVoiceName(VoiceBackend voiceBackend, String lang, String str) {
            Intrinsics.checkNotNullParameter(lang, "lang");
            return VoiceBackend.super.resolveVoiceName(lang, str);
        }
    }

    static /* synthetic */ void speak$default(VoiceBackend voiceBackend, String str, String str2, SynthesisCallback synthesisCallback, int i, int i2, String str3, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: speak");
        }
        if ((i3 & 8) != 0) {
            i = 100;
        }
        if ((i3 & 16) != 0) {
            i2 = 100;
        }
        if ((i3 & 32) != 0) {
            str3 = null;
        }
        voiceBackend.speak(str, str2, synthesisCallback, i, i2, str3);
    }

    static /* synthetic */ String resolveVoiceName$default(VoiceBackend voiceBackend, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resolveVoiceName");
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return voiceBackend.resolveVoiceName(str, str2);
    }
}
