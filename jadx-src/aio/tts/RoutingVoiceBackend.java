package aio.tts;

import android.content.Context;
import android.speech.tts.SynthesisCallback;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: RoutingVoiceBackend.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 &2\u00020\u0001:\u0001&B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002J:\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010!\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010#\u001a\u00020\u001aH\u0016J\b\u0010$\u001a\u00020\u001aH\u0016J\b\u0010%\u001a\u00020\u0015H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Laio/tts/RoutingVoiceBackend;", "Laio/tts/VoiceBackend;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "vocalizer", "Laio/tts/VocalizerVoiceBackend;", "eloquence", "Laio/tts/EloquenceVoiceBackend;", "google", "Laio/tts/GoogleVoiceBackend;", "external", "Laio/tts/ExternalEngineBackend;", "preferredVoiceName", "", "lang", "appPackage", "chosenVoiceName", "normalVoiceNameFor", "refreshGoogle", "", "timeoutMs", "", "backendFor", "speak", "", "text", "callback", "Landroid/speech/tts/SynthesisCallback;", "callerRate", "", "callerPitch", "resolveVoiceName", "stopRequested", "stop", "beginUtterance", "wasStopped", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RoutingVoiceBackend implements VoiceBackend {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile RoutingVoiceBackend shared;
    private final EloquenceVoiceBackend eloquence;
    private final ExternalEngineBackend external;
    private final GoogleVoiceBackend google;
    private volatile boolean stopRequested;
    private final VocalizerVoiceBackend vocalizer;

    public /* synthetic */ RoutingVoiceBackend(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    /* compiled from: RoutingVoiceBackend.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\tR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Laio/tts/RoutingVoiceBackend$Companion;", "", "<init>", "()V", "shared", "Laio/tts/RoutingVoiceBackend;", "context", "Landroid/content/Context;", "exists", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RoutingVoiceBackend shared(Context context) {
            RoutingVoiceBackend routingVoiceBackend;
            Intrinsics.checkNotNullParameter(context, "context");
            RoutingVoiceBackend routingVoiceBackend2 = RoutingVoiceBackend.shared;
            if (routingVoiceBackend2 != null) {
                return routingVoiceBackend2;
            }
            synchronized (this) {
                routingVoiceBackend = RoutingVoiceBackend.shared;
                if (routingVoiceBackend == null) {
                    Context applicationContext = context.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    routingVoiceBackend = new RoutingVoiceBackend(applicationContext, null);
                    Companion companion = RoutingVoiceBackend.INSTANCE;
                    RoutingVoiceBackend.shared = routingVoiceBackend;
                }
            }
            return routingVoiceBackend;
        }

        public final boolean exists() {
            return RoutingVoiceBackend.shared != null;
        }
    }

    private RoutingVoiceBackend(Context context) {
        this.vocalizer = new VocalizerVoiceBackend(context);
        this.eloquence = new EloquenceVoiceBackend(context);
        this.google = new GoogleVoiceBackend(context);
        this.external = new ExternalEngineBackend(context);
        VoiceCatalog.INSTANCE.ensureEloquenceVoiceRegistered();
        VoiceCatalog.INSTANCE.ensureExternalEnginesRegistered();
    }

    private final String preferredVoiceName(String lang, String appPackage) {
        String strChosenVoiceName = chosenVoiceName(lang, appPackage);
        return (strChosenVoiceName == null || !ExternalEngines.INSTANCE.isExternalVoice(strChosenVoiceName) || ExternalEngines.INSTANCE.isAvailable(strChosenVoiceName)) ? strChosenVoiceName : normalVoiceNameFor(lang);
    }

    private final String chosenVoiceName(String lang, String appPackage) {
        String strVoiceForApp;
        if (Intrinsics.areEqual(lang, "number")) {
            return Prefs.INSTANCE.numberVoice();
        }
        if (Intrinsics.areEqual(lang, "emoji")) {
            return Prefs.INSTANCE.emojiVoice();
        }
        if (appPackage != null && (strVoiceForApp = Prefs.INSTANCE.voiceForApp(appPackage, lang)) != null) {
            return strVoiceForApp;
        }
        String strVoiceFor = Prefs.INSTANCE.voiceFor(lang);
        if (strVoiceFor != null) {
            return strVoiceFor;
        }
        String strPreferredDefaultVoiceNameIfPresent = VoiceCatalog.INSTANCE.preferredDefaultVoiceNameIfPresent(lang);
        if (strPreferredDefaultVoiceNameIfPresent != null) {
            return strPreferredDefaultVoiceNameIfPresent;
        }
        VocalizerVoice vocalizerVoiceDefaultVoiceFor = VoiceCatalog.INSTANCE.defaultVoiceFor(lang, VoiceCatalog.INSTANCE.sortedForDisplay(VoiceCatalog.INSTANCE.voicesFor(lang)));
        if (vocalizerVoiceDefaultVoiceFor != null) {
            return vocalizerVoiceDefaultVoiceFor.mVoiceName;
        }
        return null;
    }

    private final String normalVoiceNameFor(String lang) {
        Object next;
        String strPreferredDefaultVoiceNameIfPresent = VoiceCatalog.INSTANCE.preferredDefaultVoiceNameIfPresent(lang);
        if (strPreferredDefaultVoiceNameIfPresent != null) {
            return strPreferredDefaultVoiceNameIfPresent;
        }
        Iterator<T> it = VoiceCatalog.INSTANCE.sortedForDisplay(VoiceCatalog.INSTANCE.voicesFor(lang)).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!ExternalEngines.INSTANCE.isExternalVoice(((VocalizerVoice) next).mVoiceName)) {
                break;
            }
        }
        VocalizerVoice vocalizerVoice = (VocalizerVoice) next;
        if (vocalizerVoice != null) {
            return vocalizerVoice.mVoiceName;
        }
        return null;
    }

    public final boolean refreshGoogle(long timeoutMs) {
        return this.google.reconnectAndWait(timeoutMs);
    }

    private final VoiceBackend backendFor(String lang, String appPackage) {
        String strPreferredVoiceName = preferredVoiceName(lang, appPackage);
        return Intrinsics.areEqual(strPreferredVoiceName, VoiceCatalog.ELOQUENCE_VOICE_NAME) ? EloquenceHub.INSTANCE.isAvailable() ? this.eloquence : this.vocalizer : ExternalEngines.INSTANCE.isExternalVoice(strPreferredVoiceName) ? this.external : (strPreferredVoiceName == null || !StringsKt.startsWith$default(strPreferredVoiceName, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null)) ? this.vocalizer : this.google;
    }

    @Override // aio.tts.VoiceBackend
    public void speak(String text, String lang, SynthesisCallback callback, int callerRate, int callerPitch, String appPackage) {
        String str;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(callback, "callback");
        VoiceBackend voiceBackendBackendFor = backendFor(lang, appPackage);
        if (voiceBackendBackendFor == this.external) {
            String strPreferredVoiceName = preferredVoiceName(lang, appPackage);
            if (strPreferredVoiceName != null) {
                str = strPreferredVoiceName;
                if (this.external.speakVoice(strPreferredVoiceName, text, lang, callback, callerRate, callerPitch)) {
                    return;
                }
            } else {
                str = strPreferredVoiceName;
            }
            if (str != null && ExternalEngines.INSTANCE.isAvailable(str)) {
                ExternalEngines.INSTANCE.markFailed(str, false);
            }
            if (getStopRequested()) {
                return;
            }
            voiceBackendBackendFor = backendFor(lang, appPackage);
            if (voiceBackendBackendFor == this.external) {
                try {
                    callback.done();
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
        }
        voiceBackendBackendFor.speak(text, lang, callback, callerRate, callerPitch, appPackage);
    }

    @Override // aio.tts.VoiceBackend
    public String resolveVoiceName(String lang, String appPackage) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        String strPreferredVoiceName = preferredVoiceName(lang, appPackage);
        return (strPreferredVoiceName == null || !ExternalEngines.INSTANCE.isExternalVoice(strPreferredVoiceName)) ? backendFor(lang, appPackage).resolveVoiceName(lang, appPackage) : strPreferredVoiceName;
    }

    @Override // aio.tts.VoiceBackend
    public void stop() {
        this.stopRequested = true;
        try {
            this.google.stop();
        } catch (Throwable th) {
            DiagnosticLog.INSTANCE.log("Stop", "google.stop failed: " + th);
        }
        try {
            this.eloquence.stop();
        } catch (Throwable th2) {
            DiagnosticLog.INSTANCE.log("Stop", "eloquence.stop failed: " + th2);
        }
        try {
            this.vocalizer.stop();
        } catch (Throwable th3) {
            DiagnosticLog.INSTANCE.log("Stop", "vocalizer.stop failed: " + th3);
        }
        try {
            this.external.stop();
        } catch (Throwable th4) {
            DiagnosticLog.INSTANCE.log("Stop", "external.stop failed: " + th4);
        }
    }

    @Override // aio.tts.VoiceBackend
    public void beginUtterance() {
        this.stopRequested = false;
        this.vocalizer.beginUtterance();
        this.eloquence.beginUtterance();
        this.google.beginUtterance();
        this.external.beginUtterance();
    }

    @Override // aio.tts.VoiceBackend
    /* renamed from: wasStopped, reason: from getter */
    public boolean getStopRequested() {
        return this.stopRequested;
    }
}
