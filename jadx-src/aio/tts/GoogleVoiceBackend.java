package aio.tts;

import android.content.Context;
import android.media.AudioAttributes;
import android.os.Bundle;
import android.speech.tts.SynthesisCallback;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.speech.tts.Voice;
import android.util.Log;
import androidx.core.text.util.LocalePreferences;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: GoogleVoiceBackend.kt */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 32\u00020\u0001:\u00013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u0014J\b\u0010 \u001a\u00020!H\u0002J\b\u0010\"\u001a\u00020!H\u0002J\b\u0010#\u001a\u00020!H\u0002J\u0012\u0010$\u001a\u00020\u000e2\b\b\u0002\u0010\u001f\u001a\u00020\u0014H\u0002J\u001c\u0010%\u001a\u0004\u0018\u00010\b2\u0006\u0010&\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010\bH\u0002J\u001c\u0010(\u001a\u0004\u0018\u00010\b2\u0006\u0010&\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010)\u001a\u00020!H\u0016J\b\u0010*\u001a\u00020\u000eH\u0016J\b\u0010+\u001a\u00020!H\u0016J:\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\b2\u0006\u0010&\u001a\u00020\b2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002012\b\u0010'\u001a\u0004\u0018\u00010\bH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e0\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\b0\u00130\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e0\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n \u001b*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Laio/tts/GoogleVoiceBackend;", "Laio/tts/VoiceBackend;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "catalogToRealVoice", "", "", "Landroid/speech/tts/Voice;", "catalogToLang", "initLatch", "Ljava/util/concurrent/CountDownLatch;", "engineReady", "", "pendingUtterances", "Ljava/util/concurrent/ConcurrentHashMap;", "startedUtterances", "speakCalledAt", "Lkotlin/Pair;", "", "utteranceOk", "stopRequested", "lastReconnectAtMs", "tts", "Landroid/speech/tts/TextToSpeech;", "appContext", "kotlin.jvm.PlatformType", "utteranceCounter", "Ljava/util/concurrent/atomic/AtomicLong;", "reconnectAndWait", "timeoutMs", "connectFreshEngine", "", "retryConnectLater", "registerVoicesOnceReady", "awaitReady", "findVoiceName", "lang", "appPackage", "resolveVoiceName", "beginUtterance", "wasStopped", "stop", "speak", "text", "callback", "Landroid/speech/tts/SynthesisCallback;", "callerRate", "", "callerPitch", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GoogleVoiceBackend implements VoiceBackend {
    private static final long ABSENT_RETRY_COOLDOWN_MS = 60000;
    public static final String ENGINE_PACKAGE = "com.google.android.tts";
    private static final long GRACE_SETTLE_MAX_MS = 150;
    private static final long GRACE_SETTLE_POLL_MS = 20;
    private static final long INIT_TIMEOUT_MS = 8000;
    private static final long RECONNECT_COOLDOWN_MS = 3000;
    private static final long RESOLVE_TIMEOUT_MS = 1500;
    private static final int SPEAK_FAILURE_RETRY_COUNT = 5;
    private static final long SPEAK_FAILURE_RETRY_DELAY_MS = 200;
    private static final long SPEAK_TIMEOUT_BASE_MS = 8000;
    private static final long SPEAK_TIMEOUT_MS_PER_CHAR = 150;
    private final Context appContext;
    private volatile Map<String, String> catalogToLang;
    private volatile Map<String, ? extends Voice> catalogToRealVoice;
    private volatile boolean engineReady;
    private volatile CountDownLatch initLatch;
    private volatile long lastReconnectAtMs;
    private final ConcurrentHashMap<String, CountDownLatch> pendingUtterances;
    private final ConcurrentHashMap<String, Pair<Long, String>> speakCalledAt;
    private final ConcurrentHashMap<String, Boolean> startedUtterances;
    private volatile boolean stopRequested;
    private TextToSpeech tts;
    private final AtomicLong utteranceCounter;
    private final ConcurrentHashMap<String, Boolean> utteranceOk;
    private static final Map<Pair<String, String>, Companion.LocaleTarget> TARGET_LOCALES = MapsKt.mapOf(TuplesKt.to(TuplesKt.to("hi", "IN"), new Companion.LocaleTarget("hi", "Hindi", "India")), TuplesKt.to(TuplesKt.to("en", "IN"), new Companion.LocaleTarget("en", "English", "India")), TuplesKt.to(TuplesKt.to("en", "US"), new Companion.LocaleTarget("en", "English", "US")), TuplesKt.to(TuplesKt.to("mr", "IN"), new Companion.LocaleTarget("mr", "Marathi", "India")), TuplesKt.to(TuplesKt.to("bn", "IN"), new Companion.LocaleTarget("bn", "Bengali", "India")), TuplesKt.to(TuplesKt.to("bn", "BD"), new Companion.LocaleTarget("bn", "Bengali", "Bangladesh")), TuplesKt.to(TuplesKt.to("kn", "IN"), new Companion.LocaleTarget("kn", "Kannada", "India")), TuplesKt.to(TuplesKt.to("ta", "IN"), new Companion.LocaleTarget("ta", "Tamil", "India")), TuplesKt.to(TuplesKt.to("te", "IN"), new Companion.LocaleTarget("te", "Telugu", "India")), TuplesKt.to(TuplesKt.to("gu", "IN"), new Companion.LocaleTarget("gu", "Gujarati", "India")), TuplesKt.to(TuplesKt.to("ml", "IN"), new Companion.LocaleTarget("ml", "Malayalam", "India")), TuplesKt.to(TuplesKt.to("pa", "IN"), new Companion.LocaleTarget("pa", "Punjabi", "India")), TuplesKt.to(TuplesKt.to("ur", "IN"), new Companion.LocaleTarget("ur", "Urdu", "India")), TuplesKt.to(TuplesKt.to("ur", "PK"), new Companion.LocaleTarget("ur", "Urdu", "Pakistan")), TuplesKt.to(TuplesKt.to("as", "IN"), new Companion.LocaleTarget("as", "Assamese", "India")), TuplesKt.to(TuplesKt.to("brx", "IN"), new Companion.LocaleTarget("brx", "Bodo", "India")), TuplesKt.to(TuplesKt.to("doi", "IN"), new Companion.LocaleTarget("doi", "Dogri", "India")), TuplesKt.to(TuplesKt.to("ks", "IN"), new Companion.LocaleTarget("ks", "Kashmiri", "India")), TuplesKt.to(TuplesKt.to("kok", "IN"), new Companion.LocaleTarget("kok", "Konkani", "India")), TuplesKt.to(TuplesKt.to("mai", "IN"), new Companion.LocaleTarget("mai", "Maithili", "India")), TuplesKt.to(TuplesKt.to("mni", "IN"), new Companion.LocaleTarget("mni", "Manipuri", "India")), TuplesKt.to(TuplesKt.to("ne", "NP"), new Companion.LocaleTarget("ne", "Nepali", "Nepal")), TuplesKt.to(TuplesKt.to("or", "IN"), new Companion.LocaleTarget("or", "Odia", "India")), TuplesKt.to(TuplesKt.to("sa", "IN"), new Companion.LocaleTarget("sa", "Sanskrit", "India")), TuplesKt.to(TuplesKt.to(LocalePreferences.FirstDayOfWeek.SATURDAY, "IN"), new Companion.LocaleTarget(LocalePreferences.FirstDayOfWeek.SATURDAY, "Santali", "India")), TuplesKt.to(TuplesKt.to("sd", "IN"), new Companion.LocaleTarget("sd", "Sindhi", "India")));

    public GoogleVoiceBackend(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.catalogToRealVoice = MapsKt.emptyMap();
        this.catalogToLang = MapsKt.emptyMap();
        this.initLatch = new CountDownLatch(1);
        this.pendingUtterances = new ConcurrentHashMap<>();
        this.startedUtterances = new ConcurrentHashMap<>();
        this.speakCalledAt = new ConcurrentHashMap<>();
        this.utteranceOk = new ConcurrentHashMap<>();
        this.appContext = context.getApplicationContext();
        this.utteranceCounter = new AtomicLong(0L);
        connectFreshEngine();
    }

    public final boolean reconnectAndWait(long timeoutMs) {
        connectFreshEngine();
        return awaitReady(timeoutMs);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, android.speech.tts.TextToSpeech] */
    private final synchronized void connectFreshEngine() {
        this.lastReconnectAtMs = System.currentTimeMillis();
        try {
            TextToSpeech textToSpeech = this.tts;
            if (textToSpeech != null) {
                textToSpeech.stop();
            }
        } catch (Throwable unused) {
        }
        try {
            TextToSpeech textToSpeech2 = this.tts;
            if (textToSpeech2 != null) {
                textToSpeech2.shutdown();
            }
        } catch (Throwable unused2) {
        }
        this.engineReady = false;
        this.initLatch = new CountDownLatch(1);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? textToSpeech3 = new TextToSpeech(this.appContext, new TextToSpeech.OnInitListener() { // from class: aio.tts.GoogleVoiceBackend$$ExternalSyntheticLambda0
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                GoogleVoiceBackend.connectFreshEngine$lambda$0(this.f$0, objectRef, i);
            }
        }, ENGINE_PACKAGE);
        try {
            textToSpeech3.setAudioAttributes(new AudioAttributes.Builder().setUsage(11).setContentType(1).build());
        } catch (Throwable th) {
            Log.e("AllInOneTTS", "GoogleVoiceBackend: setAudioAttributes failed", th);
        }
        textToSpeech3.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: aio.tts.GoogleVoiceBackend.connectFreshEngine.3
            @Override // android.speech.tts.UtteranceProgressListener
            public void onStart(String utteranceId) {
                if (utteranceId == null) {
                    return;
                }
                GoogleVoiceBackend.this.startedUtterances.put(utteranceId, true);
                Pair pair = (Pair) GoogleVoiceBackend.this.speakCalledAt.remove(utteranceId);
                if (pair != null) {
                    long jLongValue = ((Number) pair.component1()).longValue();
                    DetailedLog.INSTANCE.log("Audio", "Google audio started " + (System.currentTimeMillis() - jLongValue) + "ms after speak() lang=" + ((String) pair.component2()));
                }
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onDone(String utteranceId) {
                if (utteranceId == null) {
                    return;
                }
                GoogleVoiceBackend.this.utteranceOk.put(utteranceId, true);
                GoogleVoiceBackend.this.speakCalledAt.remove(utteranceId);
                GoogleVoiceBackend.this.startedUtterances.remove(utteranceId);
                CountDownLatch countDownLatch = (CountDownLatch) GoogleVoiceBackend.this.pendingUtterances.remove(utteranceId);
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onError(String utteranceId) {
                if (utteranceId == null) {
                    return;
                }
                GoogleVoiceBackend.this.utteranceOk.put(utteranceId, false);
                GoogleVoiceBackend.this.speakCalledAt.remove(utteranceId);
                GoogleVoiceBackend.this.startedUtterances.remove(utteranceId);
                CountDownLatch countDownLatch = (CountDownLatch) GoogleVoiceBackend.this.pendingUtterances.remove(utteranceId);
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onError(String utteranceId, int errorCode) {
                onError(utteranceId);
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onStop(String utteranceId, boolean interrupted) {
                if (utteranceId == null) {
                    return;
                }
                GoogleVoiceBackend.this.speakCalledAt.remove(utteranceId);
                GoogleVoiceBackend.this.startedUtterances.remove(utteranceId);
                CountDownLatch countDownLatch = (CountDownLatch) GoogleVoiceBackend.this.pendingUtterances.remove(utteranceId);
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
            }
        });
        objectRef.element = textToSpeech3;
        this.tts = textToSpeech3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final void connectFreshEngine$lambda$0(GoogleVoiceBackend googleVoiceBackend, Ref.ObjectRef objectRef, int i) {
        if (i != 0) {
            Log.e("AllInOneTTS", "GoogleVoiceBackend: TextToSpeech init FAILED status=" + i + " -- is \"Speech Services by Google\" (com.google.android.tts) installed/enabled on this device?");
            return;
        }
        try {
            googleVoiceBackend.registerVoicesOnceReady();
            googleVoiceBackend.engineReady = !googleVoiceBackend.catalogToRealVoice.isEmpty();
            if (!googleVoiceBackend.engineReady) {
                DiagnosticLog.INSTANCE.log("Google", "Speech Services by Google (com.google.android.tts) gave no usable voice (missing or disabled): Google voices off, will look again later");
                if (googleVoiceBackend.tts == objectRef.element) {
                    googleVoiceBackend.tts = null;
                }
                try {
                    TextToSpeech textToSpeech = (TextToSpeech) objectRef.element;
                    if (textToSpeech != null) {
                        textToSpeech.shutdown();
                    }
                } catch (Throwable unused) {
                }
            }
            Log.d("AllInOneTTS", "GoogleVoiceBackend: engine ready=" + googleVoiceBackend.engineReady + ", registered " + googleVoiceBackend.catalogToRealVoice.size() + " voice(s) across " + CollectionsKt.toSet(googleVoiceBackend.catalogToLang.values()).size() + " language(s)");
        } finally {
            try {
            } finally {
            }
        }
    }

    private final void retryConnectLater() {
        if (System.currentTimeMillis() - this.lastReconnectAtMs >= 60000) {
            connectFreshEngine();
        }
    }

    private final void registerVoicesOnceReady() {
        int i;
        int i2;
        String str;
        TextToSpeech textToSpeech = this.tts;
        Set<Voice> voices = textToSpeech != null ? textToSpeech.getVoices() : null;
        if (voices == null) {
            voices = SetsKt.emptySet();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Voice> it = voices.iterator();
        while (true) {
            i = 1;
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            Voice next = it.next();
            String name = next.getName();
            if (name != null && !next.isNetworkConnectionRequired() && !StringsKt.endsWith(name, "-language", true)) {
                List listSplit$default = StringsKt.split$default((CharSequence) name, new String[]{"-"}, false, 0, 6, (Object) null);
                if (listSplit$default.size() >= 2) {
                    String lowerCase = ((String) listSplit$default.get(0)).toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    String upperCase = ((String) listSplit$default.get(1)).toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    Companion.LocaleTarget localeTarget = TARGET_LOCALES.get(TuplesKt.to(lowerCase, upperCase));
                    if (localeTarget != null) {
                        LinkedHashMap linkedHashMap2 = linkedHashMap;
                        Pair pair = TuplesKt.to(localeTarget.getLangCode(), localeTarget.getCountryLabel());
                        Object obj = linkedHashMap2.get(pair);
                        if (obj == null) {
                            obj = (List) new ArrayList();
                            linkedHashMap2.put(pair, obj);
                        }
                        Intrinsics.checkNotNull(next);
                        ((List) obj).add(next);
                    }
                }
            }
        }
        HashMap map = new HashMap();
        LinkedHashMap linkedHashMap3 = linkedHashMap;
        for (Map.Entry entry : linkedHashMap3.entrySet()) {
            Pair pair2 = (Pair) entry.getKey();
            List list = (List) entry.getValue();
            HashMap map2 = map;
            Object first = pair2.getFirst();
            Integer num = (Integer) map.get(pair2.getFirst());
            map2.put(first, Integer.valueOf((num != null ? num.intValue() : 0) + list.size()));
        }
        Collection<Companion.LocaleTarget> collectionValues = TARGET_LOCALES.values();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(collectionValues, 10)), 16));
        for (Companion.LocaleTarget localeTarget2 : collectionValues) {
            linkedHashMap4.put(localeTarget2.getLangCode(), localeTarget2.getLanguageLabel());
        }
        ArrayList arrayList = new ArrayList();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        Iterator it2 = linkedHashMap3.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            Pair pair3 = (Pair) entry2.getKey();
            List list2 = (List) entry2.getValue();
            String str2 = (String) pair3.component1();
            String str3 = (String) pair3.component2();
            List<Voice> listSortedWith = CollectionsKt.sortedWith(list2, new Comparator() { // from class: aio.tts.GoogleVoiceBackend$registerVoicesOnceReady$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(((Voice) t).getName(), ((Voice) t2).getName());
                }
            });
            String str4 = (String) linkedHashMap4.get(str2);
            if (str4 == null) {
                str4 = str2;
            }
            Integer num2 = (Integer) map.get(str2);
            int iIntValue = num2 != null ? num2.intValue() : i2;
            int i3 = i2;
            for (Voice voice : listSortedWith) {
                i3 += i;
                if (iIntValue <= i) {
                    str = VoiceCatalog.GOOGLE_VOICE_PREFIX + str4;
                } else {
                    str = VoiceCatalog.GOOGLE_VOICE_PREFIX + str4 + " " + str3 + " " + i3;
                }
                VocalizerVoice vocalizerVoice = new VocalizerVoice();
                vocalizerVoice.mVoiceName = str;
                vocalizerVoice.mLanguage = str4;
                vocalizerVoice.mLanguageTLW = VoiceCatalog.INSTANCE.tlwPrefixFor(str2);
                vocalizerVoice.mSampleRate = 0;
                arrayList.add(vocalizerVoice);
                map3.put(str, voice);
                map4.put(str, str2);
                Log.d("AllInOneTTS", "GoogleVoiceBackend: discovered voice=" + str + " -> real name=" + voice.getName() + " locale=" + voice.getLocale());
                map = map;
                it2 = it2;
                i = 1;
                i2 = 0;
            }
        }
        this.catalogToRealVoice = map3;
        this.catalogToLang = map4;
        VoiceCatalog.INSTANCE.ensureGoogleVoicesRegistered(arrayList);
    }

    static /* synthetic */ boolean awaitReady$default(GoogleVoiceBackend googleVoiceBackend, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 8000;
        }
        return googleVoiceBackend.awaitReady(j);
    }

    private final boolean awaitReady(long timeoutMs) throws InterruptedException {
        if (this.engineReady) {
            return true;
        }
        this.initLatch.await(timeoutMs, TimeUnit.MILLISECONDS);
        return this.engineReady;
    }

    private final String findVoiceName(String lang, String appPackage) {
        Object obj = null;
        if (Intrinsics.areEqual(lang, "number") || Intrinsics.areEqual(lang, "emoji")) {
            String strNumberVoice = Intrinsics.areEqual(lang, "number") ? Prefs.INSTANCE.numberVoice() : Prefs.INSTANCE.emojiVoice();
            Iterator<T> it = this.catalogToLang.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (Intrinsics.areEqual((String) next, strNumberVoice)) {
                    obj = next;
                    break;
                }
            }
            return (String) obj;
        }
        Map<String, String> map = this.catalogToLang;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (Intrinsics.areEqual(entry.getValue(), lang)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Set setKeySet = linkedHashMap.keySet();
        if (setKeySet.isEmpty()) {
            return null;
        }
        String strVoiceForApp = appPackage != null ? Prefs.INSTANCE.voiceForApp(appPackage, lang) : null;
        if (strVoiceForApp != null && setKeySet.contains(strVoiceForApp)) {
            return strVoiceForApp;
        }
        String strVoiceFor = Prefs.INSTANCE.voiceFor(lang);
        if (strVoiceFor == null) {
            strVoiceFor = VoiceCatalog.INSTANCE.preferredDefaultVoiceNameIfPresent(lang);
        }
        Set set = setKeySet;
        Iterator it2 = set.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next2 = it2.next();
            if (Intrinsics.areEqual((String) next2, strVoiceFor)) {
                obj = next2;
                break;
            }
        }
        String str = (String) obj;
        return str == null ? (String) CollectionsKt.firstOrNull(set) : str;
    }

    @Override // aio.tts.VoiceBackend
    public String resolveVoiceName(String lang, String appPackage) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        if (awaitReady(RESOLVE_TIMEOUT_MS)) {
            return findVoiceName(lang, appPackage);
        }
        return null;
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
    public void stop() {
        this.stopRequested = true;
        if (this.pendingUtterances.isEmpty()) {
            return;
        }
        Collection<CountDownLatch> collectionValues = this.pendingUtterances.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((CountDownLatch) it.next()).countDown();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            TextToSpeech textToSpeech = this.tts;
            if (textToSpeech != null) {
                textToSpeech.stop();
            }
        } catch (Throwable unused) {
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jCurrentTimeMillis2 >= GRACE_SETTLE_POLL_MS || !this.pendingUtterances.isEmpty()) {
            String str = "Google stop(): pending=" + this.pendingUtterances.size() + " tts.stop() took " + jCurrentTimeMillis2 + "ms";
            DiagnosticLog.INSTANCE.log("Stop", str);
            DetailedLog.INSTANCE.log("Stop", str);
        }
    }

    @Override // aio.tts.VoiceBackend
    public void speak(String text, String lang, SynthesisCallback callback, int callerRate, int callerPitch, String appPackage) throws InterruptedException {
        int iStart;
        boolean zAwait;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(callback, "callback");
        String str = text;
        if (StringsKt.isBlank(str) || !WatchdogKt.hasSpeakableChars(text)) {
            DetailedLog.INSTANCE.log("Speak", "Google SKIPPED (nothing to speak) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
            try {
                callback.done();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        long jNanoTime = System.nanoTime();
        TextToSpeech textToSpeech = this.tts;
        if (textToSpeech != null) {
            if (awaitReady$default(this, 0L, 1, null)) {
                long jNanoTime2 = System.nanoTime();
                String strFindVoiceName = findVoiceName(lang, appPackage);
                Voice voice = strFindVoiceName != null ? this.catalogToRealVoice.get(strFindVoiceName) : null;
                if (strFindVoiceName == null || voice == null) {
                    Log.e("AllInOneTTS", "GoogleVoiceBackend: no Google voice matched for lang=" + lang);
                    DiagnosticLog.INSTANCE.log("Speak", "FAILED (no Google voice matched) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                    DetailedLog.INSTANCE.log("Speak", "FAILED (no Google voice matched) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                    callback.done();
                    return;
                }
                long jNanoTime3 = System.nanoTime();
                textToSpeech.setVoice(voice);
                long jNanoTime4 = System.nanoTime();
                float fCoerceIn = RangesKt.coerceIn((Prefs.INSTANCE.rateFor(strFindVoiceName) * callerRate) / 100.0f, 1.0f, 2400.0f);
                float fCoerceIn2 = RangesKt.coerceIn((Prefs.INSTANCE.pitchFor(strFindVoiceName) * callerPitch) / 100.0f, 1.0f, 1680.0f);
                textToSpeech.setSpeechRate(fCoerceIn / 100.0f);
                textToSpeech.setPitch(fCoerceIn2 / 100.0f);
                long jNanoTime5 = System.nanoTime();
                DetailedLog.INSTANCE.log("Speak", "voice=" + strFindVoiceName + "(Google) lang=" + lang + " callerRate=" + callerRate + " callerPitch=" + callerPitch + " -> effectiveRatePercent=" + fCoerceIn + " effectivePitchPercent=" + fCoerceIn2);
                DetailedLog.INSTANCE.log("Audio", "Google before speak() lang=" + lang + ": awaitReady=" + ((jNanoTime2 - jNanoTime) / 1000000) + "ms findVoice=" + ((jNanoTime3 - jNanoTime2) / 1000000) + "ms setVoice=" + ((jNanoTime4 - jNanoTime3) / 1000000) + "ms rate+pitch=" + ((jNanoTime5 - jNanoTime4) / 1000000) + "ms sinceEntry=" + ((jNanoTime5 - jNanoTime) / 1000000) + "ms");
                try {
                    iStart = callback.start(24000, 2, 1);
                } catch (Throwable th) {
                    Log.e("AllInOneTTS", "GoogleVoiceBackend: callback.start() failed", th);
                    iStart = 0;
                }
                if (iStart == -2) {
                    DetailedLog.INSTANCE.log("Speak", "Google STOPPED before start (framework item already stopped) lang=" + lang);
                    return;
                }
                String str2 = "google_" + this.utteranceCounter.incrementAndGet();
                CountDownLatch countDownLatch = new CountDownLatch(1);
                this.pendingUtterances.put(str2, countDownLatch);
                if (this.stopRequested) {
                    this.pendingUtterances.remove(str2);
                    return;
                }
                Bundle bundle = new Bundle();
                this.speakCalledAt.put(str2, new Pair<>(Long.valueOf(System.currentTimeMillis()), lang));
                int iSpeak = textToSpeech.speak(str, 1, bundle, str2);
                int i = 0;
                while (iSpeak != 0 && i < 5) {
                    try {
                        Thread.sleep(SPEAK_FAILURE_RETRY_DELAY_MS);
                    } catch (InterruptedException unused2) {
                    }
                    if (this.stopRequested) {
                        this.pendingUtterances.remove(str2);
                        return;
                    } else {
                        i++;
                        iSpeak = textToSpeech.speak(str, 1, bundle, str2);
                    }
                }
                if (iSpeak == 0 && this.stopRequested) {
                    try {
                        textToSpeech.stop();
                    } catch (Throwable unused3) {
                    }
                    this.pendingUtterances.remove(str2);
                    return;
                }
                if (iSpeak != 0) {
                    this.pendingUtterances.remove(str2);
                    Log.e("AllInOneTTS", "GoogleVoiceBackend: speak() call itself failed after " + i + " retries, result=" + iSpeak);
                    DiagnosticLog.INSTANCE.log("Speak", "FAILED (speak() call failed after " + i + " retries) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                    DetailedLog.INSTANCE.log("Speak", "FAILED (speak() call failed after " + i + " retries) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                    try {
                        callback.error(-3);
                    } catch (Throwable unused4) {
                    }
                    if (System.currentTimeMillis() - this.lastReconnectAtMs >= RECONNECT_COOLDOWN_MS) {
                        connectFreshEngine();
                        return;
                    }
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                long length = (text.length() * 150) + 8000;
                try {
                    zAwait = countDownLatch.await(length, TimeUnit.MILLISECONDS);
                } catch (InterruptedException unused5) {
                    Thread.currentThread().interrupt();
                    zAwait = false;
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                DetailedLog.INSTANCE.log("Speak", "Google speak() settled after " + jCurrentTimeMillis2 + "ms (completed=" + zAwait + ", budget=" + length + "ms) for text=" + LogText.INSTANCE.of(text));
                if (this.stopRequested) {
                    this.pendingUtterances.remove(str2);
                    this.startedUtterances.remove(str2);
                    return;
                }
                try {
                    if (!zAwait) {
                        boolean zAreEqual = Intrinsics.areEqual((Object) this.startedUtterances.remove(str2), (Object) true);
                        this.pendingUtterances.remove(str2);
                        try {
                            textToSpeech.stop();
                        } catch (Throwable unused6) {
                        }
                        Log.e("AllInOneTTS", "GoogleVoiceBackend: speak() timed out after " + jCurrentTimeMillis2 + "ms (budget " + length + "ms), hadRealPlayback=" + zAreEqual);
                        DiagnosticLog.INSTANCE.log("Speak", "FAILED (Google timed out, hadRealPlayback=" + zAreEqual + ") voice=" + strFindVoiceName + " lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                        DetailedLog.INSTANCE.log("Speak", "FAILED (Google timed out, hadRealPlayback=" + zAreEqual + ") voice=" + strFindVoiceName + " lang=" + lang + " text=" + LogText.INSTANCE.of(text));
                        if (zAreEqual) {
                            callback.done();
                        } else {
                            callback.error(-3);
                        }
                    } else {
                        Boolean boolRemove = this.utteranceOk.remove(str2);
                        boolean zBooleanValue = boolRemove != null ? boolRemove.booleanValue() : true;
                        this.startedUtterances.remove(str2);
                        if (zBooleanValue) {
                            for (long j = 0; j < 150 && textToSpeech.isSpeaking(); j += GRACE_SETTLE_POLL_MS) {
                                try {
                                    Thread.sleep(GRACE_SETTLE_POLL_MS);
                                } catch (InterruptedException unused7) {
                                }
                            }
                        }
                        if (zBooleanValue) {
                            callback.done();
                        } else {
                            callback.error(-3);
                        }
                    }
                    return;
                } catch (Throwable unused8) {
                    return;
                }
            }
        }
        Log.e("AllInOneTTS", "GoogleVoiceBackend: engine not available/not ready, cannot speak");
        DiagnosticLog.INSTANCE.log("Speak", "FAILED (Google engine not available/not ready) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
        DetailedLog.INSTANCE.log("Speak", "FAILED (Google engine not available/not ready) lang=" + lang + " text=" + LogText.INSTANCE.of(text));
        retryConnectLater();
        callback.done();
    }
}
