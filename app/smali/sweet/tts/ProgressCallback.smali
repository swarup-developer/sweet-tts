.class public final Lsweet/tts/ProgressCallback;
.super Ljava/lang/Object;
.source "Watchdog.kt"

# interfaces
.implements Landroid/speech/tts/SynthesisCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\"\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0016J\u0008\u0010\u001a\u001a\u00020\u000eH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000eH\u0016J \u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lsweet/tts/ProgressCallback;",
        "Landroid/speech/tts/SynthesisCallback;",
        "real",
        "<init>",
        "(Landroid/speech/tts/SynthesisCallback;)V",
        "realClass",
        "",
        "getRealClass",
        "()Ljava/lang/String;",
        "createdNs",
        "",
        "firstAudioLogged",
        "",
        "getMaxBufferSize",
        "",
        "hasStarted",
        "hasFinished",
        "start",
        "sampleRateInHz",
        "audioFormat",
        "channelCount",
        "audioAvailable",
        "buffer",
        "",
        "offset",
        "length",
        "done",
        "error",
        "",
        "errorCode",
        "rangeStart",
        "markerInFrames",
        "end",
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
.field private final createdNs:J

.field private firstAudioLogged:Z

.field private final real:Landroid/speech/tts/SynthesisCallback;


# direct methods
.method public constructor <init>(Landroid/speech/tts/SynthesisCallback;)V
    .locals 2

    const-string v0, "real"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lsweet/tts/ProgressCallback;->createdNs:J

    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 0

    .line 113
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    move-result p0

    .line 114
    sget-object p1, Lsweet/tts/StallWatch;->INSTANCE:Lsweet/tts/StallWatch;

    invoke-virtual {p1}, Lsweet/tts/StallWatch;->progress()V

    return p0
.end method

.method public done()I
    .locals 4

    .line 121
    iget-object v0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.speech.tts.FileSynthesisCallback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    const-string v1, "Speak"

    const-string v2, "file request ended without audio: empty WAV written"

    invoke-virtual {v0, v1, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x5622

    invoke-interface {v0, v3, v1, v2}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    .line 125
    :cond_0
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0}, Landroid/speech/tts/SynthesisCallback;->done()I

    move-result p0

    return p0
.end method

.method public error()V
    .locals 0

    .line 127
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0}, Landroid/speech/tts/SynthesisCallback;->error()V

    return-void
.end method

.method public error(I)V
    .locals 0

    .line 128
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0, p1}, Landroid/speech/tts/SynthesisCallback;->error(I)V

    return-void
.end method

.method public getMaxBufferSize()I
    .locals 0

    .line 101
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0}, Landroid/speech/tts/SynthesisCallback;->getMaxBufferSize()I

    move-result p0

    return p0
.end method

.method public final getRealClass()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public hasFinished()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0}, Landroid/speech/tts/SynthesisCallback;->hasFinished()Z

    move-result p0

    return p0
.end method

.method public hasStarted()Z
    .locals 0

    .line 102
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0}, Landroid/speech/tts/SynthesisCallback;->hasStarted()Z

    move-result p0

    return p0
.end method

.method public rangeStart(III)V
    .locals 0

    .line 129
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/speech/tts/SynthesisCallback;->rangeStart(III)V

    return-void
.end method

.method public start(III)I
    .locals 5

    .line 105
    sget-object v0, Lsweet/tts/StallWatch;->INSTANCE:Lsweet/tts/StallWatch;

    invoke-virtual {v0}, Lsweet/tts/StallWatch;->progress()V

    .line 106
    iget-boolean v0, p0, Lsweet/tts/ProgressCallback;->firstAudioLogged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lsweet/tts/ProgressCallback;->firstAudioLogged:Z

    .line 108
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lsweet/tts/ProgressCallback;->createdNs:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "first audio ready "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms after the request reached the engine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Audio"

    invoke-virtual {v0, v2, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object p0, p0, Lsweet/tts/ProgressCallback;->real:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    move-result p0

    return p0
.end method
