package aio.tts;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioAttributes;
import android.os.Handler;
import android.os.Looper;
import android.os.PersistableBundle;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* compiled from: OtpRepeat.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\"J\u0010\u0010'\u001a\u00020$2\u0006\u0010&\u001a\u00020\"H\u0002J\b\u0010(\u001a\u00020$H\u0002J\b\u0010)\u001a\u00020$H\u0002J\u0010\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020,H\u0016J\u001a\u0010-\u001a\u00020$2\b\u0010.\u001a\u0004\u0018\u00010\u00112\u0006\u0010/\u001a\u000200H\u0016J\u0006\u00101\u001a\u00020$J\u0010\u00102\u001a\u00020$2\u0006\u00103\u001a\u00020\"H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Laio/tts/OtpRepeat;", "Landroid/hardware/SensorEventListener;", "<init>", "()V", "WINDOW_MS", "", "SHAKE_THRESHOLD", "", "SAMPLE_THROTTLE_MS", "SHAKE_COOLDOWN_MS", "sensorManager", "Landroid/hardware/SensorManager;", "getSensorManager", "()Landroid/hardware/SensorManager;", "sensorManager$delegate", "Lkotlin/Lazy;", "accelerometer", "Landroid/hardware/Sensor;", "getAccelerometer", "()Landroid/hardware/Sensor;", "accelerometer$delegate", "handler", "Landroid/os/Handler;", "expireRunnable", "Ljava/lang/Runnable;", "pendingClipboardRunnable", "registered", "", "lastSampleTime", "lastShakeTriggerTime", "lastX", "lastY", "lastZ", "currentSpokenForm", "", "record", "", "spokenForm", "rawDigits", "copyToClipboard", "stopListening", "startListening", "onSensorChanged", NotificationCompat.CATEGORY_EVENT, "Landroid/hardware/SensorEvent;", "onAccuracyChanged", "sensor", "accuracy", "", "onShakeDetected", "speakDirectly", "text", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OtpRepeat implements SensorEventListener {
    private static final long SAMPLE_THROTTLE_MS = 100;
    private static final long SHAKE_COOLDOWN_MS = 2000;
    private static final float SHAKE_THRESHOLD = 800.0f;
    public static final long WINDOW_MS = 40000;
    private static volatile String currentSpokenForm;
    private static long lastSampleTime;
    private static long lastShakeTriggerTime;
    private static float lastX;
    private static float lastY;
    private static float lastZ;
    private static Runnable pendingClipboardRunnable;
    private static boolean registered;
    public static final OtpRepeat INSTANCE = new OtpRepeat();

    /* renamed from: sensorManager$delegate, reason: from kotlin metadata */
    private static final Lazy sensorManager = LazyKt.lazy(new Function0() { // from class: aio.tts.OtpRepeat$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return OtpRepeat.sensorManager_delegate$lambda$0();
        }
    });

    /* renamed from: accelerometer$delegate, reason: from kotlin metadata */
    private static final Lazy accelerometer = LazyKt.lazy(new Function0() { // from class: aio.tts.OtpRepeat$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return OtpRepeat.accelerometer_delegate$lambda$1();
        }
    });
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable expireRunnable = new Runnable() { // from class: aio.tts.OtpRepeat$$ExternalSyntheticLambda5
        @Override // java.lang.Runnable
        public final void run() {
            OtpRepeat.INSTANCE.stopListening();
        }
    };

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    private OtpRepeat() {
    }

    private final SensorManager getSensorManager() {
        return (SensorManager) sensorManager.getValue();
    }

    static final SensorManager sensorManager_delegate$lambda$0() {
        Object systemService = App.INSTANCE.getContext().getSystemService("sensor");
        if (systemService instanceof SensorManager) {
            return (SensorManager) systemService;
        }
        return null;
    }

    private final Sensor getAccelerometer() {
        return (Sensor) accelerometer.getValue();
    }

    static final Sensor accelerometer_delegate$lambda$1() {
        SensorManager sensorManager2 = INSTANCE.getSensorManager();
        if (sensorManager2 != null) {
            return sensorManager2.getDefaultSensor(1);
        }
        return null;
    }

    public final synchronized void record(String spokenForm, final String rawDigits) {
        Intrinsics.checkNotNullParameter(spokenForm, "spokenForm");
        Intrinsics.checkNotNullParameter(rawDigits, "rawDigits");
        currentSpokenForm = spokenForm;
        Handler handler2 = handler;
        Runnable runnable = expireRunnable;
        handler2.removeCallbacks(runnable);
        handler2.postDelayed(runnable, WINDOW_MS);
        startListening();
        Runnable runnable2 = pendingClipboardRunnable;
        if (runnable2 != null) {
            handler2.removeCallbacks(runnable2);
        }
        if (Prefs.INSTANCE.otpClipboardEnabled()) {
            Runnable runnable3 = new Runnable() { // from class: aio.tts.OtpRepeat$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    OtpRepeat.INSTANCE.copyToClipboard(rawDigits);
                }
            };
            pendingClipboardRunnable = runnable3;
            handler2.postDelayed(runnable3, Prefs.INSTANCE.otpClipboardDelaySec() * 1000);
        }
        Log.d("AllInOneTTS", "OtpRepeat: recorded, window resets to 40000ms");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void copyToClipboard(String rawDigits) {
        try {
            Object systemService = App.INSTANCE.getContext().getSystemService("clipboard");
            ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
            if (clipboardManager == null) {
                return;
            }
            ClipData clipDataNewPlainText = ClipData.newPlainText("OTP", rawDigits);
            ClipDescription description = clipDataNewPlainText.getDescription();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putBoolean("android.content.extra.IS_SENSITIVE", true);
            description.setExtras(persistableBundle);
            clipboardManager.setPrimaryClip(clipDataNewPlainText);
            Log.d("AllInOneTTS", "OtpRepeat: copied to clipboard (" + rawDigits.length() + " digits)");
        } catch (Throwable th) {
            Log.e("AllInOneTTS", "OtpRepeat: clipboard copy failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void stopListening() {
        if (registered) {
            SensorManager sensorManager2 = getSensorManager();
            if (sensorManager2 != null) {
                sensorManager2.unregisterListener(this);
            }
            registered = false;
        }
        currentSpokenForm = null;
        Log.d("AllInOneTTS", "OtpRepeat: window expired, listener stopped");
    }

    private final void startListening() {
        Sensor accelerometer2;
        if (registered || (accelerometer2 = getAccelerometer()) == null) {
            return;
        }
        SensorManager sensorManager2 = getSensorManager();
        if (sensorManager2 != null) {
            sensorManager2.registerListener(this, accelerometer2, 2);
        }
        registered = true;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = lastSampleTime;
        if (jCurrentTimeMillis - j < SAMPLE_THROTTLE_MS) {
            return;
        }
        long jCoerceAtLeast = RangesKt.coerceAtLeast(jCurrentTimeMillis - j, 1L);
        lastSampleTime = jCurrentTimeMillis;
        float f = event.values[0];
        float f2 = event.values[1];
        float f3 = event.values[2];
        float fAbs = (Math.abs(((((f + f2) + f3) - lastX) - lastY) - lastZ) / jCoerceAtLeast) * 10000.0f;
        lastX = f;
        lastY = f2;
        lastZ = f3;
        if (fAbs > SHAKE_THRESHOLD) {
            onShakeDetected();
        }
    }

    public final synchronized void onShakeDetected() {
        String str = currentSpokenForm;
        if (str == null) {
            OtpRepeat otpRepeat = this;
            Log.d("AllInOneTTS", "OtpRepeat: shake detected, no live OTP");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastShakeTriggerTime < SHAKE_COOLDOWN_MS) {
            return;
        }
        lastShakeTriggerTime = jCurrentTimeMillis;
        Log.d("AllInOneTTS", "OtpRepeat: shake detected, repeating");
        speakDirectly(str);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, android.speech.tts.TextToSpeech] */
    private final void speakDirectly(final String text) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new TextToSpeech(App.INSTANCE.getContext(), new TextToSpeech.OnInitListener() { // from class: aio.tts.OtpRepeat$$ExternalSyntheticLambda2
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                OtpRepeat.speakDirectly$lambda$8(objectRef, text, i);
            }
        }, App.INSTANCE.getContext().getPackageName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final void speakDirectly$lambda$8(final Ref.ObjectRef objectRef, String str, int i) {
        if (i != 0) {
            Log.e("AllInOneTTS", "OtpRepeat: self-speak init FAILED");
            TextToSpeech textToSpeech = (TextToSpeech) objectRef.element;
            if (textToSpeech != null) {
                textToSpeech.shutdown();
                return;
            }
            return;
        }
        try {
            TextToSpeech textToSpeech2 = (TextToSpeech) objectRef.element;
            if (textToSpeech2 != null) {
                textToSpeech2.setAudioAttributes(new AudioAttributes.Builder().setUsage(11).setContentType(1).build());
            }
        } catch (Throwable th) {
            Log.e("AllInOneTTS", "OtpRepeat: setAudioAttributes failed", th);
        }
        String str2 = "otp_repeat_" + System.currentTimeMillis();
        TextToSpeech textToSpeech3 = (TextToSpeech) objectRef.element;
        if (textToSpeech3 != null) {
            textToSpeech3.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: aio.tts.OtpRepeat$speakDirectly$1$1
                @Override // android.speech.tts.UtteranceProgressListener
                public void onStart(String id) {
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onDone(String id) {
                    TextToSpeech textToSpeech4 = objectRef.element;
                    if (textToSpeech4 != null) {
                        textToSpeech4.shutdown();
                    }
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onError(String id) {
                    TextToSpeech textToSpeech4 = objectRef.element;
                    if (textToSpeech4 != null) {
                        textToSpeech4.shutdown();
                    }
                }

                @Override // android.speech.tts.UtteranceProgressListener
                public void onError(String id, int errorCode) {
                    TextToSpeech textToSpeech4 = objectRef.element;
                    if (textToSpeech4 != null) {
                        textToSpeech4.shutdown();
                    }
                }
            });
        }
        TextToSpeech textToSpeech4 = (TextToSpeech) objectRef.element;
        Integer numValueOf = textToSpeech4 != null ? Integer.valueOf(textToSpeech4.speak(str, 0, null, str2)) : null;
        if (numValueOf == null || numValueOf.intValue() != 0) {
            Log.e("AllInOneTTS", "OtpRepeat: self-speak refused rc=" + numValueOf);
            TextToSpeech textToSpeech5 = (TextToSpeech) objectRef.element;
            if (textToSpeech5 != null) {
                textToSpeech5.shutdown();
                return;
            }
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: aio.tts.OtpRepeat$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                OtpRepeat.speakDirectly$lambda$8$lambda$7(objectRef);
            }
        }, ExternalEngines.FAILED_COOLDOWN_MS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final void speakDirectly$lambda$8$lambda$7(Ref.ObjectRef objectRef) {
        try {
            TextToSpeech textToSpeech = (TextToSpeech) objectRef.element;
            if (textToSpeech != null) {
                textToSpeech.shutdown();
            }
        } catch (Throwable unused) {
        }
    }
}
