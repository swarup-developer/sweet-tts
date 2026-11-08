.class public final Lsweet/tts/StressActivity;
.super Landroid/app/Activity;
.source "StressActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStressActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StressActivity.kt\nsweet/tts/StressActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n1#2:144\n1563#3:145\n1634#3,3:146\n774#3:149\n865#3,2:150\n1563#3:152\n1634#3,3:153\n774#3:156\n865#3,2:157\n1563#3:159\n1634#3,3:160\n*S KotlinDebug\n*F\n+ 1 StressActivity.kt\nsweet/tts/StressActivity\n*L\n62#1:145\n62#1:146,3\n62#1:149\n62#1:150,2\n63#1:152\n63#1:153,3\n76#1:156\n76#1:157,2\n76#1:159\n76#1:160,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\rH\u0014J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002J\"\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J0\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lsweet/tts/StressActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "LANGS16",
        "",
        "",
        "phrases",
        "running",
        "",
        "rate",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "servicePid",
        "newTts",
        "Landroid/speech/tts/TextToSpeech;",
        "engine",
        "done",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "errors",
        "runLoop",
        "iterations",
        "maxGap",
        "seed",
        "",
        "view",
        "Landroid/widget/TextView;",
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


# instance fields
.field private final LANGS16:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile phrases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile rate:I

.field private volatile running:Z


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 23
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    const/16 v1, 0x10

    .line 24
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "en"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hi"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "mr"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "bn"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "gu"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "pa"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v3, "ur"

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-string v3, "ar"

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const-string v3, "ne"

    const/16 v12, 0x8

    aput-object v3, v2, v12

    const-string v3, "or"

    const/16 v13, 0x9

    aput-object v3, v2, v13

    const-string v3, "kn"

    const/16 v14, 0xa

    aput-object v3, v2, v14

    const-string v3, "ta"

    const/16 v15, 0xb

    aput-object v3, v2, v15

    const-string v3, "te"

    const/16 v16, 0xc

    aput-object v3, v2, v16

    const-string v3, "ml"

    const/16 v17, 0xd

    aput-object v3, v2, v17

    const-string v3, "as"

    const/16 v18, 0xe

    aput-object v3, v2, v18

    const-string v3, "bho"

    const/16 v19, 0xf

    aput-object v3, v2, v19

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lsweet/tts/StressActivity;->LANGS16:Ljava/util/List;

    const/16 v2, 0x12

    .line 27
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Message Text box Compose message"

    aput-object v3, v2, v4

    .line 28
    const-string v3, "Home screen 1 of 1"

    aput-object v3, v2, v5

    .line 29
    const-string v3, "Apps"

    aput-object v3, v2, v6

    .line 30
    const-string v3, "YouTube Pro , 5 of 5 on the dock"

    aput-object v3, v2, v7

    .line 31
    const-string v3, "Double-tap to activate"

    aput-object v3, v2, v8

    .line 32
    const-string v3, "Knowledge For All  3:03 AM  Inamuddin added +91 9 9 6 3 1  9 4 0 2 8   36 unread messages"

    aput-object v3, v2, v9

    .line 33
    const-string v3, "WhatsApp"

    aput-object v3, v2, v10

    .line 34
    const-string v3, "SAVE COPY TO DOCUMENTS Button"

    aput-object v3, v2, v11

    .line 35
    const-string v3, "Battery 80 percent."

    aput-object v3, v2, v12

    .line 36
    const-string v3, "The quick brown fox jumps over the lazy dog while the screen reader keeps moving to the next item on the page."

    aput-object v3, v2, v13

    .line 37
    const-string v3, "Meanwhile, the committee decided that the proposal needed more time, and the vote was postponed until next week."

    aput-object v3, v2, v14

    .line 38
    const-string v3, "Tap to open. Swipe up with two fingers to dismiss the notification."

    aput-object v3, v2, v15

    .line 39
    const-string v3, "08"

    aput-object v3, v2, v16

    .line 40
    const-string v3, "\u092f\u0947 \u090f\u0915 \u0939\u093f\u0902\u0926\u0940 \u0935\u093e\u0915\u094d\u092f \u0939\u0948 \u091c\u094b \u0905\u0902\u0917\u094d\u0930\u0947\u091c\u093c\u0940 \u0936\u092c\u094d\u0926 message \u0915\u0947 \u0938\u093e\u0925 \u092e\u093f\u0932\u093e \u0939\u0941\u0906 \u0939\u0948\u0964"

    aput-object v3, v2, v17

    .line 41
    const-string v3, "\u0906\u091c \u0915\u093e \u092e\u094c\u0938\u092e \u092c\u0939\u0941\u0924 \u0905\u091a\u094d\u091b\u093e \u0939\u0948 \u0914\u0930 \u0939\u092e \u0938\u092c \u092c\u093e\u0939\u0930 \u0918\u0942\u092e\u0928\u0947 \u091c\u093e \u0930\u0939\u0947 \u0939\u0948\u0902\u0964"

    aput-object v3, v2, v18

    .line 42
    const-string v3, "Hello, this is a mixed message: \u0928\u092e\u0938\u094d\u0924\u0947 \u0926\u094b\u0938\u094d\u0924\u094b, how are you doing today?"

    aput-object v3, v2, v19

    .line 43
    const-string v3, "OTP 482913 is your verification code, do not share it with anyone."

    aput-object v3, v2, v1

    const/16 v1, 0x11

    .line 44
    const-string v3, "3:45 PM Rahul: see you at 7, call me on +91 98294 83956"

    aput-object v3, v2, v1

    .line 26
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lsweet/tts/StressActivity;->phrases:Ljava/util/List;

    .line 47
    iput-boolean v5, v0, Lsweet/tts/StressActivity;->running:Z

    const/16 v1, 0x112

    .line 48
    iput v1, v0, Lsweet/tts/StressActivity;->rate:I

    return-void
.end method

.method private final newTts(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/speech/tts/TextToSpeech;
    .locals 5

    .line 80
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 81
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 82
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lsweet/tts/StressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lsweet/tts/StressActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0}, Lsweet/tts/StressActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3, v4, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 83
    iget p0, p0, Lsweet/tts/StressActivity;->rate:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-virtual {v2, p0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 84
    new-instance p0, Lsweet/tts/StressActivity$newTts$1;

    invoke-direct {p0, p2, p3}, Lsweet/tts/StressActivity$newTts$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    check-cast p0, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v2, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    const-wide/16 p0, 0xa

    .line 90
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 91
    iget-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static final newTts$lambda$8(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 82
    :goto_0
    iput-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static final onCreate$lambda$5(Lsweet/tts/StressActivity;IIJLjava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p6}, Lsweet/tts/StressActivity;->runLoop(IIJLjava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method private final runLoop(IIJLjava/lang/String;Landroid/widget/TextView;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 95
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 96
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 97
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 98
    invoke-direct {v0, v5, v7, v8}, Lsweet/tts/StressActivity;->newTts(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/speech/tts/TextToSpeech;

    move-result-object v9

    .line 99
    invoke-direct {v0}, Lsweet/tts/StressActivity;->servicePid()I

    move-result v10

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    if-eqz v9, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 103
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v13, "START iterations="

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " maxGap="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " seed="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ttsReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AIO_STRESS"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v3, " elapsedS="

    const-string v13, " bindFailures="

    const-string v14, " errors="

    const-string v15, " done="

    const-wide/16 v17, 0x3e8

    const/4 v2, 0x1

    if-gt v2, v1, :cond_b

    const/4 v2, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    move-object/from16 p3, v9

    .line 105
    iget-boolean v9, v0, Lsweet/tts/StressActivity;->running:Z

    if-eqz v9, :cond_9

    if-nez p3, :cond_1

    .line 107
    invoke-direct {v0, v5, v7, v8}, Lsweet/tts/StressActivity;->newTts(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/speech/tts/TextToSpeech;

    move-result-object v9

    if-nez v9, :cond_2

    add-int/lit8 v19, v19, 0x1

    const-wide/16 v21, 0x1f4

    .line 108
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v25, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v11

    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_1
    move-object/from16 v9, p3

    .line 110
    :cond_2
    iget-object v5, v0, Lsweet/tts/StressActivity;->phrases:Ljava/util/List;

    move-object/from16 v21, v7

    iget-object v7, v0, Lsweet/tts/StressActivity;->phrases:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 111
    iget v7, v0, Lsweet/tts/StressActivity;->rate:I

    int-to-float v7, v7

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v7, v7, v22

    invoke-virtual {v9, v7}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 112
    check-cast v5, Ljava/lang/CharSequence;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v22, v8

    const-string v8, "s"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-wide/from16 v23, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11, v8, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v19, v19, 0x1

    .line 115
    :try_start_0
    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-object v9, v8

    :cond_3
    move/from16 v5, v19

    const/16 v7, 0xa

    .line 119
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/16 v8, 0x3c

    packed-switch v7, :pswitch_data_0

    const/16 v16, 0x1

    add-int/lit8 v7, p2, 0x1

    .line 123
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    goto :goto_3

    :pswitch_0
    const/16 v7, 0x8c

    .line 122
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v8

    goto :goto_2

    .line 121
    :pswitch_1
    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    goto :goto_2

    :pswitch_2
    move v7, v11

    :goto_2
    const/16 v16, 0x1

    :goto_3
    int-to-long v7, v7

    .line 125
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    const/16 v7, 0x64

    .line 126
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/16 v8, 0xf

    if-ge v7, v8, :cond_5

    if-eqz v9, :cond_4

    :try_start_1
    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_4
    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 127
    :cond_5
    rem-int/lit8 v7, v2, 0xa

    if-nez v7, :cond_7

    .line 128
    invoke-direct {v0}, Lsweet/tts/StressActivity;->servicePid()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    if-eq v10, v8, :cond_6

    if-eq v7, v10, :cond_6

    add-int/lit8 v12, v20, 0x1

    .line 131
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v8, "SERVICE PROCESS RESTARTED at iteration "

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " (pid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " -> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "), total restarts="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v12

    :cond_6
    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    move v10, v7

    :cond_7
    move/from16 v7, v20

    .line 135
    rem-int/lit8 v8, v2, 0x32

    if-nez v8, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v23

    move-object/from16 p3, v9

    move/from16 p4, v10

    div-long v9, v19, v17

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v25, v6

    const-string v6, "progress "

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " restarts="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move-object/from16 v25, v6

    move-object/from16 p3, v9

    move/from16 p4, v10

    :goto_4
    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v19, v5

    move/from16 v20, v7

    :goto_5
    if-eq v2, v1, :cond_a

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, p5

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-wide/from16 v11, v23

    move-object/from16 v6, v25

    goto/16 :goto_1

    :cond_9
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v11

    move-object/from16 v9, p3

    :cond_a
    move/from16 v2, v19

    move/from16 v1, v20

    goto :goto_6

    :cond_b
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-eqz v9, :cond_c

    .line 137
    :try_start_2
    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 138
    :catchall_2
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v23

    div-long v7, v7, v17

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FINISHED restarts="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v2, Lsweet/tts/StressActivity$$ExternalSyntheticLambda1;

    move-object/from16 v3, p6

    invoke-direct {v2, v3, v1}, Lsweet/tts/StressActivity$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lsweet/tts/StressActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static final runLoop$lambda$9(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 140
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final servicePid()I
    .locals 11

    const/4 p0, -0x1

    .line 74
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "pidof sweet.tts"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getInputStream(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of v0, v2, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v0

    :goto_0
    check-cast v2, Ljava/io/Reader;

    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    new-array v6, v4, [C

    const/16 v0, 0x20

    aput-char v0, v6, v3

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 76
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 157
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 76
    check-cast v1, Ljava/lang/Iterable;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 160
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 161
    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 161
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 76
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    .line 51
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {v1}, Lsweet/tts/StressActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 53
    new-instance v7, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "AIO stress test running (see logcat tag AIO_STRESS)"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    move-object v0, v7

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lsweet/tts/StressActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {v1}, Lsweet/tts/StressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "iterations"

    const/16 v3, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 56
    invoke-virtual {v1}, Lsweet/tts/StressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "maxGap"

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 57
    invoke-virtual {v1}, Lsweet/tts/StressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "seed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 58
    invoke-virtual {v1}, Lsweet/tts/StressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "engine"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sweet.tts"

    :cond_0
    move-object v6, v0

    .line 59
    invoke-virtual {v1}, Lsweet/tts/StressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "rate"

    const/16 v9, 0x112

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lsweet/tts/StressActivity;->rate:I

    .line 61
    invoke-virtual {v1}, Lsweet/tts/StressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "langs"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 62
    const-string v8, "all16"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_1

    iget-object v0, v1, Lsweet/tts/StressActivity;->LANGS16:Ljava/util/List;

    goto :goto_2

    :cond_1
    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v11, v0, [C

    const/16 v0, 0x2c

    const/4 v8, 0x0

    aput-char v0, v11, v8

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 145
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 147
    check-cast v10, Ljava/lang/String;

    .line 62
    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_2
    check-cast v8, Ljava/util/List;

    .line 145
    check-cast v8, Ljava/lang/Iterable;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 150
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 62
    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 150
    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 63
    :goto_2
    check-cast v0, Ljava/lang/Iterable;

    .line 152
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 154
    check-cast v9, Ljava/lang/String;

    .line 63
    sget-object v10, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    invoke-virtual {v10, v9}, Lsweet/tts/PlaySample;->textFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 155
    :cond_5
    check-cast v8, Ljava/util/List;

    .line 63
    iput-object v8, v1, Lsweet/tts/StressActivity;->phrases:Ljava/util/List;

    .line 65
    :cond_6
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;

    invoke-direct/range {v0 .. v7}, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;-><init>(Lsweet/tts/StressActivity;IIJLjava/lang/String;Landroid/widget/TextView;)V

    const-string v1, "aio-stress"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lsweet/tts/StressActivity;->running:Z

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
