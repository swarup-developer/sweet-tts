package aio.tts;

import android.app.Activity;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: StressActivity.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\b\u0010\u0010\u001a\u00020\rH\u0014J\b\u0010\u0011\u001a\u00020\u000bH\u0002J\"\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J0\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Laio/tts/StressActivity;", "Landroid/app/Activity;", "<init>", "()V", "LANGS16", "", "", "phrases", "running", "", "rate", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "servicePid", "newTts", "Landroid/speech/tts/TextToSpeech;", "engine", "done", "Ljava/util/concurrent/atomic/AtomicInteger;", "errors", "runLoop", "iterations", "maxGap", "seed", "", "view", "Landroid/widget/TextView;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StressActivity extends Activity {
    private final List<String> LANGS16 = CollectionsKt.listOf((Object[]) new String[]{"en", "hi", "mr", "bn", "gu", "pa", "ur", "ar", "ne", "or", "kn", "ta", "te", "ml", "as", "bho"});
    private volatile List<String> phrases = CollectionsKt.listOf((Object[]) new String[]{"Message Text box Compose message", "Home screen 1 of 1", "Apps", "YouTube Pro , 5 of 5 on the dock", "Double-tap to activate", "Knowledge For All  3:03 AM  Inamuddin added +91 9 9 6 3 1  9 4 0 2 8   36 unread messages", "WhatsApp", "SAVE COPY TO DOCUMENTS Button", "Battery 80 percent.", "The quick brown fox jumps over the lazy dog while the screen reader keeps moving to the next item on the page.", "Meanwhile, the committee decided that the proposal needed more time, and the vote was postponed until next week.", "Tap to open. Swipe up with two fingers to dismiss the notification.", "08", "ये एक हिंदी वाक्य है जो अंग्रेज़ी शब्द message के साथ मिला हुआ है।", "आज का मौसम बहुत अच्छा है और हम सब बाहर घूमने जा रहे हैं।", "Hello, this is a mixed message: नमस्ते दोस्तो, how are you doing today?", "OTP 482913 is your verification code, do not share it with anyone.", "3:45 PM Rahul: see you at 7, call me on +91 98294 83956"});
    private volatile boolean running = true;
    private volatile int rate = 274;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        ArrayList arrayList;
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        final TextView textView = new TextView(this);
        textView.setText("AIO stress test running (see logcat tag AIO_STRESS)");
        setContentView(textView);
        final int intExtra = getIntent().getIntExtra("iterations", 400);
        final int intExtra2 = getIntent().getIntExtra("maxGap", 300);
        final long longExtra = getIntent().getLongExtra("seed", System.currentTimeMillis());
        String stringExtra = getIntent().getStringExtra("engine");
        if (stringExtra == null) {
            stringExtra = BuildConfig.APPLICATION_ID;
        }
        final String str = stringExtra;
        this.rate = getIntent().getIntExtra("rate", 274);
        String stringExtra2 = getIntent().getStringExtra("langs");
        if (stringExtra2 != null) {
            if (Intrinsics.areEqual(stringExtra2, "all16")) {
                arrayList = this.LANGS16;
            } else {
                List listSplit$default = StringsKt.split$default((CharSequence) stringExtra2, new char[]{','}, false, 0, 6, (Object) null);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
                Iterator it = listSplit$default.iterator();
                while (it.hasNext()) {
                    arrayList2.add(StringsKt.trim((CharSequence) it.next()).toString());
                }
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : arrayList2) {
                    if (((String) obj).length() > 0) {
                        arrayList3.add(obj);
                    }
                }
                arrayList = arrayList3;
            }
            Iterable iterable = arrayList;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                arrayList4.add(PlaySample.INSTANCE.textFor((String) it2.next()));
            }
            this.phrases = arrayList4;
        }
        new Thread(new Runnable() { // from class: aio.tts.StressActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                this.f$0.runLoop(intExtra, intExtra2, longExtra, str, textView);
            }
        }, "aio-stress").start();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.running = false;
        super.onDestroy();
    }

    private final int servicePid() {
        try {
            InputStream inputStream = Runtime.getRuntime().exec(new String[]{"sh", "-c", "pidof aio.tts"}).getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
            List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.trim((CharSequence) TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192))).toString(), new char[]{' '}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listSplit$default) {
                if (((String) obj).length() > 0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(Integer.valueOf(Integer.parseInt((String) it.next())));
            }
            Integer num = (Integer) CollectionsKt.firstOrNull(CollectionsKt.sorted(arrayList3));
            if (num != null) {
                return num.intValue();
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private final TextToSpeech newTts(String engine, final AtomicInteger done, final AtomicInteger errors) throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        TextToSpeech textToSpeech = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() { // from class: aio.tts.StressActivity$$ExternalSyntheticLambda0
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                StressActivity.newTts$lambda$8(booleanRef, countDownLatch, i);
            }
        }, engine);
        textToSpeech.setSpeechRate(this.rate / 100.0f);
        textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: aio.tts.StressActivity.newTts.1
            @Override // android.speech.tts.UtteranceProgressListener
            public void onStart(String utteranceId) {
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onStop(String utteranceId, boolean interrupted) {
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onDone(String utteranceId) {
                done.incrementAndGet();
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onError(String utteranceId) {
                errors.incrementAndGet();
            }
        });
        countDownLatch.await(10L, TimeUnit.SECONDS);
        if (booleanRef.element) {
            return textToSpeech;
        }
        return null;
    }

    static final void newTts$lambda$8(Ref.BooleanRef booleanRef, CountDownLatch countDownLatch, int i) {
        booleanRef.element = i == 0;
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d9 A[LOOP:0: B:9:0x0078->B:49:0x01d9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ef A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void runLoop(int r27, int r28, long r29, java.lang.String r31, final android.widget.TextView r32) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.StressActivity.runLoop(int, int, long, java.lang.String, android.widget.TextView):void");
    }
}
