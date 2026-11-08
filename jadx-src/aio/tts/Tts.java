package aio.tts;

import aio.tts.Lang;
import aio.tts.RoutingVoiceBackend;
import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.speech.tts.SynthesisCallback;
import android.speech.tts.SynthesisRequest;
import android.speech.tts.TextToSpeechService;
import android.speech.tts.Voice;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: Tts.kt */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 C2\u00020\u0001:\u0003CDEB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\b\u0010\u0010\u001a\u00020\u0007H\u0016J&\u0010\u0011\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0014J\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u0016H\u0014¢\u0006\u0002\u0010\u0017J&\u0010\u0018\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0014J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0012\u0010\u001c\u001a\u00020\u00122\b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u001e\u001a\u00020\u00122\b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u001f\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\nH\u0002J\b\u0010%\u001a\u00020\u0007H\u0014J\u001c\u0010&\u001a\u00020\u00072\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0010\u0010/\u001a\u00020\n2\u0006\u0010'\u001a\u00020(H\u0002J\u0018\u00100\u001a\u00020\u00072\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0002J2\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u0010'\u001a\u00020(2\b\u00107\u001a\u0004\u0018\u00010\n2\u0006\u00108\u001a\u000209H\u0002J\u0010\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\fH\u0002J2\u0010<\u001a\b\u0012\u0004\u0012\u0002040\t2\u0006\u0010=\u001a\u00020\n2\b\u00107\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010>\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\tH\u0002J\u001e\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010@2\u0006\u0010=\u001a\u00020\nH\u0002J&\u0010A\u001a\b\u0012\u0004\u0012\u0002040\t2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002040\t2\b\u00107\u001a\u0004\u0018\u00010\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n0.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000¨\u0006F"}, d2 = {"Laio/tts/Tts;", "Landroid/speech/tts/TextToSpeechService;", "<init>", "()V", "voice", "Laio/tts/VoiceBackend;", "onDestroy", "", "supported", "", "", "ABSOLUTE_BACKGROUND_CLASSIFY_TIMEOUT_MS", "", "localeFor", "Ljava/util/Locale;", "lang", "onCreate", "onIsLanguageAvailable", "", "country", "variant", "onGetLanguage", "", "()[Ljava/lang/String;", "onLoadLanguage", "onGetVoices", "", "Landroid/speech/tts/Voice;", "onIsValidVoiceName", "voiceName", "onLoadVoice", "onGetDefaultVoiceNameFor", "activeRunDesc", "activeRunStartMs", "stopAtMs", "logStop", NotificationCompat.CATEGORY_MESSAGE, "onStop", "onSynthesizeText", "request", "Landroid/speech/tts/SynthesisRequest;", "callback", "Landroid/speech/tts/SynthesisCallback;", "lastReader", "lastReqKey", "readerCache", "Ljava/util/concurrent/ConcurrentHashMap;", "readerOf", "synthesize", "ENGINE_SWITCH_GAP_MS", "speakRun", "run", "Laio/tts/Lang$TextRun;", "chained", "Laio/tts/Tts$ChainedCallback;", "appPackage", "handoff", "Laio/tts/Tts$Handoff;", "pauseInterruptibly", "totalMs", "buildRuns", "text", "precomputedRawRuns", "firstSentenceSplit", "Lkotlin/Pair;", "mergeByResolvedVoice", "runs", "Companion", "Handoff", "ChainedCallback", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Tts extends TextToSpeechService {
    private static volatile int serviceCreations;
    private volatile long activeRunStartMs;
    private volatile long stopAtMs;
    private VoiceBackend voice;
    private final List<String> supported = CollectionsKt.listOf((Object[]) new String[]{"hi", "mr", "ta", "te", "gu", "ml", "kn", "pa", "bn", "en"});
    private final long ABSOLUTE_BACKGROUND_CLASSIFY_TIMEOUT_MS = ExternalEngines.FAILED_COOLDOWN_MS;
    private volatile String activeRunDesc = PunctuationReader.NONE;
    private String lastReader = "";
    private String lastReqKey = "";
    private final ConcurrentHashMap<Integer, String> readerCache = new ConcurrentHashMap<>();
    private final long ENGINE_SWITCH_GAP_MS = 150;

    @Override // android.speech.tts.TextToSpeechService
    protected int onIsLanguageAvailable(String lang, String country, String variant) {
        return 0;
    }

    @Override // android.speech.tts.TextToSpeechService
    protected int onLoadLanguage(String lang, String country, String variant) {
        return 0;
    }

    @Override // android.speech.tts.TextToSpeechService, android.app.Service
    public void onDestroy() {
        try {
            VoiceBackend voiceBackend = this.voice;
            if (voiceBackend == null) {
                Intrinsics.throwUninitializedPropertyAccessException("voice");
                voiceBackend = null;
            }
            voiceBackend.stop();
        } catch (Throwable unused) {
        }
        KeepRunning.INSTANCE.onServiceDestroyed(this);
        DiagnosticLog.INSTANCE.log("Life", "speech service destroyed, backend kept for the next client");
        DetailedLog.INSTANCE.log("Life", "service destroyed, backend kept");
        super.onDestroy();
    }

    private final Locale localeFor(String lang) {
        int iHashCode = lang.hashCode();
        if (iHashCode != 3148) {
            if (iHashCode != 3310) {
                if (iHashCode != 3329) {
                    if (iHashCode != 3427) {
                        if (iHashCode != 3487) {
                            if (iHashCode != 3493) {
                                if (iHashCode != 3569) {
                                    if (iHashCode != 3693) {
                                        if (iHashCode == 3697 && lang.equals("te")) {
                                            return new Locale("te", "IN");
                                        }
                                    } else if (lang.equals("ta")) {
                                        return new Locale("ta", "IN");
                                    }
                                } else if (lang.equals("pa")) {
                                    return new Locale("pa", "IN");
                                }
                            } else if (lang.equals("mr")) {
                                return new Locale("mr", "IN");
                            }
                        } else if (lang.equals("ml")) {
                            return new Locale("ml", "IN");
                        }
                    } else if (lang.equals("kn")) {
                        return new Locale("kn", "IN");
                    }
                } else if (lang.equals("hi")) {
                    return new Locale("hi", "IN");
                }
            } else if (lang.equals("gu")) {
                return new Locale("gu", "IN");
            }
        } else if (lang.equals("bn")) {
            return new Locale("bn", "IN");
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        return US;
    }

    @Override // android.speech.tts.TextToSpeechService, android.app.Service
    public void onCreate() {
        super.onCreate();
        boolean zExists = RoutingVoiceBackend.INSTANCE.exists();
        RoutingVoiceBackend.Companion companion = RoutingVoiceBackend.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.voice = companion.shared(applicationContext);
        DiagnosticLog diagnosticLog = DiagnosticLog.INSTANCE;
        serviceCreations++;
        diagnosticLog.log("Life", "speech service created (n=" + serviceCreations + "), backend " + (zExists ? "reused, nothing initialised again" : "new"));
        DetailedLog.INSTANCE.log("Life", "service created, pid=" + Process.myPid() + ", backend " + (zExists ? "reused" : "new"));
        KeepRunning.INSTANCE.onServiceCreated(this);
        final Context applicationContext2 = getApplicationContext();
        Thread thread = new Thread(new Runnable() { // from class: aio.tts.Tts$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Tts.onCreate$lambda$0(applicationContext2);
            }
        });
        thread.setName("lid-preload");
        thread.setDaemon(true);
        thread.start();
    }

    static final void onCreate$lambda$0(Context context) {
        SharedScriptLid sharedScriptLid = SharedScriptLid.INSTANCE;
        Intrinsics.checkNotNull(context);
        sharedScriptLid.preload(context);
    }

    @Override // android.speech.tts.TextToSpeechService
    protected String[] onGetLanguage() {
        return new String[]{"hin", "IND", ""};
    }

    @Override // android.speech.tts.TextToSpeechService
    public List<Voice> onGetVoices() {
        List<String> list = this.supported;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (String str : list) {
            arrayList.add(new Voice("aiotts-" + str, localeFor(str), 300, 300, false, new LinkedHashSet()));
        }
        return CollectionsKt.toMutableList((Collection) arrayList);
    }

    @Override // android.speech.tts.TextToSpeechService
    public int onIsValidVoiceName(String voiceName) {
        List<String> list = this.supported;
        if ((list instanceof Collection) && list.isEmpty()) {
            return -1;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual("aiotts-" + ((String) it.next()), voiceName)) {
                return 0;
            }
        }
        return -1;
    }

    @Override // android.speech.tts.TextToSpeechService
    public int onLoadVoice(String voiceName) {
        List<String> list = this.supported;
        if ((list instanceof Collection) && list.isEmpty()) {
            return -1;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual("aiotts-" + ((String) it.next()), voiceName)) {
                return 0;
            }
        }
        return -1;
    }

    @Override // android.speech.tts.TextToSpeechService
    public String onGetDefaultVoiceNameFor(String lang, String country, String variant) {
        return "aiotts-hi";
    }

    private final void logStop(String msg) {
        DiagnosticLog.INSTANCE.log("Stop", msg);
        DetailedLog.INSTANCE.log("Stop", msg);
    }

    @Override // android.speech.tts.TextToSpeechService
    protected void onStop() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.stopAtMs = jCurrentTimeMillis;
        String str = this.activeRunDesc;
        long j = Intrinsics.areEqual(str, PunctuationReader.NONE) ? 0L : jCurrentTimeMillis - this.activeRunStartMs;
        long jSinceFailMs = StopClock.INSTANCE.sinceFailMs();
        logStop("onStop received; active run=" + str + " ranMs=" + j + " thread=" + Thread.currentThread().getName() + ((0 > jSinceFailMs || jSinceFailMs >= 301) ? "" : " afterFailMs=" + jSinceFailMs));
        VoiceBackend voiceBackend = this.voice;
        if (voiceBackend == null) {
            Intrinsics.throwUninitializedPropertyAccessException("voice");
            voiceBackend = null;
        }
        voiceBackend.stop();
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jCurrentTimeMillis2 >= 20) {
            logStop("voice.stop() returned after " + jCurrentTimeMillis2 + "ms -- SLOW");
        }
    }

    @Override // android.speech.tts.TextToSpeechService
    protected void onSynthesizeText(SynthesisRequest request, SynthesisCallback callback) {
        if (request == null || callback == null) {
            return;
        }
        StallWatch.INSTANCE.begin();
        ProgressCallback progressCallback = new ProgressCallback(callback);
        try {
            synthesize(request, progressCallback);
        } catch (Throwable th) {
            try {
                if (th instanceof OutOfMemoryError) {
                    throw th;
                }
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                StackTraceElement[] stackTrace = th.getStackTrace();
                Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
                DiagnosticLog.INSTANCE.log("Crash", "caught in onSynthesizeText, this message skipped: " + th + " at " + CollectionsKt.joinToString$default(ArraysKt.take(stackTrace, 12), " <- ", null, null, 0, null, new Function1() { // from class: aio.tts.Tts$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Tts.onSynthesizeText$lambda$5((StackTraceElement) obj);
                    }
                }, 30, null));
                DetailedLog.INSTANCE.log("Crash", "caught in onSynthesizeText, this message skipped: " + th);
                StackTraceElement[] stackTrace2 = th.getStackTrace();
                Intrinsics.checkNotNullExpressionValue(stackTrace2, "getStackTrace(...)");
                Iterator it = ArraysKt.take(stackTrace2, 40).iterator();
                while (it.hasNext()) {
                    DetailedLog.INSTANCE.log("Crash", "    " + ((StackTraceElement) it.next()));
                }
                try {
                    progressCallback.error(-3);
                } catch (Throwable unused) {
                }
                try {
                    if (!progressCallback.hasFinished()) {
                        progressCallback.done();
                    }
                } catch (Throwable unused2) {
                }
            } finally {
                StallWatch.INSTANCE.end();
            }
        }
    }

    static final CharSequence onSynthesizeText$lambda$5(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
        return StringsKt.substringAfterLast$default(className, '.', (String) null, 2, (Object) null) + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
    }

    private final String readerOf(SynthesisRequest request) {
        String strJoinToString$default;
        ConcurrentHashMap<Integer, String> concurrentHashMap = this.readerCache;
        Integer numValueOf = Integer.valueOf(request.getCallerUid());
        String str = concurrentHashMap.get(numValueOf);
        if (str == null) {
            try {
                String[] packagesForUid = getPackageManager().getPackagesForUid(request.getCallerUid());
                if (packagesForUid == null || (strJoinToString$default = ArraysKt.joinToString$default(packagesForUid, "+", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null)) == null) {
                    strJoinToString$default = "uid" + request.getCallerUid();
                }
            } catch (Throwable unused) {
                strJoinToString$default = "uid" + request.getCallerUid();
            }
            String strPutIfAbsent = concurrentHashMap.putIfAbsent(numValueOf, strJoinToString$default);
            str = strPutIfAbsent == null ? strJoinToString$default : strPutIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(str, "getOrPut(...)");
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x047c, code lost:
    
        r8.cancel(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0480, code lost:
    
        r27 = 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x04d6 A[Catch: Exception -> 0x097a, TryCatch #7 {Exception -> 0x097a, blocks: (B:118:0x04ba, B:119:0x04cd, B:121:0x04d6, B:122:0x0516, B:123:0x051a, B:125:0x0520, B:127:0x052a, B:128:0x052e, B:140:0x0554, B:144:0x0566, B:146:0x056c, B:149:0x0573, B:150:0x0579, B:132:0x0538, B:134:0x0543, B:135:0x0547, B:141:0x0559, B:161:0x059e), top: B:318:0x0398 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0520 A[Catch: Exception -> 0x097a, TryCatch #7 {Exception -> 0x097a, blocks: (B:118:0x04ba, B:119:0x04cd, B:121:0x04d6, B:122:0x0516, B:123:0x051a, B:125:0x0520, B:127:0x052a, B:128:0x052e, B:140:0x0554, B:144:0x0566, B:146:0x056c, B:149:0x0573, B:150:0x0579, B:132:0x0538, B:134:0x0543, B:135:0x0547, B:141:0x0559, B:161:0x059e), top: B:318:0x0398 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0566 A[Catch: Exception -> 0x097a, TryCatch #7 {Exception -> 0x097a, blocks: (B:118:0x04ba, B:119:0x04cd, B:121:0x04d6, B:122:0x0516, B:123:0x051a, B:125:0x0520, B:127:0x052a, B:128:0x052e, B:140:0x0554, B:144:0x0566, B:146:0x056c, B:149:0x0573, B:150:0x0579, B:132:0x0538, B:134:0x0543, B:135:0x0547, B:141:0x0559, B:161:0x059e), top: B:318:0x0398 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x078c  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x05be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [android.speech.tts.SynthesisCallback] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v32, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r13v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r1v2, types: [aio.tts.Tts] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21, types: [android.speech.tts.SynthesisRequest] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void synthesize(android.speech.tts.SynthesisRequest r47, android.speech.tts.SynthesisCallback r48) throws java.util.concurrent.TimeoutException {
        /*
            Method dump skipped, instructions count: 2449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.Tts.synthesize(android.speech.tts.SynthesisRequest, android.speech.tts.SynthesisCallback):void");
    }

    static final CharSequence synthesize$lambda$8(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return LoggingKt.readerLabel(it);
    }

    static final CharSequence synthesize$lambda$9(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return LoggingKt.readerLabel(it);
    }

    private static final long synthesize$ms(long j, long j2) {
        return (j2 - j) / 1000000;
    }

    static final CharSequence synthesize$lambda$15(Lang.TextRun it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getText();
    }

    static final CharSequence synthesize$lambda$16(Lang.TextRun it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return "[" + it.getLang() + "] " + LogText.INSTANCE.of(it.getText());
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void synthesize$logPerf(java.lang.String r9, java.util.List<aio.tts.Lang.TextRun> r10, long r11, long r13, long r15, long r17, long r19, aio.tts.Tts.ChainedCallback r21, boolean r22) {
        /*
            r0 = r19
            long r2 = java.lang.System.nanoTime()
            if (r21 == 0) goto L2e
            long r4 = r21.getFirstStartAtNs()
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 <= 0) goto L2a
            long r4 = synthesize$ms(r0, r4)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.StringBuilder r4 = r6.append(r4)
            java.lang.String r5 = "ms"
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r4 = r4.toString()
            goto L2c
        L2a:
            java.lang.String r4 = "n/a"
        L2c:
            if (r4 != 0) goto L30
        L2e:
            java.lang.String r4 = "n/a(single run)"
        L30:
            aio.tts.DetailedLog r5 = aio.tts.DetailedLog.INSTANCE
            boolean r5 = r5.getActive()
            if (r5 == 0) goto L3b
            java.lang.String r5 = "ON"
            goto L3d
        L3b:
            java.lang.String r5 = "OFF"
        L3d:
            int r9 = r9.length()
            int r10 = r10.size()
            r6 = r17
            long r6 = synthesize$ms(r6, r2)
            long r0 = synthesize$ms(r0, r2)
            aio.tts.LangPerf r2 = aio.tts.LangPerf.INSTANCE
            java.lang.String r2 = r2.summary()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r8 = "detailedLog="
            r3.<init>(r8)
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.String r5 = " chars="
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.StringBuilder r9 = r3.append(r9)
            java.lang.String r3 = " runs="
            java.lang.StringBuilder r9 = r9.append(r3)
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r10 = " prep="
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r11)
            java.lang.String r10 = "ms segment="
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r13)
            java.lang.String r10 = "ms buildRuns="
            java.lang.StringBuilder r9 = r9.append(r10)
            r10 = r15
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r10 = "ms toFirstAudio="
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r4)
            java.lang.String r10 = " speak="
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r6)
            java.lang.String r10 = "ms total="
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r0)
            java.lang.String r10 = "ms stopped="
            java.lang.StringBuilder r9 = r9.append(r10)
            r10 = r22
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r10 = " "
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r2)
            java.lang.String r9 = r9.toString()
            aio.tts.DiagnosticLog r10 = aio.tts.DiagnosticLog.INSTANCE
            java.lang.String r11 = "Perf"
            r10.log(r11, r9)
            aio.tts.DetailedLog r10 = aio.tts.DetailedLog.INSTANCE
            r10.log(r11, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.Tts.synthesize$logPerf(java.lang.String, java.util.List, long, long, long, long, long, aio.tts.Tts$ChainedCallback, boolean):void");
    }

    /* compiled from: Tts.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Laio/tts/Tts$Handoff;", "", "<init>", "()V", "prevGoogle", "", "getPrevGoogle", "()Ljava/lang/Boolean;", "setPrevGoogle", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Handoff {
        private Boolean prevGoogle;

        public final Boolean getPrevGoogle() {
            return this.prevGoogle;
        }

        public final void setPrevGoogle(Boolean bool) {
            this.prevGoogle = bool;
        }
    }

    private final void speakRun(Lang.TextRun run, ChainedCallback chained, SynthesisRequest request, String appPackage, Handoff handoff) throws InterruptedException {
        VoiceBackend voiceBackend;
        long jAwaitPlaybackDrain;
        VoiceBackend voiceBackend2 = this.voice;
        VoiceBackend voiceBackend3 = null;
        if (voiceBackend2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("voice");
            voiceBackend2 = null;
        }
        if (voiceBackend2.getStopRequested()) {
            logStop("run skipped, stop already requested: lang=" + run.getLang());
            return;
        }
        VoiceBackend voiceBackend4 = this.voice;
        if (voiceBackend4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("voice");
            voiceBackend4 = null;
        }
        String strResolveVoiceName = voiceBackend4.resolveVoiceName(run.getLang(), appPackage);
        boolean z = false;
        if (strResolveVoiceName != null && (StringsKt.startsWith$default(strResolveVoiceName, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null) || ExternalEngines.INSTANCE.isExternalVoice(strResolveVoiceName))) {
            z = true;
        }
        Boolean prevGoogle = handoff.getPrevGoogle();
        if (prevGoogle != null && !Intrinsics.areEqual(prevGoogle, Boolean.valueOf(z))) {
            long j = this.ENGINE_SWITCH_GAP_MS;
            if (z) {
                jAwaitPlaybackDrain = chained.awaitPlaybackDrain(j, new Function0() { // from class: aio.tts.Tts$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Boolean.valueOf(Tts.speakRun$lambda$18(this.f$0));
                    }
                });
            } else {
                pauseInterruptibly(j);
                jAwaitPlaybackDrain = this.ENGINE_SWITCH_GAP_MS;
            }
            DetailedLog.INSTANCE.log("Handoff", "engine switch " + (prevGoogle.booleanValue() ? "Google" : "streamed") + " -> " + (z ? "Google" : "streamed") + " (voice=" + strResolveVoiceName + "): waited " + jAwaitPlaybackDrain + "ms before speaking");
        }
        VoiceBackend voiceBackend5 = this.voice;
        if (voiceBackend5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("voice");
            voiceBackend5 = null;
        }
        if (voiceBackend5.getStopRequested()) {
            logStop("run skipped, stop arrived during hand-off wait: lang=" + run.getLang() + " voice=" + strResolveVoiceName);
            return;
        }
        handoff.setPrevGoogle(Boolean.valueOf(z));
        if (StringsKt.isBlank(run.getText())) {
            chained.done();
            return;
        }
        this.activeRunDesc = "lang=" + run.getLang() + " voice=" + strResolveVoiceName + " text=" + StringsKt.take(run.getText(), 40);
        this.activeRunStartMs = System.currentTimeMillis();
        try {
            VoiceBackend voiceBackend6 = this.voice;
            if (voiceBackend6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("voice");
                voiceBackend = null;
            } else {
                voiceBackend = voiceBackend6;
            }
            voiceBackend.speak(run.getText(), run.getLang(), chained, request.getSpeechRate(), request.getPitch(), appPackage);
        } catch (Throwable th) {
            Log.e("AllInOneTTS", "run failed: lang=" + run.getLang() + " voice=" + strResolveVoiceName, th);
            DiagnosticLog.INSTANCE.log("Speak", "FAILED (exception, run skipped) lang=" + run.getLang() + " voice=" + strResolveVoiceName + ": " + th);
            DetailedLog.INSTANCE.log("Speak", "FAILED (exception, run skipped) lang=" + run.getLang() + " voice=" + strResolveVoiceName + ": " + Log.getStackTraceString(th));
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        VoiceBackend voiceBackend7 = this.voice;
        if (voiceBackend7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("voice");
        } else {
            voiceBackend3 = voiceBackend7;
        }
        if (voiceBackend3.getStopRequested() && this.stopAtMs > 0) {
            long j2 = jCurrentTimeMillis - this.stopAtMs;
            logStop("run ended after stop: voice=" + strResolveVoiceName + " lang=" + run.getLang() + " stopToReturn=" + j2 + "ms ranTotal=" + (jCurrentTimeMillis - this.activeRunStartMs) + "ms" + (j2 > 100 ? " -- SLOW TO STOP (kept playing " + j2 + "ms after swipe)" : ""));
        }
        this.activeRunDesc = PunctuationReader.NONE;
    }

    static final boolean speakRun$lambda$18(Tts tts) {
        VoiceBackend voiceBackend = tts.voice;
        if (voiceBackend == null) {
            Intrinsics.throwUninitializedPropertyAccessException("voice");
            voiceBackend = null;
        }
        return voiceBackend.getStopRequested();
    }

    private final void pauseInterruptibly(long totalMs) throws InterruptedException {
        while (totalMs > 0) {
            VoiceBackend voiceBackend = this.voice;
            if (voiceBackend == null) {
                Intrinsics.throwUninitializedPropertyAccessException("voice");
                voiceBackend = null;
            }
            if (voiceBackend.getStopRequested()) {
                return;
            }
            long jMin = Math.min(totalMs, 25L);
            try {
                Thread.sleep(jMin);
                totalMs -= jMin;
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List buildRuns$default(Tts tts, String str, String str2, List list, int i, Object obj) {
        if ((i & 4) != 0) {
            list = null;
        }
        return tts.buildRuns(str, str2, list);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<aio.tts.Lang.TextRun> buildRuns(java.lang.String r11, java.lang.String r12, java.util.List<aio.tts.Lang.TextRun> r13) throws org.json.JSONException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.Tts.buildRuns(java.lang.String, java.lang.String, java.util.List):java.util.List");
    }

    private final Pair<String, String> firstSentenceSplit(String text) {
        int last;
        MatchResult matchResultFind$default = Regex.find$default(new Regex("(?:।|॥|[!?]|(?<!\\d)\\.(?=\\s|$))+\\s*"), text, 0, 2, null);
        if (matchResultFind$default == null || (last = matchResultFind$default.getRange().getLast() + 1) >= text.length()) {
            return null;
        }
        String strSubstring = text.substring(0, last);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSubstring2 = text.substring(last);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        if (StringsKt.isBlank(strSubstring) || StringsKt.isBlank(strSubstring2)) {
            return null;
        }
        return TuplesKt.to(strSubstring, strSubstring2);
    }

    private final List<Lang.TextRun> mergeByResolvedVoice(List<Lang.TextRun> runs, String appPackage) {
        if (runs.size() <= 1) {
            return runs;
        }
        ArrayList arrayList = new ArrayList();
        for (Lang.TextRun textRun : runs) {
            Lang.TextRun textRun2 = (Lang.TextRun) CollectionsKt.lastOrNull((List) arrayList);
            if (textRun2 != null) {
                VoiceBackend voiceBackend = this.voice;
                VoiceBackend voiceBackend2 = null;
                if (voiceBackend == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("voice");
                    voiceBackend = null;
                }
                if (voiceBackend.resolveVoiceName(textRun2.getLang(), appPackage) != null) {
                    VoiceBackend voiceBackend3 = this.voice;
                    if (voiceBackend3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("voice");
                        voiceBackend3 = null;
                    }
                    String strResolveVoiceName = voiceBackend3.resolveVoiceName(textRun2.getLang(), appPackage);
                    VoiceBackend voiceBackend4 = this.voice;
                    if (voiceBackend4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("voice");
                    } else {
                        voiceBackend2 = voiceBackend4;
                    }
                    if (Intrinsics.areEqual(strResolveVoiceName, voiceBackend2.resolveVoiceName(textRun.getLang(), appPackage))) {
                        int size = arrayList.size() - 1;
                        Intrinsics.checkNotNull(textRun2);
                        arrayList.set(size, new Lang.TextRun(textRun2.getText() + textRun.getText(), textRun2.getLang()));
                    }
                }
            }
            arrayList.add(textRun);
        }
        return arrayList;
    }

    /* compiled from: Tts.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000eH\u0016J\"\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J \u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000eH\u0002J\u001c\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060%J\b\u0010+\u001a\u00020\u000eH\u0016J\b\u0010,\u001a\u00020 H\u0016J\u0010\u0010,\u001a\u00020 2\u0006\u0010-\u001a\u00020\u000eH\u0016J\b\u0010.\u001a\u00020\u000eH\u0016J\b\u0010/\u001a\u00020\u0006H\u0016J\b\u00100\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00061"}, d2 = {"Laio/tts/Tts$ChainedCallback;", "Landroid/speech/tts/SynthesisCallback;", "real", "<init>", "(Landroid/speech/tts/SynthesisCallback;)V", "started", "", "firstStartAtNs", "", "getFirstStartAtNs", "()J", "setFirstStartAtNs", "(J)V", "realSampleRate", "", "realAudioFormat", "realChannelCount", "currentRunSampleRate", "currentRunAudioFormat", "currentRunChannelCount", "start", "sampleRateInHz", "audioFormat", "channelCount", "audioAvailable", "buffer", "", "offset", "length", "writeChunked", "playbackEndAtMs", "noteDelivered", "", "bytes", "awaitPlaybackDrain", "gapMs", "stopped", "Lkotlin/Function0;", "sawDone", "getSawDone", "()Z", "setSawDone", "(Z)V", "done", "error", "errorCode", "getMaxBufferSize", "hasStarted", "hasFinished", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class ChainedCallback implements SynthesisCallback {
        private int currentRunAudioFormat;
        private int currentRunChannelCount;
        private int currentRunSampleRate;
        private volatile long firstStartAtNs;
        private volatile long playbackEndAtMs;
        private final SynthesisCallback real;
        private int realAudioFormat;
        private int realChannelCount;
        private int realSampleRate;
        private volatile boolean sawDone;
        private boolean started;

        @Override // android.speech.tts.SynthesisCallback
        public void error() {
        }

        @Override // android.speech.tts.SynthesisCallback
        public void error(int errorCode) {
        }

        public ChainedCallback(SynthesisCallback real) {
            Intrinsics.checkNotNullParameter(real, "real");
            this.real = real;
            this.realChannelCount = 1;
            this.currentRunChannelCount = 1;
        }

        public final long getFirstStartAtNs() {
            return this.firstStartAtNs;
        }

        public final void setFirstStartAtNs(long j) {
            this.firstStartAtNs = j;
        }

        @Override // android.speech.tts.SynthesisCallback
        public int start(int sampleRateInHz, int audioFormat, int channelCount) {
            this.currentRunSampleRate = sampleRateInHz;
            this.currentRunAudioFormat = audioFormat;
            this.currentRunChannelCount = channelCount;
            if (this.started) {
                String str = sampleRateInHz + "/" + audioFormat + "/" + channelCount + "/" + this.realSampleRate;
                if (Intrinsics.areEqual(str, TtsKt.lastSuppressedNote)) {
                    return 0;
                }
                TtsKt.lastSuppressedNote = str;
                DetailedLog detailedLog = DetailedLog.INSTANCE;
                int i = this.realSampleRate;
                detailedLog.log("Speak", "ChainedCallback.start() SUPPRESSED (already started) sampleRateInHz=" + sampleRateInHz + " audioFormat=" + audioFormat + " channelCount=" + channelCount + (sampleRateInHz != i ? " -- MISMATCH vs real " + i + ", will resample" : "") + " (same rates are not logged again until they change)");
                return 0;
            }
            this.started = true;
            this.firstStartAtNs = System.nanoTime();
            this.realSampleRate = sampleRateInHz;
            this.realAudioFormat = audioFormat;
            this.realChannelCount = channelCount;
            String str2 = sampleRateInHz + "/" + audioFormat + "/" + channelCount;
            if (!Intrinsics.areEqual(str2, TtsKt.lastForwardNote)) {
                TtsKt.lastForwardNote = str2;
                DetailedLog.INSTANCE.log("Speak", "ChainedCallback.start() forwarding to real callback (first run) sampleRateInHz=" + sampleRateInHz + " audioFormat=" + audioFormat + " channelCount=" + channelCount + " (same rates are not logged again until they change)");
            }
            return this.real.start(sampleRateInHz, audioFormat, channelCount);
        }

        @Override // android.speech.tts.SynthesisCallback
        public int audioAvailable(byte[] buffer, int offset, int length) {
            if (buffer == null || length <= 0) {
                return this.real.audioAvailable(buffer, offset, length);
            }
            int i = this.currentRunSampleRate;
            int i2 = this.realSampleRate;
            if (i != i2 && i > 0) {
                int i3 = this.currentRunAudioFormat;
                if (i3 == 2 && this.realAudioFormat == 2 && this.currentRunChannelCount == this.realChannelCount) {
                    byte[] bArrResamplePcm16Mono = TtsKt.resamplePcm16Mono(buffer, offset, length, i, i2);
                    return writeChunked(bArrResamplePcm16Mono, 0, bArrResamplePcm16Mono.length);
                }
                Log.e("AllInOneTTS", "ChainedCallback: sample-rate mismatch (" + i + " vs " + i2 + ") but format/channel combination isn't resamplable (audioFormat=" + i3 + "/" + this.realAudioFormat + " channels=" + this.currentRunChannelCount + "/" + this.realChannelCount + ") -- forwarding unresampled");
                return writeChunked(buffer, offset, length);
            }
            return writeChunked(buffer, offset, length);
        }

        private final int writeChunked(byte[] buffer, int offset, int length) {
            int iCoerceAtLeast = RangesKt.coerceAtLeast(this.real.getMaxBufferSize(), 2);
            int i = length + offset;
            while (offset < i) {
                int iMin = Math.min(iCoerceAtLeast, i - offset);
                int iAudioAvailable = this.real.audioAvailable(buffer, offset, iMin);
                if (iAudioAvailable != 0) {
                    return iAudioAvailable;
                }
                noteDelivered(iMin);
                offset += iMin;
            }
            return 0;
        }

        private final void noteDelivered(int bytes) {
            long jCoerceAtLeast = this.realSampleRate * RangesKt.coerceAtLeast(this.realChannelCount, 1) * 2;
            if (jCoerceAtLeast <= 0) {
                return;
            }
            this.playbackEndAtMs = Math.max(SystemClock.elapsedRealtime(), this.playbackEndAtMs) + ((bytes * 1000) / jCoerceAtLeast);
        }

        public final long awaitPlaybackDrain(long gapMs, Function0<Boolean> stopped) throws InterruptedException {
            Intrinsics.checkNotNullParameter(stopped, "stopped");
            long j = this.playbackEndAtMs;
            if (j == 0) {
                return 0L;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = j + gapMs;
            while (!stopped.invoke().booleanValue()) {
                long jElapsedRealtime2 = j2 - SystemClock.elapsedRealtime();
                if (jElapsedRealtime2 <= 0) {
                    break;
                }
                try {
                    Thread.sleep(Math.min(jElapsedRealtime2, 25L));
                } catch (InterruptedException unused) {
                }
            }
            return SystemClock.elapsedRealtime() - jElapsedRealtime;
        }

        public final boolean getSawDone() {
            return this.sawDone;
        }

        public final void setSawDone(boolean z) {
            this.sawDone = z;
        }

        @Override // android.speech.tts.SynthesisCallback
        public int done() {
            this.sawDone = true;
            return 0;
        }

        @Override // android.speech.tts.SynthesisCallback
        public int getMaxBufferSize() {
            return this.real.getMaxBufferSize();
        }

        @Override // android.speech.tts.SynthesisCallback
        public boolean hasStarted() {
            return this.started;
        }

        @Override // android.speech.tts.SynthesisCallback
        public boolean hasFinished() {
            return this.real.hasFinished();
        }
    }
}
