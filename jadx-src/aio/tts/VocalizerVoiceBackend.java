package aio.tts;

import android.content.Context;
import android.content.res.AssetManager;
import android.speech.tts.SynthesisCallback;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.nuance.android.vocalizer.VocalizerEngine;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* compiled from: VocalizerVoiceBackend.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0017\u001a\u00020\u0018H\u0002J*\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00162\b\b\u0002\u0010\u001d\u001a\u00020\u000fH\u0002J\b\u0010\u001e\u001a\u00020\u0018H\u0002J\u0018\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u000fH\u0002J\b\u0010\"\u001a\u00020\rH\u0002J\u0006\u0010#\u001a\u00020\u000fJ\u000e\u0010$\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0011J\u0006\u0010*\u001a\u00020\u000fJ\u001c\u0010+\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u000f2\b\u0010,\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\b\u0010,\u001a\u0004\u0018\u00010\u000fH\u0016J\u0018\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J:\u00105\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010/\u001a\u0002002\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00112\b\u0010,\u001a\u0004\u0018\u00010\u000fH\u0016J:\u00108\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010/\u001a\u0002002\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00112\b\u0010,\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010:\u001a\u00020\u0018H\u0016J\b\u0010;\u001a\u00020\u0018H\u0016J\b\u0010<\u001a\u00020\rH\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u000e\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Laio/tts/VocalizerVoiceBackend;", "Laio/tts/VoiceBackend;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "appContext", "engine", "Lcom/nuance/android/vocalizer/VocalizerEngine;", "voices", "", "Lcom/nuance/android/vocalizer/VocalizerVoice;", "ready", "", "lastLoadedVoiceName", "", "noAudioStreak", "", "recoveryStep", "recoveryReason", "lastFailureWasLoad", "firstFailureMs", "", "noteSpeechOk", "", "noteNoAudio", "text", "lang", "elapsedMs", "what", "recoverIfNeeded", "runRecovery", "step", "reason", "reinitEngine", "debugBreak", "debugRecover", "debugFailLoads", "getDebugFailLoads", "()I", "setDebugFailLoads", "(I)V", "rescanVoices", "findVoice", "appPackage", "resolveVoiceName", "writeAudio", "callback", "Landroid/speech/tts/SynthesisCallback;", "bytes", "", "speakLock", "Ljava/util/concurrent/locks/ReentrantLock;", "speak", "callerRate", "callerPitch", "speakLocked", "stopRequested", "stop", "beginUtterance", "wasStopped", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VocalizerVoiceBackend implements VoiceBackend {
    private static final long ABSOLUTE_TIMEOUT_MS = 120000;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile VocalizerVoiceBackend instance;
    private final Context appContext;
    private volatile int debugFailLoads;
    private VocalizerEngine engine;
    private long firstFailureMs;
    private boolean lastFailureWasLoad;
    private String lastLoadedVoiceName;
    private int noAudioStreak;
    private boolean ready;
    private String recoveryReason;
    private int recoveryStep;
    private final ReentrantLock speakLock;
    private volatile boolean stopRequested;
    private List<VocalizerVoice> voices;

    public VocalizerVoiceBackend(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.appContext = applicationContext;
        this.engine = new VocalizerEngine(context);
        this.voices = CollectionsKt.emptyList();
        this.engine.createNativeEngine();
        AssetManager assets = context.getAssets();
        Intrinsics.checkNotNullExpressionValue(assets, "getAssets(...)");
        boolean zInitialize = new VocalizerAssetManager(assets, this.engine).initialize();
        if (!zInitialize) {
            Log.e("AllInOneTTS", "Vocalizer initializeNative() returned false");
        } else {
            this.voices = ArraysKt.toList(this.engine.getAvailableVoiceListNative());
            VoiceCatalog.INSTANCE.setVocalizerVoices(this.voices);
            for (VocalizerVoice vocalizerVoice : this.voices) {
                Log.d("AllInOneTTS", "Vocalizer voice found: name=" + vocalizerVoice.mVoiceName + " language=" + vocalizerVoice.mLanguage + " tlw=" + vocalizerVoice.mLanguageTLW + " sampleRate=" + vocalizerVoice.mSampleRate);
            }
        }
        this.ready = zInitialize;
        instance = this;
        this.recoveryReason = "";
        this.speakLock = new ReentrantLock();
    }

    private final void noteSpeechOk() {
        int i = this.recoveryStep;
        if (i > 0) {
            String str = "speech works again after recovery step " + i + " (" + this.recoveryReason + "), " + ((System.currentTimeMillis() - this.firstFailureMs) / 1000) + "s after the first failure";
            DiagnosticLog.INSTANCE.log("Recover", str);
            DetailedLog.INSTANCE.log("Recover", str);
        }
        this.noAudioStreak = 0;
        this.recoveryStep = 0;
        this.recoveryReason = "";
        this.lastFailureWasLoad = false;
        this.firstFailureMs = 0L;
    }

    static /* synthetic */ void noteNoAudio$default(VocalizerVoiceBackend vocalizerVoiceBackend, String str, String str2, long j, String str3, int i, Object obj) {
        if ((i & 8) != 0) {
            str3 = "no audio";
        }
        vocalizerVoiceBackend.noteNoAudio(str, str2, j, str3);
    }

    private final void noteNoAudio(String text, String lang, long elapsedMs, String what) {
        StopClock.INSTANCE.noteFail();
        this.noAudioStreak++;
        this.lastFailureWasLoad = !Intrinsics.areEqual(what, "no audio");
        if (this.firstFailureMs == 0) {
            this.firstFailureMs = System.currentTimeMillis();
        }
        String str = what + ", " + this.noAudioStreak + "x in a row (last request " + elapsedMs + "ms, lang=" + lang + ", recovery step so far " + this.recoveryStep + "); the native engine log in logcat (tag NUANCE) has the engine's own error";
        DiagnosticLog.INSTANCE.log("Health", str);
        DetailedLog.INSTANCE.log("Health", str);
    }

    private final void recoverIfNeeded() {
        int i = this.noAudioStreak;
        if (i < 2) {
            return;
        }
        int i2 = this.recoveryStep + 1;
        this.recoveryStep = i2;
        if (i2 == 1 && this.lastFailureWasLoad) {
            this.recoveryStep = 2;
        }
        String str = i + " failures in a row";
        this.recoveryReason = str;
        this.noAudioStreak = 0;
        runRecovery(this.recoveryStep, str);
    }

    private final String runRecovery(int step, String reason) {
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (step <= 1) {
            this.lastLoadedVoiceName = null;
            str = "voice will be loaded again before the next request";
        } else {
            try {
                if (reinitEngine()) {
                    str = "native engine rebuilt, voices " + this.voices.size();
                } else {
                    str = "native engine rebuild FAILED";
                }
            } catch (Throwable th) {
                str = "native engine rebuild threw " + th;
            }
        }
        String str2 = "recovery step " + step + " (" + reason + "): " + str + ", took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms";
        Log.e("AllInOneTTS", str2);
        DiagnosticLog.INSTANCE.log("Recover", str2);
        DetailedLog.INSTANCE.log("Recover", str2);
        return str;
    }

    private final boolean reinitEngine() {
        VocalizerEngine vocalizerEngine = this.engine;
        try {
            vocalizerEngine.releaseNative();
        } catch (Throwable th) {
            DetailedLog.INSTANCE.log("Recover", "releaseNative threw " + th);
        }
        try {
            vocalizerEngine.destroyNativeEngine();
        } catch (Throwable th2) {
            DetailedLog.INSTANCE.log("Recover", "destroyNativeEngine threw " + th2);
        }
        VocalizerEngine vocalizerEngine2 = new VocalizerEngine(this.appContext);
        vocalizerEngine2.createNativeEngine();
        AssetManager assets = this.appContext.getAssets();
        Intrinsics.checkNotNullExpressionValue(assets, "getAssets(...)");
        if (!new VocalizerAssetManager(assets, vocalizerEngine2).initialize()) {
            this.ready = false;
            return false;
        }
        this.engine = vocalizerEngine2;
        this.voices = ArraysKt.toList(vocalizerEngine2.getAvailableVoiceListNative());
        VoiceCatalog.INSTANCE.setVocalizerVoices(this.voices);
        this.lastLoadedVoiceName = null;
        this.ready = true;
        return true;
    }

    public final String debugBreak() throws InterruptedException {
        final VocalizerEngine vocalizerEngine = this.engine;
        Thread thread = new Thread(new Runnable() { // from class: aio.tts.VocalizerVoiceBackend$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                vocalizerEngine.debugRawStop();
            }
        });
        Thread thread2 = new Thread(new Runnable() { // from class: aio.tts.VocalizerVoiceBackend$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                vocalizerEngine.debugRawStop();
            }
        });
        thread.start();
        thread2.start();
        thread.join();
        thread2.join();
        return "two unguarded native stops sent from two threads";
    }

    public final String debugRecover(int step) {
        return runRecovery(step, "by hand");
    }

    public final int getDebugFailLoads() {
        return this.debugFailLoads;
    }

    public final void setDebugFailLoads(int i) {
        this.debugFailLoads = i;
    }

    public final String rescanVoices() {
        return runRecovery(2, "voice folder check");
    }

    private final VocalizerVoice findVoice(String lang, String appPackage) {
        Object next;
        Object obj = null;
        if (Intrinsics.areEqual(lang, "number") || Intrinsics.areEqual(lang, "emoji")) {
            String strNumberVoice = Intrinsics.areEqual(lang, "number") ? Prefs.INSTANCE.numberVoice() : Prefs.INSTANCE.emojiVoice();
            Iterator<T> it = this.voices.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next2 = it.next();
                if (Intrinsics.areEqual(((VocalizerVoice) next2).mVoiceName, strNumberVoice)) {
                    obj = next2;
                    break;
                }
            }
            VocalizerVoice vocalizerVoice = (VocalizerVoice) obj;
            return vocalizerVoice == null ? VoiceCatalog.INSTANCE.defaultVoiceFor(lang, this.voices) : vocalizerVoice;
        }
        List<VocalizerVoice> list = this.voices;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (VoiceCatalog.INSTANCE.voiceMatchesLanguage((VocalizerVoice) obj2, lang)) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = arrayList;
        String strVoiceForApp = appPackage != null ? Prefs.INSTANCE.voiceForApp(appPackage, lang) : null;
        if (strVoiceForApp != null) {
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                if (Intrinsics.areEqual(((VocalizerVoice) next).mVoiceName, strVoiceForApp)) {
                    break;
                }
            }
            VocalizerVoice vocalizerVoice2 = (VocalizerVoice) next;
            if (vocalizerVoice2 != null) {
                return vocalizerVoice2;
            }
        }
        String strVoiceFor = Prefs.INSTANCE.voiceFor(lang);
        Iterator it3 = arrayList2.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next3 = it3.next();
            if (Intrinsics.areEqual(((VocalizerVoice) next3).mVoiceName, strVoiceFor)) {
                obj = next3;
                break;
            }
        }
        VocalizerVoice vocalizerVoice3 = (VocalizerVoice) obj;
        return vocalizerVoice3 == null ? VoiceCatalog.INSTANCE.defaultVoiceFor(lang, arrayList2) : vocalizerVoice3;
    }

    @Override // aio.tts.VoiceBackend
    public String resolveVoiceName(String lang, String appPackage) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        VocalizerVoice vocalizerVoiceFindVoice = findVoice(lang, appPackage);
        if (vocalizerVoiceFindVoice != null) {
            return vocalizerVoiceFindVoice.mVoiceName;
        }
        return null;
    }

    private final boolean writeAudio(SynthesisCallback callback, byte[] bytes) {
        int iCoerceAtLeast = RangesKt.coerceAtLeast(callback.getMaxBufferSize(), 2);
        int i = 0;
        while (i < bytes.length) {
            int iMin = Math.min(iCoerceAtLeast, bytes.length - i);
            if (callback.audioAvailable(bytes, i, iMin) != 0) {
                return false;
            }
            i += iMin;
        }
        return true;
    }

    @Override // aio.tts.VoiceBackend
    public void speak(String text, String lang, SynthesisCallback callback, int callerRate, int callerPitch, String appPackage) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.speakLock.lock();
        try {
            speakLocked(text, lang, callback, callerRate, callerPitch, appPackage);
        } finally {
            this.speakLock.unlock();
        }
    }

    private final void speakLocked(String text, String lang, final SynthesisCallback callback, int callerRate, int callerPitch, String appPackage) throws InterruptedException {
        recoverIfNeeded();
        if (this.stopRequested) {
            DetailedLog.INSTANCE.log("Speak", "STOPPED before start (Vocalizer) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
            return;
        }
        if (!this.ready) {
            Log.e("AllInOneTTS", "Vocalizer engine not ready, cannot speak");
            noteNoAudio(text, lang, 0L, "engine not ready");
            callback.error(-3);
            return;
        }
        VocalizerVoice vocalizerVoiceFindVoice = findVoice(lang, appPackage);
        if (vocalizerVoiceFindVoice == null) {
            Log.e("AllInOneTTS", "No Vocalizer voice matched for lang=" + lang);
            DiagnosticLog.INSTANCE.log("Speak", "SKIPPED no voice installed for lang=" + lang + " (nothing spoken, reported done)");
            callback.done();
            return;
        }
        if (!Intrinsics.areEqual(vocalizerVoiceFindVoice.mVoiceName, this.lastLoadedVoiceName)) {
            DetailedLog.INSTANCE.log("Voice", "loading voice=" + vocalizerVoiceFindVoice.mVoiceName + " (was " + this.lastLoadedVoiceName + ")");
            this.lastLoadedVoiceName = null;
            boolean z = this.debugFailLoads > 0;
            if (z) {
                this.debugFailLoads--;
            }
            if (z || !this.engine.loadVoiceNative(vocalizerVoiceFindVoice)) {
                Log.e("AllInOneTTS", "loadVoiceNative failed for " + vocalizerVoiceFindVoice.mVoiceName);
                DetailedLog.INSTANCE.log("Voice", "loadVoiceNative FAILED for " + vocalizerVoiceFindVoice.mVoiceName);
                noteNoAudio(text, lang, 0L, "voice " + vocalizerVoiceFindVoice.mVoiceName + " could not be loaded");
                callback.error(-3);
                return;
            }
            this.engine.markVoiceLoaded(vocalizerVoiceFindVoice);
            this.lastLoadedVoiceName = vocalizerVoiceFindVoice.mVoiceName;
            if (this.stopRequested) {
                DetailedLog.INSTANCE.log("Speak", "STOPPED during voice load (Vocalizer) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang);
                return;
            }
        }
        int iCoerceIn = RangesKt.coerceIn((int) ((Prefs.INSTANCE.rateFor(vocalizerVoiceFindVoice.mVoiceName) * callerRate) / 100.0f), 1, Prefs.INSTANCE.vocalizerRateCap());
        int iCoerceIn2 = RangesKt.coerceIn((int) ((Prefs.INSTANCE.pitchFor(vocalizerVoiceFindVoice.mVoiceName) * callerPitch) / 100.0f), 1, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        int iVolumeFor = Prefs.INSTANCE.volumeFor(vocalizerVoiceFindVoice.mVoiceName);
        DetailedLog.INSTANCE.log("Speak", "voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " callerRate=" + callerRate + " callerPitch=" + callerPitch + " -> effectiveRate=" + iCoerceIn + " effectivePitch=" + iCoerceIn2 + " volume=" + iVolumeFor);
        this.engine.setVolume(iVolumeFor);
        this.engine.setRate(iCoerceIn);
        this.engine.setPitch(iCoerceIn2);
        final Object obj = new Object();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final AtomicLong atomicLong = new AtomicLong(0L);
        final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        final int i = vocalizerVoiceFindVoice.mSampleRate > 0 ? vocalizerVoiceFindVoice.mSampleRate * 1000 : EloquenceHub.SAMPLE_RATE_HZ;
        this.engine.setOnSamples(new Function1() { // from class: aio.tts.VocalizerVoiceBackend$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return VocalizerVoiceBackend.speakLocked$lambda$10(obj, atomicBoolean2, booleanRef, callback, i, this, atomicLong, atomicBoolean, booleanRef2, (short[]) obj2);
            }
        });
        long jCurrentTimeMillis = System.currentTimeMillis();
        speakLocked$speakOne(this, i, text);
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        this.engine.setOnSamples(null);
        if (atomicBoolean2.get() && !this.stopRequested) {
            DiagnosticLog.INSTANCE.log("Speak", "STOPPED (framework refused audio) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " elapsedMs=" + jCurrentTimeMillis2);
            DetailedLog.INSTANCE.log("Speak", "STOPPED (framework refused audio, synthesis cut short) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " elapsedMs=" + jCurrentTimeMillis2 + " text=" + LogText.INSTANCE.of(text));
            return;
        }
        if (this.stopRequested && (booleanRef2.element || !atomicBoolean.get())) {
            DiagnosticLog.INSTANCE.log("Speak", "INTERRUPTED voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " text=" + LogText.INSTANCE.of(text));
            DetailedLog.INSTANCE.log("Speak", "INTERRUPTED voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " elapsedMs=" + jCurrentTimeMillis2 + " text=" + LogText.INSTANCE.of(text));
            return;
        }
        try {
            if (booleanRef2.element) {
                StopClock.INSTANCE.noteFail();
                Log.e("AllInOneTTS", "PRODUCTION SPEAK FAILED (callback exception) for voice=" + vocalizerVoiceFindVoice.mVoiceName + " text=" + LogText.INSTANCE.of(text));
                DiagnosticLog.INSTANCE.log("Speak", "FAILED (callback exception) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                DetailedLog.INSTANCE.log("Speak", "FAILED (callback exception) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " elapsedMs=" + jCurrentTimeMillis2 + " text=" + LogText.INSTANCE.of(text));
                callback.error(-3);
                return;
            }
            if (!atomicBoolean.get() && !WatchdogKt.hasSpeakableChars(text)) {
                DiagnosticLog.INSTANCE.log("Speak", "SKIPPED (nothing to speak) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                DetailedLog.INSTANCE.log("Speak", "SKIPPED (nothing to speak) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " elapsedMs=" + jCurrentTimeMillis2 + " text=" + LogText.INSTANCE.of(text));
                try {
                    callback.done();
                    return;
                } catch (Throwable th) {
                    Log.e("AllInOneTTS", "callback.done() threw", th);
                    return;
                }
            }
            if (!atomicBoolean.get()) {
                noteNoAudio$default(this, text, lang, jCurrentTimeMillis2, null, 8, null);
                Log.e("AllInOneTTS", "PRODUCTION SPEAK FAILED (no audio received) for voice=" + vocalizerVoiceFindVoice.mVoiceName + " text=" + LogText.INSTANCE.of(text));
                DiagnosticLog.INSTANCE.log("Speak", "FAILED (no audio received) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                DetailedLog.INSTANCE.log("Speak", "FAILED (no audio received) voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " elapsedMs=" + jCurrentTimeMillis2 + " text=" + LogText.INSTANCE.of(text));
                callback.error(-3);
                return;
            }
            noteSpeechOk();
            Log.d("AllInOneTTS", "PRODUCTION SPEAK OK: voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " bytes=" + atomicLong.get() + " text=" + LogText.INSTANCE.of(text));
            DiagnosticLog.INSTANCE.log("Speak", "OK voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " bytes=" + atomicLong.get() + " text=" + LogText.INSTANCE.of(text));
            DetailedLog.INSTANCE.log("Speak", "OK voice=" + vocalizerVoiceFindVoice.mVoiceName + " lang=" + lang + " bytes=" + atomicLong.get() + " elapsedMs=" + jCurrentTimeMillis2 + " text=" + LogText.INSTANCE.of(text));
            try {
                callback.done();
            } catch (Throwable th2) {
                Log.e("AllInOneTTS", "callback.done() threw", th2);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007b A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #0 {, blocks: (B:28:0x007b, B:27:0x0070, B:5:0x0009, B:7:0x000f, B:9:0x0015, B:13:0x001e, B:16:0x0024, B:18:0x002c, B:19:0x0041, B:21:0x0052, B:23:0x0058), top: B:36:0x0009, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final kotlin.Unit speakLocked$lambda$10(java.lang.Object r10, java.util.concurrent.atomic.AtomicBoolean r11, kotlin.jvm.internal.Ref.BooleanRef r12, android.speech.tts.SynthesisCallback r13, int r14, final aio.tts.VocalizerVoiceBackend r15, java.util.concurrent.atomic.AtomicLong r16, java.util.concurrent.atomic.AtomicBoolean r17, kotlin.jvm.internal.Ref.BooleanRef r18, short[] r19) {
        /*
            r1 = r19
            java.lang.String r2 = "samples"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
            monitor-enter(r10)
            r2 = 1
            boolean r3 = r11.get()     // Catch: java.lang.Throwable -> L6e
            if (r3 != 0) goto L7b
            boolean r3 = r12.element     // Catch: java.lang.Throwable -> L6e
            r4 = 0
            r5 = 2
            if (r3 != 0) goto L21
            int r3 = r13.start(r14, r5, r2)     // Catch: java.lang.Throwable -> L6e
            if (r3 != 0) goto L1d
            r3 = r2
            goto L1e
        L1d:
            r3 = r4
        L1e:
            r12.element = r2     // Catch: java.lang.Throwable -> L6e
            goto L22
        L21:
            r3 = r2
        L22:
            if (r3 == 0) goto L50
            int r12 = r1.length     // Catch: java.lang.Throwable -> L6e
            int r12 = r12 * r5
            byte[] r3 = new byte[r12]     // Catch: java.lang.Throwable -> L6e
            int r5 = r1.length     // Catch: java.lang.Throwable -> L6e
            r6 = r4
        L2a:
            if (r6 >= r5) goto L41
            short r7 = r1[r6]     // Catch: java.lang.Throwable -> L6e
            int r8 = r6 * 2
            r9 = r7 & 255(0xff, float:3.57E-43)
            byte r9 = (byte) r9     // Catch: java.lang.Throwable -> L6e
            r3[r8] = r9     // Catch: java.lang.Throwable -> L6e
            int r8 = r8 + 1
            int r7 = r7 >> 8
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r7 = (byte) r7     // Catch: java.lang.Throwable -> L6e
            r3[r8] = r7     // Catch: java.lang.Throwable -> L6e
            int r6 = r6 + 1
            goto L2a
        L41:
            boolean r3 = r15.writeAudio(r13, r3)     // Catch: java.lang.Throwable -> L6e
            long r12 = (long) r12     // Catch: java.lang.Throwable -> L6e
            r1 = r16
            r1.addAndGet(r12)     // Catch: java.lang.Throwable -> L6e
            r12 = r17
            r12.set(r2)     // Catch: java.lang.Throwable -> L6e
        L50:
            if (r3 != 0) goto L7b
            boolean r11 = r11.compareAndSet(r4, r2)     // Catch: java.lang.Throwable -> L6e
            if (r11 == 0) goto L7b
            com.nuance.android.vocalizer.VocalizerEngine r11 = r15.engine     // Catch: java.lang.Throwable -> L6e
            long r11 = r11.getSynthGen()     // Catch: java.lang.Throwable -> L6e
            java.lang.Thread r13 = new java.lang.Thread     // Catch: java.lang.Throwable -> L6e
            aio.tts.VocalizerVoiceBackend$$ExternalSyntheticLambda4 r1 = new aio.tts.VocalizerVoiceBackend$$ExternalSyntheticLambda4     // Catch: java.lang.Throwable -> L6e
            r1.<init>()     // Catch: java.lang.Throwable -> L6e
            java.lang.String r11 = "VocalizerAbort"
            r13.<init>(r1, r11)     // Catch: java.lang.Throwable -> L6e
            r13.start()     // Catch: java.lang.Throwable -> L6e
            goto L7b
        L6e:
            r0 = move-exception
            r11 = r0
            java.lang.String r12 = "AllInOneTTS"
            java.lang.String r13 = "onSamples: framework callback threw"
            android.util.Log.e(r12, r13, r11)     // Catch: java.lang.Throwable -> L81
            r11 = r18
            r11.element = r2     // Catch: java.lang.Throwable -> L81
        L7b:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L81
            monitor-exit(r10)
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L81:
            r0 = move-exception
            r11 = r0
            monitor-exit(r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.VocalizerVoiceBackend.speakLocked$lambda$10(java.lang.Object, java.util.concurrent.atomic.AtomicBoolean, kotlin.jvm.internal.Ref$BooleanRef, android.speech.tts.SynthesisCallback, int, aio.tts.VocalizerVoiceBackend, java.util.concurrent.atomic.AtomicLong, java.util.concurrent.atomic.AtomicBoolean, kotlin.jvm.internal.Ref$BooleanRef, short[]):kotlin.Unit");
    }

    private static final void speakLocked$speakOne(VocalizerVoiceBackend vocalizerVoiceBackend, int i, String str) throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        vocalizerVoiceBackend.engine.speakOnSynthThread(str, i, new Function0() { // from class: aio.tts.VocalizerVoiceBackend$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VocalizerVoiceBackend.speakLocked$speakOne$lambda$11(countDownLatch);
            }
        });
        if (vocalizerVoiceBackend.stopRequested) {
            vocalizerVoiceBackend.engine.stop();
        }
        countDownLatch.await(ABSOLUTE_TIMEOUT_MS, TimeUnit.MILLISECONDS);
    }

    static final Unit speakLocked$speakOne$lambda$11(CountDownLatch countDownLatch) {
        countDownLatch.countDown();
        return Unit.INSTANCE;
    }

    @Override // aio.tts.VoiceBackend
    public void stop() {
        this.stopRequested = true;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.engine.stop();
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jCurrentTimeMillis2 >= 20) {
            String str = "Vocalizer stop(): engine.stop() took " + jCurrentTimeMillis2 + "ms -- SLOW";
            DiagnosticLog.INSTANCE.log("Stop", str);
            DetailedLog.INSTANCE.log("Stop", str);
        }
    }

    @Override // aio.tts.VoiceBackend
    public void beginUtterance() {
        this.stopRequested = false;
    }

    @Override // aio.tts.VoiceBackend
    /* renamed from: wasStopped, reason: from getter */
    public boolean getStopRequested() {
        return this.stopRequested;
    }

    /* compiled from: VocalizerVoiceBackend.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Laio/tts/VocalizerVoiceBackend$Companion;", "", "<init>", "()V", "instance", "Laio/tts/VocalizerVoiceBackend;", "getInstance", "()Laio/tts/VocalizerVoiceBackend;", "setInstance", "(Laio/tts/VocalizerVoiceBackend;)V", "ABSOLUTE_TIMEOUT_MS", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final VocalizerVoiceBackend getInstance() {
            return VocalizerVoiceBackend.instance;
        }

        public final void setInstance(VocalizerVoiceBackend vocalizerVoiceBackend) {
            VocalizerVoiceBackend.instance = vocalizerVoiceBackend;
        }
    }
}
