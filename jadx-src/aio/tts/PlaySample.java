package aio.tts;

import aio.tts.RoutingVoiceBackend;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.speech.tts.SynthesisCallback;
import android.util.Log;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: PlaySample.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011¨\u0006\u001f"}, d2 = {"Laio/tts/PlaySample;", "", "<init>", "()V", "TEST_TEXT", "", "TEST_TEXT_BY_LANG", "", "textFor", "lang", "backend", "Laio/tts/RoutingVoiceBackend;", "lastCallerRate", "", "getLastCallerRate", "()I", "setLastCallerRate", "(I)V", "lastCallerPitch", "getLastCallerPitch", "setLastCallerPitch", "resolveVoiceName", "context", "Landroid/content/Context;", "refreshEngines", "", "timeoutMs", "", "play", "", "AudioTrackCallback", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlaySample {
    public static final String TEST_TEXT = "This is a test message of Sweet TTS.";
    private static volatile RoutingVoiceBackend backend;
    public static final PlaySample INSTANCE = new PlaySample();
    private static final Map<String, String> TEST_TEXT_BY_LANG = MapsKt.mapOf(TuplesKt.to("hi", "यह ऑल इन वन टीटीएस का एक परीक्षण संदेश है।"), TuplesKt.to("mr", "हा ऑल इन वन टीटीएसचा एक चाचणी संदेश आहे."), TuplesKt.to("bn", "এটি অল ইন ওয়ান টিটিএস-এর একটি পরীক্ষামূলক বার্তা।"), TuplesKt.to("gu", "આ ઓલ ઇન વન ટીટીએસનો એક પરીક્ષણ સંદેશ છે."), TuplesKt.to("pa", "ਇਹ ਆਲ ਇਨ ਵਨ ਟੀਟੀਐਸ ਦਾ ਇੱਕ ਟੈਸਟ ਸੁਨੇਹਾ ਹੈ।"), TuplesKt.to("ur", "یہ آل ان ون ٹی ٹی ایس کا ایک ٹیسٹ پیغام ہے۔"), TuplesKt.to("ar", "هذه رسالة اختبار من Sweet TTS."), TuplesKt.to("ne", "यो अल इन वान टिटिएसको एउटा परीक्षण सन्देश हो।"), TuplesKt.to("or", "ଏହା ଅଲ ଇନ ୱାନ ଟିଟିଏସର ଏକ ପରୀକ୍ଷଣ ବାର୍ତ୍ତା।"), TuplesKt.to("kn", "ಇದು ಆಲ್ ಇನ್ ವನ್ ಟಿಟಿಎಸ್\u200cನ ಒಂದು ಪರೀಕ್ಷಾ ಸಂದೇಶ."), TuplesKt.to("ta", "இது ஆல் இன் ஒன் டிடிஎஸ் இன் ஒரு சோதனைச் செய்தி."), TuplesKt.to("te", "ఇది ఆల్ ఇన్ వన్ టిటిఎస్ యొక్క పరీక్షా సందేశం."), TuplesKt.to("ml", "ഇത് ഓൾ ഇൻ വൺ ടിടിഎസിന്റെ ഒരു ടെസ്റ്റ് സന്ദേശമാണ്."), TuplesKt.to("as", "এইটো অল ইন ৱান টিটিএছৰ এটা পৰীক্ষামূলক বাৰ্তা।"), TuplesKt.to("sa", "इयम् Sweet TTS इत्यस्य परीक्षासन्देशः अस्ति।"), TuplesKt.to("bho", "ई ऑल इन वन टीटीएस के एगो परीक्षण संदेश बा।"), TuplesKt.to("mai", "ई ऑल इन वन टीटीएस केर एकटा परीक्षण संदेश अछि।"), TuplesKt.to("brx", "मिया जाबाय अल इन वान टि.टि.एस. नि मोनसे आनजाद खौरां।"), TuplesKt.to("doi", "एह ऑल इन वन टीटीएस दा एक टेस्ट संदेश ऐ।"), TuplesKt.to("kok", "हो ऑल इन वन टीटीएस चो एक परिक्शा संदेश आसा।"), TuplesKt.to("ks", "यह छु अख ऑल इन वन टीटीएस संद्य टेस्ट पेगाम।"), TuplesKt.to("sd", "هي آل ان ون ٽي ٽي ايس جو هڪ ٽيسٽ پيغام آهي."), TuplesKt.to("mni", "ꯀꯅꯥ ꯑꯣꯜ ꯏꯟ ꯋꯥꯟ ꯇꯤ.ꯇꯤ.ꯑꯦꯁ.ꯀꯤ ꯇꯦꯁ꯭ꯠ ꯃꯦꯁꯦꯖ ꯑꯃꯅꯤ꯫"));
    private static volatile int lastCallerRate = 100;
    private static volatile int lastCallerPitch = 100;

    private PlaySample() {
    }

    public final String textFor(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        String str = TEST_TEXT_BY_LANG.get(lang);
        return str == null ? TEST_TEXT : str;
    }

    public final int getLastCallerRate() {
        return lastCallerRate;
    }

    public final void setLastCallerRate(int i) {
        lastCallerRate = i;
    }

    public final int getLastCallerPitch() {
        return lastCallerPitch;
    }

    public final void setLastCallerPitch(int i) {
        lastCallerPitch = i;
    }

    public final String resolveVoiceName(Context context, String lang) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Context applicationContext = context.getApplicationContext();
        RoutingVoiceBackend routingVoiceBackend = backend;
        if (routingVoiceBackend == null) {
            synchronized (this) {
                routingVoiceBackend = backend;
                if (routingVoiceBackend == null) {
                    RoutingVoiceBackend.Companion companion = RoutingVoiceBackend.INSTANCE;
                    Intrinsics.checkNotNull(applicationContext);
                    RoutingVoiceBackend routingVoiceBackendShared = companion.shared(applicationContext);
                    backend = routingVoiceBackendShared;
                    routingVoiceBackend = routingVoiceBackendShared;
                }
            }
        }
        return routingVoiceBackend.resolveVoiceName(lang, null);
    }

    public static /* synthetic */ boolean refreshEngines$default(PlaySample playSample, Context context, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 6000;
        }
        return playSample.refreshEngines(context, j);
    }

    public final boolean refreshEngines(Context context, long timeoutMs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        RoutingVoiceBackend routingVoiceBackend = backend;
        if (routingVoiceBackend == null) {
            synchronized (this) {
                routingVoiceBackend = backend;
                if (routingVoiceBackend == null) {
                    RoutingVoiceBackend.Companion companion = RoutingVoiceBackend.INSTANCE;
                    Intrinsics.checkNotNull(applicationContext);
                    RoutingVoiceBackend routingVoiceBackendShared = companion.shared(applicationContext);
                    backend = routingVoiceBackendShared;
                    routingVoiceBackend = routingVoiceBackendShared;
                }
            }
        }
        return routingVoiceBackend.refreshGoogle(timeoutMs);
    }

    public final void play(Context context, final String lang) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Context applicationContext = context.getApplicationContext();
        RoutingVoiceBackend routingVoiceBackend = backend;
        if (routingVoiceBackend == null) {
            synchronized (this) {
                routingVoiceBackend = backend;
                if (routingVoiceBackend == null) {
                    RoutingVoiceBackend.Companion companion = RoutingVoiceBackend.INSTANCE;
                    Intrinsics.checkNotNull(applicationContext);
                    RoutingVoiceBackend routingVoiceBackendShared = companion.shared(applicationContext);
                    backend = routingVoiceBackendShared;
                    routingVoiceBackend = routingVoiceBackendShared;
                }
            }
        }
        final RoutingVoiceBackend routingVoiceBackend2 = routingVoiceBackend;
        final String strTextFor = textFor(lang);
        final int i = lastCallerRate;
        final int i2 = lastCallerPitch;
        new Thread(new Runnable() { // from class: aio.tts.PlaySample$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PlaySample.play$lambda$6(routingVoiceBackend2, strTextFor, lang, i, i2);
            }
        }).start();
    }

    static final void play$lambda$6(RoutingVoiceBackend routingVoiceBackend, String str, String str2, int i, int i2) {
        String str3;
        try {
            str3 = str2;
            try {
                VoiceBackend.speak$default(routingVoiceBackend, str, str3, new AudioTrackCallback(), i, i2, null, 32, null);
            } catch (Throwable th) {
                th = th;
                Log.e("AllInOneTTS", "PlaySample: speak failed for lang=" + str3, th);
            }
        } catch (Throwable th2) {
            th = th2;
            str3 = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PlaySample.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016J\"\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nH\u0016J\b\u0010\u0017\u001a\u00020\nH\u0016J\b\u0010\u0018\u001a\u00020\u0007H\u0016J\b\u0010\u0019\u001a\u00020\u0007H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Laio/tts/PlaySample$AudioTrackCallback;", "Landroid/speech/tts/SynthesisCallback;", "<init>", "()V", "track", "Landroid/media/AudioTrack;", "started", "", "finished", "start", "", "sampleRateInHz", "audioFormat", "channelCount", "audioAvailable", "buffer", "", "offset", "length", "done", "error", "", "errorCode", "getMaxBufferSize", "hasStarted", "hasFinished", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    static final class AudioTrackCallback implements SynthesisCallback {
        private boolean finished;
        private boolean started;
        private AudioTrack track;

        @Override // android.speech.tts.SynthesisCallback
        public int getMaxBufferSize() {
            return 8192;
        }

        @Override // android.speech.tts.SynthesisCallback
        public int start(int sampleRateInHz, int audioFormat, int channelCount) {
            this.started = true;
            int i = channelCount >= 2 ? 12 : 4;
            try {
                AudioTrack audioTrackBuild = new AudioTrack.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(11).setContentType(1).build()).setAudioFormat(new AudioFormat.Builder().setSampleRate(sampleRateInHz).setEncoding(audioFormat).setChannelMask(i).build()).setBufferSizeInBytes(RangesKt.coerceAtLeast(AudioTrack.getMinBufferSize(sampleRateInHz, i, audioFormat), 1024) * 2).setTransferMode(1).build();
                this.track = audioTrackBuild;
                if (audioTrackBuild == null) {
                    return 0;
                }
                audioTrackBuild.play();
                return 0;
            } catch (Throwable th) {
                Log.e("AllInOneTTS", "PlaySample: AudioTrack setup failed", th);
                return -1;
            }
        }

        @Override // android.speech.tts.SynthesisCallback
        public int audioAvailable(byte[] buffer, int offset, int length) {
            if (buffer == null || length <= 0) {
                return 0;
            }
            try {
                AudioTrack audioTrack = this.track;
                if (audioTrack != null) {
                    audioTrack.write(buffer, offset, length);
                }
                return 0;
            } catch (Throwable th) {
                Log.e("AllInOneTTS", "PlaySample: AudioTrack write failed", th);
                return -1;
            }
        }

        @Override // android.speech.tts.SynthesisCallback
        public int done() {
            this.finished = true;
            try {
                AudioTrack audioTrack = this.track;
                if (audioTrack != null) {
                    audioTrack.stop();
                }
                AudioTrack audioTrack2 = this.track;
                if (audioTrack2 == null) {
                    return 0;
                }
                audioTrack2.release();
                return 0;
            } catch (Throwable unused) {
                return 0;
            }
        }

        @Override // android.speech.tts.SynthesisCallback
        public void error() {
            this.finished = true;
            try {
                AudioTrack audioTrack = this.track;
                if (audioTrack != null) {
                    audioTrack.release();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.speech.tts.SynthesisCallback
        public void error(int errorCode) {
            error();
        }

        @Override // android.speech.tts.SynthesisCallback
        public boolean hasStarted() {
            return this.started;
        }

        @Override // android.speech.tts.SynthesisCallback
        public boolean hasFinished() {
            return this.finished;
        }
    }
}
