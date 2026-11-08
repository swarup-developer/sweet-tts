package aio.tts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.speech.tts.Voice;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.DebugKt;
import org.eloqium.tts.engine.EloqiumEngine;

/* compiled from: TtsTestReceiver.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J:\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0002J\u0018\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\rH\u0002¨\u0006\u0015"}, d2 = {"Laio/tts/TtsTestReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "renderToFile", "appContext", "text", "", "name", "ratePercent", "", "engine", "lang", "listVoices", "enginePackage", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TtsTestReceiver extends BroadcastReceiver {
    /* JADX WARN: Type inference failed for: r8v3, types: [T, android.speech.tts.TextToSpeech] */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        String str;
        String strDebugRecover;
        String strDebugRecover2;
        String strDebugBreak;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_LIST_VOICES")) {
            String stringExtra = intent.getStringExtra("engine");
            if (stringExtra == null) {
                stringExtra = GoogleVoiceBackend.ENGINE_PACKAGE;
            }
            listVoices(context, stringExtra);
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_SHAKE")) {
            OtpRepeat.INSTANCE.onShakeDetected();
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_DETAILED_LOG")) {
            String stringExtra2 = intent.getStringExtra("state");
            if (stringExtra2 != null) {
                int iHashCode = stringExtra2.hashCode();
                if (iHashCode == 3540994) {
                    if (stringExtra2.equals("stop")) {
                        DetailedLog.INSTANCE.stop();
                        return;
                    }
                    return;
                } else {
                    if (iHashCode == 109757538 && stringExtra2.equals("start")) {
                        DetailedLog.INSTANCE.start();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_SET_VOICE")) {
            String stringExtra3 = intent.getStringExtra("lang");
            String stringExtra4 = intent.getStringExtra("voice");
            if (stringExtra3 != null && stringExtra4 != null) {
                Prefs.INSTANCE.setVoiceFor(stringExtra3, stringExtra4);
                Log.d("TTS_TEST", "TEST_SET_VOICE lang=" + stringExtra3 + " voice=" + stringExtra4);
                return;
            } else {
                Log.e("TTS_TEST", "TEST_SET_VOICE missing lang/voice extra");
                return;
            }
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_SET_PUNCT")) {
            Prefs prefs = Prefs.INSTANCE;
            String stringExtra5 = intent.getStringExtra("level");
            if (stringExtra5 == null) {
                stringExtra5 = PunctuationReader.NONE;
            }
            prefs.setPunctuationLevel(stringExtra5);
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_LOG_TEXT")) {
            LogText logText = LogText.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            logText.setDebugOn(applicationContext, intent.getBooleanExtra(DebugKt.DEBUG_PROPERTY_VALUE_ON, false));
            return;
        }
        boolean zAreEqual = Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_RENDER");
        String str2 = BuildConfig.APPLICATION_ID;
        if (zAreEqual) {
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
            String stringExtra6 = intent.getStringExtra("text");
            if (stringExtra6 == null) {
                stringExtra6 = "";
            }
            String stringExtra7 = intent.getStringExtra("name");
            if (stringExtra7 == null) {
                stringExtra7 = "render";
            }
            String str3 = stringExtra7;
            int intExtra = intent.getIntExtra("rate", 100);
            String stringExtra8 = intent.getStringExtra("engine");
            renderToFile(applicationContext2, stringExtra6, str3, intExtra, stringExtra8 == null ? BuildConfig.APPLICATION_ID : stringExtra8, intent.getStringExtra("lang"));
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_BREAKER")) {
            Prefs.INSTANCE.setDebugNoBreaker(intent.getBooleanExtra(DebugKt.DEBUG_PROPERTY_VALUE_OFF, false));
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_STALE_ABORT")) {
            VocalizerVoiceBackend companion = VocalizerVoiceBackend.INSTANCE.getInstance();
            if (companion != null && (strDebugBreak = companion.debugBreak()) != null) {
                str = strDebugBreak;
            }
            Log.d("TTS_TEST", "TEST_STALE_ABORT: " + str);
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_RECOVER")) {
            VocalizerVoiceBackend companion2 = VocalizerVoiceBackend.INSTANCE.getInstance();
            if (companion2 != null && (strDebugRecover2 = companion2.debugRecover(intent.getIntExtra("step", 1))) != null) {
                str = strDebugRecover2;
            }
            Log.d("TTS_TEST", "TEST_RECOVER: " + str);
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_FAST_STOP")) {
            Prefs.INSTANCE.setEloqFastStopOffUntil(intent.getBooleanExtra(DebugKt.DEBUG_PROPERTY_VALUE_ON, true) ? 0L : Long.MAX_VALUE);
            Log.d("TTS_TEST", "TEST_FAST_STOP on=" + EloquenceHub.INSTANCE.fastStopAllowed());
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_FAIL_LOAD")) {
            VocalizerVoiceBackend companion3 = VocalizerVoiceBackend.INSTANCE.getInstance();
            if (companion3 != null) {
                companion3.setDebugFailLoads(intent.getIntExtra("count", 3));
            }
            Log.d("TTS_TEST", "TEST_FAIL_LOAD: " + (companion3 != null ? "next " + companion3.getDebugFailLoads() + " loads fail" : "no Vocalizer backend yet"));
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_ABORT_ENGINE")) {
            try {
                EloqiumEngine eloqiumEngineEngine = EloquenceHub.INSTANCE.engine();
                if (eloqiumEngineEngine != null) {
                    eloqiumEngineEngine.emergencyStop();
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_SET_RATE_CAP")) {
            int intExtra2 = intent.getIntExtra("cap", ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
            Prefs.INSTANCE.setVocalizerRateCap(intExtra2);
            Log.d("TTS_TEST", "TEST_SET_RATE_CAP cap=" + intExtra2);
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_EXTERNAL")) {
            String stringExtra9 = intent.getStringExtra("skip");
            if (stringExtra9 != null) {
                Prefs.INSTANCE.setDebugSkipInternal(stringExtra9);
            }
            if (intent.getBooleanExtra("rebuild", false)) {
                VocalizerVoiceBackend companion4 = VocalizerVoiceBackend.INSTANCE.getInstance();
                if (companion4 != null && (strDebugRecover = companion4.debugRecover(2)) != null) {
                    str = strDebugRecover;
                }
                Log.d("TTS_TEST", "TEST_EXTERNAL rebuild: " + str);
            }
            Log.d("TTS_TEST", "TEST_EXTERNAL skip='" + Prefs.INSTANCE.debugSkipInternal() + "' " + ExternalVoices.INSTANCE.getLastScan());
            List<VocalizerVoice> voices = VoiceCatalog.INSTANCE.getVoices();
            ArrayList arrayList = new ArrayList();
            for (Object obj : voices) {
                if (!StringsKt.startsWith$default(((VocalizerVoice) obj).mVoiceName, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null)) {
                    arrayList.add(obj);
                }
            }
            Log.d("TTS_TEST", "TEST_EXTERNAL Vocalizer voices: " + CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, new Function1() { // from class: aio.tts.TtsTestReceiver$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return TtsTestReceiver.onReceive$lambda$2((VocalizerVoice) obj2);
                }
            }, 31, null));
            return;
        }
        if (Intrinsics.areEqual(intent.getAction(), "aio.tts.TEST_SET_LANG_ENABLED")) {
            String stringExtra10 = intent.getStringExtra("lang");
            boolean booleanExtra = intent.getBooleanExtra("enabled", true);
            if (stringExtra10 != null) {
                Prefs.INSTANCE.setLanguageEnabled(stringExtra10, booleanExtra);
                Log.d("TTS_TEST", "TEST_SET_LANG_ENABLED lang=" + stringExtra10 + " enabled=" + booleanExtra);
                return;
            } else {
                Log.e("TTS_TEST", "TEST_SET_LANG_ENABLED missing lang extra");
                return;
            }
        }
        final String stringExtra11 = intent.getStringExtra("text");
        String str4 = stringExtra11;
        if (str4 == null || str4.length() == 0) {
            Log.e("TTS_TEST", "no text extra provided");
            return;
        }
        String stringExtra12 = intent.getStringExtra("engine");
        if (stringExtra12 != null) {
            str2 = stringExtra12;
        }
        Context applicationContext3 = context.getApplicationContext();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final String str5 = str2;
        objectRef.element = new TextToSpeech(applicationContext3, new TextToSpeech.OnInitListener() { // from class: aio.tts.TtsTestReceiver$$ExternalSyntheticLambda2
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                TtsTestReceiver.onReceive$lambda$3(str5, stringExtra11, objectRef, jCurrentTimeMillis, intent, i);
            }
        }, str5);
    }

    static final CharSequence onReceive$lambda$2(VocalizerVoice it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.mVoiceName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final void onReceive$lambda$3(final String str, final String str2, final Ref.ObjectRef objectRef, final long j, Intent intent, int i) {
        if (i != 0) {
            Log.e("TTS_TEST", "init FAILED engine=" + str + " text=\"" + str2 + "\"");
            TextToSpeech textToSpeech = (TextToSpeech) objectRef.element;
            if (textToSpeech != null) {
                textToSpeech.shutdown();
                return;
            }
            return;
        }
        String str3 = "test_" + j;
        TextToSpeech textToSpeech2 = (TextToSpeech) objectRef.element;
        if (textToSpeech2 != null) {
            textToSpeech2.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: aio.tts.TtsTestReceiver$onReceive$5$1
                @Override // android.speech.tts.UtteranceProgressListener
                public void onStart(String id) {
                    Log.d("TTS_TEST", "START engine=" + str + " msSinceRequest=" + (System.currentTimeMillis() - j) + " text=\"" + str2 + "\"");
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onDone(String id) {
                    Log.d("TTS_TEST", "DONE engine=" + str + " totalMs=" + (System.currentTimeMillis() - j) + " text=\"" + str2 + "\"");
                    TextToSpeech textToSpeech3 = objectRef.element;
                    if (textToSpeech3 != null) {
                        textToSpeech3.shutdown();
                    }
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onError(String id) {
                    Log.e("TTS_TEST", "ERROR engine=" + str + " totalMs=" + (System.currentTimeMillis() - j) + " text=\"" + str2 + "\"");
                    TextToSpeech textToSpeech3 = objectRef.element;
                    if (textToSpeech3 != null) {
                        textToSpeech3.shutdown();
                    }
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onError(String id, int errorCode) {
                    Log.e("TTS_TEST", "ERROR engine=" + str + " code=" + errorCode + " totalMs=" + (System.currentTimeMillis() - j) + " text=\"" + str2 + "\"");
                    TextToSpeech textToSpeech3 = objectRef.element;
                    if (textToSpeech3 != null) {
                        textToSpeech3.shutdown();
                    }
                }
            });
        }
        int intExtra = intent.getIntExtra("rate", 100);
        TextToSpeech textToSpeech3 = (TextToSpeech) objectRef.element;
        if (textToSpeech3 != null) {
            textToSpeech3.setSpeechRate(intExtra / 100.0f);
        }
        Log.d("TTS_TEST", "REQUEST engine=" + str + " rate=" + intExtra + " text=\"" + str2 + "\"");
        TextToSpeech textToSpeech4 = (TextToSpeech) objectRef.element;
        if (textToSpeech4 != null) {
            textToSpeech4.speak(str2, 0, null, str3);
        }
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [T, android.speech.tts.TextToSpeech] */
    private final void renderToFile(Context appContext, final String text, final String name, final int ratePercent, String engine, final String lang) {
        if (text.length() == 0) {
            Log.e("TTS_TEST", "RENDER no text");
        } else {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new TextToSpeech(appContext, new TextToSpeech.OnInitListener() { // from class: aio.tts.TtsTestReceiver$$ExternalSyntheticLambda3
                @Override // android.speech.tts.TextToSpeech.OnInitListener
                public final void onInit(int i) {
                    TtsTestReceiver.renderToFile$lambda$5(objectRef, name, ratePercent, lang, text, i);
                }
            }, engine);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final void renderToFile$lambda$5(final Ref.ObjectRef objectRef, final String str, int i, String str2, String str3, int i2) {
        TextToSpeech textToSpeech;
        if (i2 != 0) {
            Log.e("TTS_TEST", "RENDER init FAILED");
            TextToSpeech textToSpeech2 = (TextToSpeech) objectRef.element;
            if (textToSpeech2 != null) {
                textToSpeech2.shutdown();
                return;
            }
            return;
        }
        File file = new File(ImportExport.INSTANCE.folder$app(), "render");
        file.mkdirs();
        final File file2 = new File(file, str + ".wav");
        TextToSpeech textToSpeech3 = (TextToSpeech) objectRef.element;
        if (textToSpeech3 != null) {
            textToSpeech3.setSpeechRate(i / 100.0f);
        }
        if (str2 != null && (textToSpeech = (TextToSpeech) objectRef.element) != null) {
            textToSpeech.setLanguage(Locale.forLanguageTag(str2));
        }
        TextToSpeech textToSpeech4 = (TextToSpeech) objectRef.element;
        if (textToSpeech4 != null) {
            textToSpeech4.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: aio.tts.TtsTestReceiver$renderToFile$1$1
                @Override // android.speech.tts.UtteranceProgressListener
                public void onStart(String id) {
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onDone(String id) {
                    Log.d("TTS_TEST", "RENDER_DONE name=" + str + " bytes=" + file2.length());
                    TextToSpeech textToSpeech5 = objectRef.element;
                    if (textToSpeech5 != null) {
                        textToSpeech5.shutdown();
                    }
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onError(String id) {
                    Log.e("TTS_TEST", "RENDER_ERROR name=" + str);
                    TextToSpeech textToSpeech5 = objectRef.element;
                    if (textToSpeech5 != null) {
                        textToSpeech5.shutdown();
                    }
                }
            });
        }
        TextToSpeech textToSpeech5 = (TextToSpeech) objectRef.element;
        Integer numValueOf = textToSpeech5 != null ? Integer.valueOf(textToSpeech5.synthesizeToFile(str3, (Bundle) null, file2, "render_" + str)) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            return;
        }
        Log.e("TTS_TEST", "RENDER synthesizeToFile rc=" + numValueOf);
        TextToSpeech textToSpeech6 = (TextToSpeech) objectRef.element;
        if (textToSpeech6 != null) {
            textToSpeech6.shutdown();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, android.speech.tts.TextToSpeech] */
    private final void listVoices(Context context, final String enginePackage) {
        Context applicationContext = context.getApplicationContext();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new TextToSpeech(applicationContext, new TextToSpeech.OnInitListener() { // from class: aio.tts.TtsTestReceiver$$ExternalSyntheticLambda0
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                TtsTestReceiver.listVoices$lambda$7(enginePackage, objectRef, i);
            }
        }, enginePackage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final void listVoices$lambda$7(String str, Ref.ObjectRef objectRef, int i) {
        Voice defaultVoice;
        Voice defaultVoice2;
        if (i != 0) {
            Log.e("TTS_TEST", "LIST_VOICES init FAILED engine=" + str);
            TextToSpeech textToSpeech = (TextToSpeech) objectRef.element;
            if (textToSpeech != null) {
                textToSpeech.shutdown();
                return;
            }
            return;
        }
        TextToSpeech textToSpeech2 = (TextToSpeech) objectRef.element;
        Set<Voice> voices = textToSpeech2 != null ? textToSpeech2.getVoices() : null;
        if (voices == null) {
            voices = SetsKt.emptySet();
        }
        List<Voice> listSortedWith = CollectionsKt.sortedWith(voices, new Comparator() { // from class: aio.tts.TtsTestReceiver$listVoices$lambda$7$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((Voice) t).getLocale().toString(), ((Voice) t2).getLocale().toString());
            }
        });
        Log.d("TTS_TEST", "LIST_VOICES engine=" + str + " count=" + listSortedWith.size());
        for (Voice voice : listSortedWith) {
            Log.d("TTS_TEST", "VOICE locale=" + voice.getLocale() + " name=" + voice.getName() + " quality=" + voice.getQuality() + " latency=" + voice.getLatency() + " network=" + voice.isNetworkConnectionRequired() + " features=" + voice.getFeatures());
        }
        try {
            TextToSpeech textToSpeech3 = (TextToSpeech) objectRef.element;
            String name = (textToSpeech3 == null || (defaultVoice2 = textToSpeech3.getDefaultVoice()) == null) ? null : defaultVoice2.getName();
            TextToSpeech textToSpeech4 = (TextToSpeech) objectRef.element;
            Locale locale = (textToSpeech4 == null || (defaultVoice = textToSpeech4.getDefaultVoice()) == null) ? null : defaultVoice.getLocale();
            TextToSpeech textToSpeech5 = (TextToSpeech) objectRef.element;
            Log.d("TTS_TEST", "LIST_VOICES defaultVoice=" + name + " (" + locale + ") availableLanguages=" + (textToSpeech5 != null ? textToSpeech5.getAvailableLanguages() : null));
            for (String str2 : CollectionsKt.listOf((Object[]) new String[]{"en-US", "en-GB", "en-IN", "hi-IN", "hi", "ur-IN", "ur-PK", "ur"})) {
                Locale localeForLanguageTag = Locale.forLanguageTag(str2);
                TextToSpeech textToSpeech6 = (TextToSpeech) objectRef.element;
                Log.d("TTS_TEST", "LIST_VOICES isLanguageAvailable " + str2 + " = " + (textToSpeech6 != null ? Integer.valueOf(textToSpeech6.isLanguageAvailable(localeForLanguageTag)) : null));
            }
        } catch (Throwable th) {
            Log.e("TTS_TEST", "LIST_VOICES extra queries failed: " + th);
        }
        TextToSpeech textToSpeech7 = (TextToSpeech) objectRef.element;
        if (textToSpeech7 != null) {
            textToSpeech7.shutdown();
        }
    }
}
