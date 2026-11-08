.class final Lsweet/tts/Tts$ChainedCallback;
.super Ljava/lang/Object;
.source "Tts.kt"

# interfaces
.implements Landroid/speech/tts/SynthesisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/Tts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChainedCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000eH\u0016J\"\u0010\u0018\u001a\u00020\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J \u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000eH\u0002J\u001c\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00082\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00060%J\u0008\u0010+\u001a\u00020\u000eH\u0016J\u0008\u0010,\u001a\u00020 H\u0016J\u0010\u0010,\u001a\u00020 2\u0006\u0010-\u001a\u00020\u000eH\u0016J\u0008\u0010.\u001a\u00020\u000eH\u0016J\u0008\u0010/\u001a\u00020\u0006H\u0016J\u0008\u00100\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u00061"
    }
    d2 = {
        "Lsweet/tts/Tts$ChainedCallback;",
        "Landroid/speech/tts/SynthesisCallback;",
        "real",
        "<init>",
        "(Landroid/speech/tts/SynthesisCallback;)V",
        "started",
        "",
        "firstStartAtNs",
        "",
        "getFirstStartAtNs",
        "()J",
        "setFirstStartAtNs",
        "(J)V",
        "realSampleRate",
        "",
        "realAudioFormat",
        "realChannelCount",
        "currentRunSampleRate",
        "currentRunAudioFormat",
        "currentRunChannelCount",
        "start",
        "sampleRateInHz",
        "audioFormat",
        "channelCount",
        "audioAvailable",
        "buffer",
        "",
        "offset",
        "length",
        "writeChunked",
        "playbackEndAtMs",
        "noteDelivered",
        "",
        "bytes",
        "awaitPlaybackDrain",
        "gapMs",
        "stopped",
        "Lkotlin/Function0;",
        "sawDone",
        "getSawDone",
        "()Z",
        "setSawDone",
        "(Z)V",
        "done",
        "error",
        "errorCode",
        "getMaxBufferSize",
        "hasStarted",
        "hasFinished",
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
.field private currentRunAudioFormat:I

.field private currentRunChannelCount:I

.field private currentRunSampleRate:I

.field private volatile firstStartAtNs:J

.field private volatile playbackEndAtMs:J

.field private final real:Landroid/speech/tts/SynthesisCallback;

.field private realAudioFormat:I

.field private realChannelCount:I

.field private realSampleRate:I

.field private volatile sawDone:Z

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/speech/tts/SynthesisCallback;)V
    .locals 1

    const-string v0, "real"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/Tts$ChainedCallback;->real:Landroid/speech/tts/SynthesisCallback;

    const/4 p1, 0x1

    .line 543
    iput p1, p0, Lsweet/tts/Tts$ChainedCallback;->realChannelCount:I

    .line 546
    iput p1, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunChannelCount:I

    return-void
.end method

.method private final noteDelivered(I)V
    .locals 6

    .line 616
    iget v0, p0, Lsweet/tts/Tts$ChainedCallback;->realSampleRate:I

    int-to-long v0, v0

    iget v2, p0, Lsweet/tts/Tts$ChainedCallback;->realChannelCount:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 618
    div-long/2addr v2, v0

    .line 619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 620
    iget-wide v4, p0, Lsweet/tts/Tts$ChainedCallback;->playbackEndAtMs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsweet/tts/Tts$ChainedCallback;->playbackEndAtMs:J

    return-void
.end method

.method private final writeChunked([BII)I
    .locals 3

    .line 597
    iget-object v0, p0, Lsweet/tts/Tts$ChainedCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->getMaxBufferSize()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    sub-int v1, p3, p2

    .line 601
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 602
    iget-object v2, p0, Lsweet/tts/Tts$ChainedCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v2, p1, p2, v1}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    .line 604
    :cond_0
    invoke-direct {p0, v1}, Lsweet/tts/Tts$ChainedCallback;->noteDelivered(I)V

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 8

    if-eqz p1, :cond_4

    if-gtz p3, :cond_0

    goto/16 :goto_1

    .line 577
    :cond_0
    iget v0, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunSampleRate:I

    iget v1, p0, Lsweet/tts/Tts$ChainedCallback;->realSampleRate:I

    if-eq v0, v1, :cond_3

    if-lez v0, :cond_3

    .line 578
    iget v2, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunAudioFormat:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 579
    iget v4, p0, Lsweet/tts/Tts$ChainedCallback;->realAudioFormat:I

    if-ne v4, v3, :cond_2

    .line 580
    iget v3, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunChannelCount:I

    iget v4, p0, Lsweet/tts/Tts$ChainedCallback;->realChannelCount:I

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 586
    :cond_1
    invoke-static {p1, p2, p3, v0, v1}, Lsweet/tts/TtsKt;->access$resamplePcm16Mono([BIIII)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 587
    array-length p3, p1

    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/Tts$ChainedCallback;->writeChunked([BII)I

    move-result p0

    return p0

    .line 582
    :cond_2
    :goto_0
    iget v3, p0, Lsweet/tts/Tts$ChainedCallback;->realAudioFormat:I

    .line 583
    iget v4, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunChannelCount:I

    iget v5, p0, Lsweet/tts/Tts$ChainedCallback;->realChannelCount:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ChainedCallback: sample-rate mismatch ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " vs "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") but format/channel combination isn\'t resamplable (audioFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " channels="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- forwarding unresampled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v1, "AllInOneTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/Tts$ChainedCallback;->writeChunked([BII)I

    move-result p0

    return p0

    .line 589
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/Tts$ChainedCallback;->writeChunked([BII)I

    move-result p0

    return p0

    .line 576
    :cond_4
    :goto_1
    iget-object p0, p0, Lsweet/tts/Tts$ChainedCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    move-result p0

    return p0
.end method

.method public final awaitPlaybackDrain(JLkotlin/jvm/functions/Function0;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)J"
        }
    .end annotation

    const-string v0, "stopped"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    iget-wide v0, p0, Lsweet/tts/Tts$ChainedCallback;->playbackEndAtMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-wide v2

    .line 629
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v0, p1

    .line 631
    :goto_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long p0, v0, p0

    cmp-long p2, p0, v2

    if-lez p2, :cond_1

    const-wide/16 v6, 0x19

    .line 634
    :try_start_0
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v4

    return-wide p0
.end method

.method public done()I
    .locals 1

    const/4 v0, 0x1

    .line 642
    iput-boolean v0, p0, Lsweet/tts/Tts$ChainedCallback;->sawDone:Z

    const/4 p0, 0x0

    return p0
.end method

.method public error()V
    .locals 0

    return-void
.end method

.method public error(I)V
    .locals 0

    return-void
.end method

.method public final getFirstStartAtNs()J
    .locals 2

    .line 531
    iget-wide v0, p0, Lsweet/tts/Tts$ChainedCallback;->firstStartAtNs:J

    return-wide v0
.end method

.method public getMaxBufferSize()I
    .locals 0

    .line 648
    iget-object p0, p0, Lsweet/tts/Tts$ChainedCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0}, Landroid/speech/tts/SynthesisCallback;->getMaxBufferSize()I

    move-result p0

    return p0
.end method

.method public final getSawDone()Z
    .locals 0

    .line 640
    iget-boolean p0, p0, Lsweet/tts/Tts$ChainedCallback;->sawDone:Z

    return p0
.end method

.method public hasFinished()Z
    .locals 0

    .line 650
    iget-object p0, p0, Lsweet/tts/Tts$ChainedCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0}, Landroid/speech/tts/SynthesisCallback;->hasFinished()Z

    move-result p0

    return p0
.end method

.method public hasStarted()Z
    .locals 0

    .line 649
    iget-boolean p0, p0, Lsweet/tts/Tts$ChainedCallback;->started:Z

    return p0
.end method

.method public final setFirstStartAtNs(J)V
    .locals 0

    .line 531
    iput-wide p1, p0, Lsweet/tts/Tts$ChainedCallback;->firstStartAtNs:J

    return-void
.end method

.method public final setSawDone(Z)V
    .locals 0

    .line 640
    iput-boolean p1, p0, Lsweet/tts/Tts$ChainedCallback;->sawDone:Z

    return-void
.end method

.method public start(III)I
    .locals 8

    .line 549
    iput p1, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunSampleRate:I

    .line 550
    iput p2, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunAudioFormat:I

    .line 551
    iput p3, p0, Lsweet/tts/Tts$ChainedCallback;->currentRunChannelCount:I

    .line 552
    iget-boolean v0, p0, Lsweet/tts/Tts$ChainedCallback;->started:Z

    const-string v1, " (same rates are not logged again until they change)"

    const-string v2, " channelCount="

    const-string v3, " audioFormat="

    const-string v4, "Speak"

    const-string v5, "/"

    if-eqz v0, :cond_2

    .line 553
    iget v0, p0, Lsweet/tts/Tts$ChainedCallback;->realSampleRate:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {}, Lsweet/tts/TtsKt;->access$getLastSuppressedNote$p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 555
    invoke-static {v0}, Lsweet/tts/TtsKt;->access$setLastSuppressedNote$p(Ljava/lang/String;)V

    .line 556
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    .line 557
    iget p0, p0, Lsweet/tts/Tts$ChainedCallback;->realSampleRate:I

    if-eq p1, p0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " -- MISMATCH vs real "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, ", will resample"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ChainedCallback.start() SUPPRESSED (already started) sampleRateInHz="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 556
    invoke-virtual {v0, v4, p0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lsweet/tts/Tts$ChainedCallback;->started:Z

    .line 563
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lsweet/tts/Tts$ChainedCallback;->firstStartAtNs:J

    .line 564
    iput p1, p0, Lsweet/tts/Tts$ChainedCallback;->realSampleRate:I

    .line 565
    iput p2, p0, Lsweet/tts/Tts$ChainedCallback;->realAudioFormat:I

    .line 566
    iput p3, p0, Lsweet/tts/Tts$ChainedCallback;->realChannelCount:I

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {}, Lsweet/tts/TtsKt;->access$getLastForwardNote$p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 569
    invoke-static {v0}, Lsweet/tts/TtsKt;->access$setLastForwardNote$p(Ljava/lang/String;)V

    .line 570
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ChainedCallback.start() forwarding to real callback (first run) sampleRateInHz="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_3
    iget-object p0, p0, Lsweet/tts/Tts$ChainedCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    move-result p0

    return p0
.end method
