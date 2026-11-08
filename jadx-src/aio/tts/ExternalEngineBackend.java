package aio.tts;

import aio.tts.ExternalEngines;
import android.content.Context;
import android.media.AudioAttributes;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.speech.tts.SynthesisCallback;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: ExternalEngineBackend.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u0000 +2\u00020\u0001:\u0003+,-B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u000fH\u0016J:\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010#\u001a\u00020\u0018H\u0016J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u000bH\u0002J\u0010\u0010&\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u000bH\u0002J\u0010\u0010'\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000bH\u0002J\b\u0010(\u001a\u00020\u0018H\u0002J6\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 R\u0016\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\r0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Laio/tts/ExternalEngineBackend;", "Laio/tts/VoiceBackend;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "appContext", "kotlin.jvm.PlatformType", "clients", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Laio/tts/ExternalEngineBackend$Client;", "pending", "Laio/tts/ExternalEngineBackend$Pending;", "started", "", "utteranceOk", "counter", "Ljava/util/concurrent/atomic/AtomicLong;", "stopRequested", "handler", "Landroid/os/Handler;", "idleCheckScheduled", "beginUtterance", "", "wasStopped", "speak", "text", "lang", "callback", "Landroid/speech/tts/SynthesisCallback;", "callerRate", "", "callerPitch", "appPackage", "stop", "connect", "client", "closeClient", "ensureReady", "scheduleIdleCheck", "speakVoice", "voiceName", "Companion", "Client", "Pending", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ExternalEngineBackend implements VoiceBackend {
    private static final long GRACE_SETTLE_MAX_MS = 150;
    private static final long GRACE_SETTLE_POLL_MS = 20;
    private static final long IDLE_CHECK_MS = 30000;
    private static final long IDLE_RELEASE_MS = 120000;
    private static final long INIT_TIMEOUT_MS = 6000;
    private static final long RECONNECT_COOLDOWN_MS = 3000;
    private static final int SPEAK_FAILURE_RETRY_COUNT = 3;
    private static final long SPEAK_FAILURE_RETRY_DELAY_MS = 150;
    private static final long SPEAK_TIMEOUT_BASE_MS = 8000;
    private static final long SPEAK_TIMEOUT_MS_PER_CHAR = 150;
    private static final String TAG = "AllInOneTTS";
    private final Context appContext;
    private final ConcurrentHashMap<String, Client> clients;
    private final AtomicLong counter;
    private final Handler handler;
    private volatile boolean idleCheckScheduled;
    private final ConcurrentHashMap<String, Pending> pending;
    private final ConcurrentHashMap<String, Boolean> started;
    private volatile boolean stopRequested;
    private final ConcurrentHashMap<String, Boolean> utteranceOk;

    public ExternalEngineBackend(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appContext = context.getApplicationContext();
        this.clients = new ConcurrentHashMap<>();
        this.pending = new ConcurrentHashMap<>();
        this.started = new ConcurrentHashMap<>();
        this.utteranceOk = new ConcurrentHashMap<>();
        this.counter = new AtomicLong(0L);
        this.handler = new Handler(Looper.getMainLooper());
    }

    @Override // aio.tts.VoiceBackend
    public String resolveVoiceName(String str, String str2) {
        return super.resolveVoiceName(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExternalEngineBackend.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006)"}, d2 = {"Laio/tts/ExternalEngineBackend$Client;", "", "engine", "Laio/tts/ExternalEngines$Engine;", "<init>", "(Laio/tts/ExternalEngines$Engine;)V", "getEngine", "()Laio/tts/ExternalEngines$Engine;", "tts", "Landroid/speech/tts/TextToSpeech;", "getTts", "()Landroid/speech/tts/TextToSpeech;", "setTts", "(Landroid/speech/tts/TextToSpeech;)V", "ready", "", "getReady", "()Z", "setReady", "(Z)V", "latch", "Ljava/util/concurrent/CountDownLatch;", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "setLatch", "(Ljava/util/concurrent/CountDownLatch;)V", "connectStartedAt", "", "getConnectStartedAt", "()J", "setConnectStartedAt", "(J)V", "lastUsedAt", "getLastUsedAt", "setLastUsedAt", "lastLocale", "Ljava/util/Locale;", "getLastLocale", "()Ljava/util/Locale;", "setLastLocale", "(Ljava/util/Locale;)V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    static final class Client {
        private volatile long connectStartedAt;
        private final ExternalEngines.Engine engine;
        private volatile Locale lastLocale;
        private volatile long lastUsedAt;
        private volatile CountDownLatch latch;
        private volatile boolean ready;
        private volatile TextToSpeech tts;

        public Client(ExternalEngines.Engine engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            this.engine = engine;
            this.latch = new CountDownLatch(1);
        }

        public final ExternalEngines.Engine getEngine() {
            return this.engine;
        }

        public final TextToSpeech getTts() {
            return this.tts;
        }

        public final void setTts(TextToSpeech textToSpeech) {
            this.tts = textToSpeech;
        }

        public final boolean getReady() {
            return this.ready;
        }

        public final void setReady(boolean z) {
            this.ready = z;
        }

        public final CountDownLatch getLatch() {
            return this.latch;
        }

        public final void setLatch(CountDownLatch countDownLatch) {
            Intrinsics.checkNotNullParameter(countDownLatch, "<set-?>");
            this.latch = countDownLatch;
        }

        public final long getConnectStartedAt() {
            return this.connectStartedAt;
        }

        public final void setConnectStartedAt(long j) {
            this.connectStartedAt = j;
        }

        public final long getLastUsedAt() {
            return this.lastUsedAt;
        }

        public final void setLastUsedAt(long j) {
            this.lastUsedAt = j;
        }

        public final Locale getLastLocale() {
            return this.lastLocale;
        }

        public final void setLastLocale(Locale locale) {
            this.lastLocale = locale;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExternalEngineBackend.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Laio/tts/ExternalEngineBackend$Pending;", "", "latch", "Ljava/util/concurrent/CountDownLatch;", "client", "Laio/tts/ExternalEngineBackend$Client;", "<init>", "(Ljava/util/concurrent/CountDownLatch;Laio/tts/ExternalEngineBackend$Client;)V", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "getClient", "()Laio/tts/ExternalEngineBackend$Client;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    static final class Pending {
        private final Client client;
        private final CountDownLatch latch;

        public Pending(CountDownLatch latch, Client client) {
            Intrinsics.checkNotNullParameter(latch, "latch");
            Intrinsics.checkNotNullParameter(client, "client");
            this.latch = latch;
            this.client = client;
        }

        public final Client getClient() {
            return this.client;
        }

        public final CountDownLatch getLatch() {
            return this.latch;
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

    @Override // aio.tts.VoiceBackend
    public void speak(String text, String lang, SynthesisCallback callback, int callerRate, int callerPitch, String appPackage) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            callback.done();
        } catch (Throwable unused) {
        }
    }

    @Override // aio.tts.VoiceBackend
    public void stop() {
        this.stopRequested = true;
        if (this.pending.isEmpty()) {
            return;
        }
        Collection<Pending> collectionValues = this.pending.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        Collection<Pending> collection = collectionValues;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((Pending) it.next()).getClient());
        }
        Set set = CollectionsKt.toSet(arrayList);
        Collection<Pending> collectionValues2 = this.pending.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues2, "<get-values>(...)");
        Iterator<T> it2 = collectionValues2.iterator();
        while (it2.hasNext()) {
            ((Pending) it2.next()).getLatch().countDown();
        }
        Iterator it3 = set.iterator();
        while (it3.hasNext()) {
            try {
                TextToSpeech tts = ((Client) it3.next()).getTts();
                if (tts != null) {
                    tts.stop();
                }
            } catch (Throwable unused) {
            }
        }
    }

    private final synchronized void connect(final Client client) {
        closeClient(client);
        final ExternalEngines.Engine engine = client.getEngine();
        client.setConnectStartedAt(SystemClock.elapsedRealtime());
        client.setReady(false);
        client.setLastLocale(null);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        client.setLatch(countDownLatch);
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        TextToSpeech textToSpeech = new TextToSpeech(this.appContext, new TextToSpeech.OnInitListener() { // from class: aio.tts.ExternalEngineBackend$$ExternalSyntheticLambda0
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                ExternalEngineBackend.connect$lambda$2(client, jElapsedRealtime, engine, countDownLatch, i);
            }
        }, engine.getPkg());
        try {
            textToSpeech.setAudioAttributes(new AudioAttributes.Builder().setUsage(11).setContentType(1).build());
        } catch (Throwable th) {
            Log.e(TAG, "ExternalEngineBackend: setAudioAttributes failed", th);
        }
        textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: aio.tts.ExternalEngineBackend.connect.1
            @Override // android.speech.tts.UtteranceProgressListener
            public void onStart(String utteranceId) {
                if (utteranceId != null) {
                    ExternalEngineBackend.this.started.put(utteranceId, true);
                }
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onDone(String utteranceId) {
                CountDownLatch latch;
                if (utteranceId == null) {
                    return;
                }
                ExternalEngineBackend.this.utteranceOk.put(utteranceId, true);
                ExternalEngineBackend.this.started.remove(utteranceId);
                Pending pending = (Pending) ExternalEngineBackend.this.pending.remove(utteranceId);
                if (pending == null || (latch = pending.getLatch()) == null) {
                    return;
                }
                latch.countDown();
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onError(String utteranceId) {
                CountDownLatch latch;
                if (utteranceId == null) {
                    return;
                }
                ExternalEngineBackend.this.utteranceOk.put(utteranceId, false);
                ExternalEngineBackend.this.started.remove(utteranceId);
                Pending pending = (Pending) ExternalEngineBackend.this.pending.remove(utteranceId);
                if (pending == null || (latch = pending.getLatch()) == null) {
                    return;
                }
                latch.countDown();
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onError(String utteranceId, int errorCode) {
                onError(utteranceId);
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onStop(String utteranceId, boolean interrupted) {
                CountDownLatch latch;
                if (utteranceId == null) {
                    return;
                }
                ExternalEngineBackend.this.started.remove(utteranceId);
                Pending pending = (Pending) ExternalEngineBackend.this.pending.remove(utteranceId);
                if (pending == null || (latch = pending.getLatch()) == null) {
                    return;
                }
                latch.countDown();
            }
        });
        client.setTts(textToSpeech);
        scheduleIdleCheck();
    }

    static final void connect$lambda$2(Client client, long j, ExternalEngines.Engine engine, CountDownLatch countDownLatch, int i) {
        client.setReady(i == 0);
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        if (client.getReady()) {
            DiagnosticLog.INSTANCE.log("External", engine.getLabel() + " (" + engine.getPkg() + ") connected in " + jElapsedRealtime + "ms");
        } else {
            Log.e(TAG, "ExternalEngineBackend: TextToSpeech init FAILED for " + engine.getPkg() + ", status=" + i);
            DiagnosticLog.INSTANCE.log("External", engine.getLabel() + " (" + engine.getPkg() + ") could not be started, status=" + i + " after " + jElapsedRealtime + "ms");
        }
        countDownLatch.countDown();
    }

    private final void closeClient(Client client) {
        TextToSpeech tts = client.getTts();
        client.setTts(null);
        client.setReady(false);
        client.setLastLocale(null);
        if (tts != null) {
            try {
                Integer.valueOf(tts.stop());
            } catch (Throwable unused) {
                Unit unit = Unit.INSTANCE;
            }
            try {
                tts.shutdown();
            } catch (Throwable unused2) {
            }
        }
    }

    private final boolean ensureReady(Client client) {
        if (client.getReady() && client.getTts() != null) {
            return true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = (client.getTts() == null || client.getReady() || client.getLatch().getCount() != 0) ? false : true;
        if (client.getTts() == null || (z && jElapsedRealtime - client.getConnectStartedAt() >= RECONNECT_COOLDOWN_MS)) {
            connect(client);
        }
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() + INIT_TIMEOUT_MS;
        while (!client.getReady() && SystemClock.elapsedRealtime() < jElapsedRealtime2 && !this.stopRequested) {
            try {
                if (client.getLatch().await(50L, TimeUnit.MILLISECONDS)) {
                    break;
                }
            } catch (InterruptedException unused) {
            }
        }
        return client.getReady() && client.getTts() != null;
    }

    private final void scheduleIdleCheck() {
        if (this.idleCheckScheduled) {
            return;
        }
        this.idleCheckScheduled = true;
        this.handler.postDelayed(new Runnable() { // from class: aio.tts.ExternalEngineBackend$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ExternalEngineBackend.scheduleIdleCheck$lambda$4(this.f$0);
            }
        }, IDLE_CHECK_MS);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0088 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final void scheduleIdleCheck$lambda$4(aio.tts.ExternalEngineBackend r7) {
        /*
            r0 = 0
            r7.idleCheckScheduled = r0
            java.util.concurrent.ConcurrentHashMap<java.lang.String, aio.tts.ExternalEngineBackend$Client> r1 = r7.clients
            java.util.Collection r1 = r1.values()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L8a
            java.lang.Object r2 = r1.next()
            java.lang.String r3 = "next(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            aio.tts.ExternalEngineBackend$Client r2 = (aio.tts.ExternalEngineBackend.Client) r2
            android.speech.tts.TextToSpeech r3 = r2.getTts()
            if (r3 == 0) goto Ld
            java.util.concurrent.ConcurrentHashMap<java.lang.String, aio.tts.ExternalEngineBackend$Pending> r3 = r7.pending
            java.util.Collection r3 = r3.values()
            java.lang.String r4 = "<get-values>(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            r4 = r3
            java.util.Collection r4 = (java.util.Collection) r4
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto L3b
            goto L52
        L3b:
            java.util.Iterator r3 = r3.iterator()
        L3f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L52
            java.lang.Object r4 = r3.next()
            aio.tts.ExternalEngineBackend$Pending r4 = (aio.tts.ExternalEngineBackend.Pending) r4
            aio.tts.ExternalEngineBackend$Client r4 = r4.getClient()
            if (r4 != r2) goto L3f
            goto L88
        L52:
            long r3 = android.os.SystemClock.elapsedRealtime()
            long r5 = r2.getLastUsedAt()
            long r3 = r3 - r5
            r5 = 120000(0x1d4c0, double:5.9288E-319)
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 < 0) goto L88
            aio.tts.DiagnosticLog r3 = aio.tts.DiagnosticLog.INSTANCE
            aio.tts.ExternalEngines$Engine r4 = r2.getEngine()
            java.lang.String r4 = r4.getLabel()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.StringBuilder r4 = r5.append(r4)
            java.lang.String r5 = " released after 120 s without use"
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = "External"
            r3.log(r5, r4)
            r7.closeClient(r2)
            goto Ld
        L88:
            r0 = 1
            goto Ld
        L8a:
            if (r0 == 0) goto L8f
            r7.scheduleIdleCheck()
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.ExternalEngineBackend.scheduleIdleCheck$lambda$4(aio.tts.ExternalEngineBackend):void");
    }

    public final boolean speakVoice(String voiceName, String text, String lang, SynthesisCallback callback, int callerRate, int callerPitch) throws InterruptedException {
        ExternalEngines.Engine engineEngineFor;
        String str;
        int iStart;
        boolean zAwait;
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ExternalEngines.Entry entryEntryFor = ExternalEngines.INSTANCE.entryFor(voiceName);
        if (entryEntryFor == null || (engineEngineFor = ExternalEngines.INSTANCE.engineFor(voiceName)) == null) {
            return false;
        }
        String str2 = text;
        if (StringsKt.isBlank(str2) || !WatchdogKt.hasSpeakableChars(text)) {
            DetailedLog.INSTANCE.log("Speak", voiceName + "(external) SKIPPED (nothing to speak) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
            try {
                callback.done();
                return true;
            } catch (Throwable unused) {
                return true;
            }
        }
        ConcurrentHashMap<String, Client> concurrentHashMap = this.clients;
        String key = engineEngineFor.getKey();
        Client client = concurrentHashMap.get(key);
        if (client == null) {
            Client client2 = new Client(engineEngineFor);
            Client clientPutIfAbsent = concurrentHashMap.putIfAbsent(key, client2);
            client = clientPutIfAbsent == null ? client2 : clientPutIfAbsent;
        }
        Client client3 = client;
        client3.setLastUsedAt(SystemClock.elapsedRealtime());
        long jNanoTime = System.nanoTime();
        Intrinsics.checkNotNull(client3);
        if (!ensureReady(client3)) {
            if (this.stopRequested) {
                return true;
            }
            DiagnosticLog.INSTANCE.log("Speak", "FAILED (" + engineEngineFor.getLabel() + " not ready) voice=" + voiceName + " lang=" + lang + " text=" + LogText.INSTANCE.of(text));
            ExternalEngines.INSTANCE.markFailed(voiceName, true);
            return false;
        }
        TextToSpeech tts = client3.getTts();
        if (tts == null) {
            return false;
        }
        if (Intrinsics.areEqual(client3.getLastLocale(), entryEntryFor.getLocale())) {
            str = " text=";
        } else {
            int language = tts.setLanguage(entryEntryFor.getLocale());
            if (language < 0) {
                str = " text=";
                language = tts.setLanguage(new Locale(entryEntryFor.getLocale().getLanguage()));
            } else {
                str = " text=";
            }
            if (language < 0) {
                DiagnosticLog.INSTANCE.log("Speak", "FAILED (" + engineEngineFor.getLabel() + " does not offer " + entryEntryFor.getLocale() + ", result=" + language + ") voice=" + voiceName + " lang=" + lang);
                ExternalEngines.INSTANCE.markFailed(voiceName, false);
                return false;
            }
            client3.setLastLocale(entryEntryFor.getLocale());
        }
        float fCoerceIn = RangesKt.coerceIn((Prefs.INSTANCE.rateFor(voiceName) * callerRate) / 100.0f, 1.0f, 2400.0f);
        float fCoerceIn2 = RangesKt.coerceIn((Prefs.INSTANCE.pitchFor(voiceName) * callerPitch) / 100.0f, 1.0f, 1680.0f);
        tts.setSpeechRate(fCoerceIn / 100.0f);
        tts.setPitch(fCoerceIn2 / 100.0f);
        DetailedLog.INSTANCE.log("Speak", "voice=" + voiceName + "(external " + engineEngineFor.getPkg() + ") lang=" + lang + " callerRate=" + callerRate + " callerPitch=" + callerPitch + " -> ratePercent=" + fCoerceIn + " pitchPercent=" + fCoerceIn2 + " prep=" + ((System.nanoTime() - jNanoTime) / 1000000) + "ms");
        try {
            iStart = callback.start(24000, 2, 1);
        } catch (Throwable unused2) {
            iStart = 0;
        }
        if (iStart == -2) {
            DetailedLog.INSTANCE.log("Speak", voiceName + "(external) STOPPED before start (framework item already stopped)");
            return true;
        }
        String str3 = "ext_" + this.counter.incrementAndGet();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.pending.put(str3, new Pending(countDownLatch, client3));
        if (this.stopRequested) {
            this.pending.remove(str3);
            return true;
        }
        Bundle bundle = new Bundle();
        int iSpeak = tts.speak(str2, 1, bundle, str3);
        int i = 0;
        while (iSpeak != 0 && i < 3) {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException unused3) {
            }
            if (this.stopRequested) {
                this.pending.remove(str3);
                return true;
            }
            i++;
            iSpeak = tts.speak(str2, 1, bundle, str3);
        }
        if (iSpeak == 0 && this.stopRequested) {
            try {
                tts.stop();
            } catch (Throwable unused4) {
            }
            this.pending.remove(str3);
            return true;
        }
        if (iSpeak != 0) {
            this.pending.remove(str3);
            DiagnosticLog.INSTANCE.log("Speak", "FAILED (" + engineEngineFor.getLabel() + " speak() call failed after " + i + " retries) voice=" + voiceName + " lang=" + lang + str + LogText.INSTANCE.of(text));
            try {
                callback.error(-3);
            } catch (Throwable unused5) {
            }
            closeClient(client3);
            ExternalEngines.INSTANCE.markFailed(voiceName, true);
            return true;
        }
        String str4 = str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long length = (text.length() * 150) + SPEAK_TIMEOUT_BASE_MS;
        try {
            zAwait = countDownLatch.await(length, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused6) {
            Thread.currentThread().interrupt();
            zAwait = false;
        }
        DetailedLog.INSTANCE.log("Speak", voiceName + "(external) speak() settled after " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms (completed=" + zAwait + ", budget=" + length + "ms) text=" + LogText.INSTANCE.of(text));
        client3.setLastUsedAt(SystemClock.elapsedRealtime());
        if (this.stopRequested) {
            this.pending.remove(str3);
            this.started.remove(str3);
            return true;
        }
        if (!zAwait) {
            boolean zAreEqual = Intrinsics.areEqual((Object) this.started.remove(str3), (Object) true);
            this.pending.remove(str3);
            try {
                tts.stop();
            } catch (Throwable unused7) {
            }
            DiagnosticLog.INSTANCE.log("Speak", "FAILED (" + engineEngineFor.getLabel() + " timed out, hadRealPlayback=" + zAreEqual + ") voice=" + voiceName + " lang=" + lang + str4 + LogText.INSTANCE.of(text));
            try {
                if (zAreEqual) {
                    callback.done();
                } else {
                    callback.error(-3);
                }
            } catch (Throwable unused8) {
            }
            if (zAreEqual) {
                return true;
            }
            closeClient(client3);
            ExternalEngines.INSTANCE.markFailed(voiceName, true);
            return true;
        }
        Boolean boolRemove = this.utteranceOk.remove(str3);
        boolean zBooleanValue = boolRemove != null ? boolRemove.booleanValue() : true;
        this.started.remove(str3);
        if (zBooleanValue) {
            for (long j = 0; j < 150 && tts.isSpeaking(); j += GRACE_SETTLE_POLL_MS) {
                try {
                    Thread.sleep(GRACE_SETTLE_POLL_MS);
                } catch (InterruptedException unused9) {
                }
            }
            ExternalEngines.INSTANCE.clearFailed(voiceName);
        }
        try {
            if (zBooleanValue) {
                callback.done();
            } else {
                callback.error(-3);
            }
            return true;
        } catch (Throwable unused10) {
            return true;
        }
    }
}
