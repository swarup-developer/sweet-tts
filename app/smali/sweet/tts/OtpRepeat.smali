.class public final Lsweet/tts/OtpRepeat;
.super Ljava/lang/Object;
.source "OtpRepeat.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOtpRepeat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtpRepeat.kt\nsweet/tts/OtpRepeat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\"J\u0010\u0010\'\u001a\u00020$2\u0006\u0010&\u001a\u00020\"H\u0002J\u0008\u0010(\u001a\u00020$H\u0002J\u0008\u0010)\u001a\u00020$H\u0002J\u0010\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020,H\u0016J\u001a\u0010-\u001a\u00020$2\u0008\u0010.\u001a\u0004\u0018\u00010\u00112\u0006\u0010/\u001a\u000200H\u0016J\u0006\u00101\u001a\u00020$J\u0010\u00102\u001a\u00020$2\u0006\u00103\u001a\u00020\"H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lsweet/tts/OtpRepeat;",
        "Landroid/hardware/SensorEventListener;",
        "<init>",
        "()V",
        "WINDOW_MS",
        "",
        "SHAKE_THRESHOLD",
        "",
        "SAMPLE_THROTTLE_MS",
        "SHAKE_COOLDOWN_MS",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "getSensorManager",
        "()Landroid/hardware/SensorManager;",
        "sensorManager$delegate",
        "Lkotlin/Lazy;",
        "accelerometer",
        "Landroid/hardware/Sensor;",
        "getAccelerometer",
        "()Landroid/hardware/Sensor;",
        "accelerometer$delegate",
        "handler",
        "Landroid/os/Handler;",
        "expireRunnable",
        "Ljava/lang/Runnable;",
        "pendingClipboardRunnable",
        "registered",
        "",
        "lastSampleTime",
        "lastShakeTriggerTime",
        "lastX",
        "lastY",
        "lastZ",
        "currentSpokenForm",
        "",
        "record",
        "",
        "spokenForm",
        "rawDigits",
        "copyToClipboard",
        "stopListening",
        "startListening",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
        "onAccuracyChanged",
        "sensor",
        "accuracy",
        "",
        "onShakeDetected",
        "speakDirectly",
        "text",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lsweet/tts/OtpRepeat;

.field private static final SAMPLE_THROTTLE_MS:J = 0x64L

.field private static final SHAKE_COOLDOWN_MS:J = 0x7d0L

.field private static final SHAKE_THRESHOLD:F = 800.0f

.field public static final WINDOW_MS:J = 0x9c40L

.field private static final accelerometer$delegate:Lkotlin/Lazy;

.field private static volatile currentSpokenForm:Ljava/lang/String;

.field private static final expireRunnable:Ljava/lang/Runnable;

.field private static final handler:Landroid/os/Handler;

.field private static lastSampleTime:J

.field private static lastShakeTriggerTime:J

.field private static lastX:F

.field private static lastY:F

.field private static lastZ:F

.field private static pendingClipboardRunnable:Ljava/lang/Runnable;

.field private static registered:Z

.field private static final sensorManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/OtpRepeat;

    invoke-direct {v0}, Lsweet/tts/OtpRepeat;-><init>()V

    sput-object v0, Lsweet/tts/OtpRepeat;->INSTANCE:Lsweet/tts/OtpRepeat;

    .line 44
    new-instance v0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lsweet/tts/OtpRepeat;->sensorManager$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lsweet/tts/OtpRepeat;->accelerometer$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lsweet/tts/OtpRepeat;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lsweet/tts/OtpRepeat;->expireRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final accelerometer_delegate$lambda$1()Landroid/hardware/Sensor;
    .locals 2

    .line 48
    sget-object v0, Lsweet/tts/OtpRepeat;->INSTANCE:Lsweet/tts/OtpRepeat;

    invoke-direct {v0}, Lsweet/tts/OtpRepeat;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final copyToClipboard(Ljava/lang/String;)V
    .locals 7

    .line 97
    const-string p0, "AllInOneTTS"

    .line 0
    const-string v0, "OtpRepeat: copied to clipboard ("

    .line 98
    :try_start_0
    sget-object v1, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {v1}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/content/ClipboardManager;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 99
    :cond_1
    const-string v2, "OTP"

    check-cast v2, Ljava/lang/CharSequence;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 101
    const-string v5, "android.content.extra.IS_SENSITIVE"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " digits)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 106
    const-string v0, "OtpRepeat: clipboard copy failed"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static final expireRunnable$lambda$2()V
    .locals 1

    .line 51
    sget-object v0, Lsweet/tts/OtpRepeat;->INSTANCE:Lsweet/tts/OtpRepeat;

    invoke-direct {v0}, Lsweet/tts/OtpRepeat;->stopListening()V

    return-void
.end method

.method private final getAccelerometer()Landroid/hardware/Sensor;
    .locals 0

    .line 47
    sget-object p0, Lsweet/tts/OtpRepeat;->accelerometer$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Sensor;

    return-object p0
.end method

.method private final getSensorManager()Landroid/hardware/SensorManager;
    .locals 0

    .line 44
    sget-object p0, Lsweet/tts/OtpRepeat;->sensorManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static final record$lambda$4(Ljava/lang/String;)V
    .locals 1

    .line 80
    sget-object v0, Lsweet/tts/OtpRepeat;->INSTANCE:Lsweet/tts/OtpRepeat;

    invoke-direct {v0, p0}, Lsweet/tts/OtpRepeat;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static final sensorManager_delegate$lambda$0()Landroid/hardware/SensorManager;
    .locals 2

    .line 45
    sget-object v0, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {v0}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final speakDirectly(Ljava/lang/String;)V
    .locals 3

    .line 163
    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 164
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {v1}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 199
    sget-object p1, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {p1}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method static final speakDirectly$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;I)V
    .locals 4

    .line 165
    const-string v0, "AllInOneTTS"

    if-eqz p2, :cond_0

    .line 166
    const-string p1, "OtpRepeat: self-speak init FAILED"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/speech/tts/TextToSpeech;

    if-eqz p2, :cond_1

    .line 176
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    .line 177
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 178
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 175
    invoke-virtual {p2, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 182
    const-string v1, "OtpRepeat: setAudioAttributes failed"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "otp_repeat_"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 185
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_2

    new-instance v2, Lsweet/tts/OtpRepeat$speakDirectly$1$1;

    invoke-direct {v2, p0}, Lsweet/tts/OtpRepeat$speakDirectly$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 191
    :cond_2
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6

    .line 193
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OtpRepeat: self-speak refused rc="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_5
    return-void

    .line 198
    :cond_6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static final speakDirectly$lambda$8$lambda$7(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 198
    :try_start_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private final startListening()V
    .locals 3

    .line 121
    sget-boolean v0, Lsweet/tts/OtpRepeat;->registered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lsweet/tts/OtpRepeat;->getAccelerometer()Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lsweet/tts/OtpRepeat;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast p0, Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    const/4 p0, 0x1

    .line 124
    sput-boolean p0, Lsweet/tts/OtpRepeat;->registered:Z

    return-void
.end method

.method private final declared-synchronized stopListening()V
    .locals 2

    monitor-enter p0

    .line 112
    :try_start_0
    sget-boolean v0, Lsweet/tts/OtpRepeat;->registered:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lsweet/tts/OtpRepeat;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lsweet/tts/OtpRepeat;->registered:Z

    :cond_1
    const/4 v0, 0x0

    .line 116
    sput-object v0, Lsweet/tts/OtpRepeat;->currentSpokenForm:Ljava/lang/String;

    .line 117
    const-string v0, "AllInOneTTS"

    const-string v1, "OtpRepeat: window expired, listener stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 129
    sget-wide v2, Lsweet/tts/OtpRepeat;->lastSampleTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/16 v4, 0x1

    .line 130
    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    .line 131
    sput-wide v0, Lsweet/tts/OtpRepeat;->lastSampleTime:J

    .line 132
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 133
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 134
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    add-float v4, v0, v1

    add-float/2addr v4, p1

    .line 135
    sget v5, Lsweet/tts/OtpRepeat;->lastX:F

    sub-float/2addr v4, v5

    sget v5, Lsweet/tts/OtpRepeat;->lastY:F

    sub-float/2addr v4, v5

    sget v5, Lsweet/tts/OtpRepeat;->lastZ:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v2

    .line 136
    sput v0, Lsweet/tts/OtpRepeat;->lastX:F

    .line 137
    sput v1, Lsweet/tts/OtpRepeat;->lastY:F

    .line 138
    sput p1, Lsweet/tts/OtpRepeat;->lastZ:F

    const/high16 p1, 0x44480000    # 800.0f

    cmpl-float p1, v4, p1

    if-lez p1, :cond_1

    .line 139
    invoke-virtual {p0}, Lsweet/tts/OtpRepeat;->onShakeDetected()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized onShakeDetected()V
    .locals 7

    monitor-enter p0

    .line 147
    :try_start_0
    sget-object v0, Lsweet/tts/OtpRepeat;->currentSpokenForm:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lsweet/tts/OtpRepeat;

    .line 148
    const-string v0, "AllInOneTTS"

    const-string v1, "OtpRepeat: shake detected, no live OTP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 152
    sget-wide v3, Lsweet/tts/OtpRepeat;->lastShakeTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    monitor-exit p0

    return-void

    .line 153
    :cond_1
    :try_start_2
    sput-wide v1, Lsweet/tts/OtpRepeat;->lastShakeTriggerTime:J

    .line 154
    const-string v1, "AllInOneTTS"

    const-string v2, "OtpRepeat: shake detected, repeating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v0}, Lsweet/tts/OtpRepeat;->speakDirectly(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized record(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "spokenForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawDigits"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sput-object p1, Lsweet/tts/OtpRepeat;->currentSpokenForm:Ljava/lang/String;

    .line 75
    sget-object p1, Lsweet/tts/OtpRepeat;->handler:Landroid/os/Handler;

    sget-object v0, Lsweet/tts/OtpRepeat;->expireRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/32 v1, 0x9c40

    .line 76
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    invoke-direct {p0}, Lsweet/tts/OtpRepeat;->startListening()V

    .line 78
    sget-object v0, Lsweet/tts/OtpRepeat;->pendingClipboardRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->otpClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 81
    sput-object v0, Lsweet/tts/OtpRepeat;->pendingClipboardRunnable:Ljava/lang/Runnable;

    .line 82
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2}, Lsweet/tts/Prefs;->otpClipboardDelaySec()I

    move-result p2

    int-to-long v1, p2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_1
    const-string p1, "AllInOneTTS"

    const-string p2, "OtpRepeat: recorded, window resets to 40000ms"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
