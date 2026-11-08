.class final Lsweet/tts/PlaySample$AudioTrackCallback;
.super Ljava/lang/Object;
.source "PlaySample.kt"

# interfaces
.implements Landroid/speech/tts/SynthesisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/PlaySample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTrackCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016J\"\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016J\u0008\u0010\u0013\u001a\u00020\nH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0016J\u0008\u0010\u0018\u001a\u00020\u0007H\u0016J\u0008\u0010\u0019\u001a\u00020\u0007H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lsweet/tts/PlaySample$AudioTrackCallback;",
        "Landroid/speech/tts/SynthesisCallback;",
        "<init>",
        "()V",
        "track",
        "Landroid/media/AudioTrack;",
        "started",
        "",
        "finished",
        "start",
        "",
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
.field private finished:Z

.field private started:Z

.field private track:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gtz p3, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    :try_start_0
    iget-object p0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->track:Landroid/media/AudioTrack;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 163
    const-string p1, "AllInOneTTS"

    const-string p2, "PlaySample: AudioTrack write failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public done()I
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->finished:Z

    .line 171
    :try_start_0
    iget-object v0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 172
    :cond_0
    iget-object p0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->track:Landroid/media/AudioTrack;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public error()V
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->finished:Z

    .line 179
    :try_start_0
    iget-object p0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->track:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public error(I)V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lsweet/tts/PlaySample$AudioTrackCallback;->error()V

    return-void
.end method

.method public getMaxBufferSize()I
    .locals 0

    const/16 p0, 0x2000

    return p0
.end method

.method public hasFinished()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->finished:Z

    return p0
.end method

.method public hasStarted()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->started:Z

    return p0
.end method

.method public start(III)I
    .locals 6

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->started:Z

    const/4 v1, 0x2

    if-lt p3, v1, :cond_0

    const/16 p3, 0xc

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    .line 131
    :goto_0
    :try_start_0
    invoke-static {p1, p3, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    const/16 v3, 0x400

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 132
    new-instance v3, Landroid/media/AudioTrack$Builder;

    invoke-direct {v3}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 134
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v5, 0xb

    .line 135
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 136
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 133
    invoke-virtual {v3, v4}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    .line 140
    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 141
    invoke-virtual {v4, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 139
    invoke-virtual {v3, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    mul-int/2addr v2, v1

    .line 146
    invoke-virtual {p1, v2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    .line 132
    iput-object p1, p0, Lsweet/tts/PlaySample$AudioTrackCallback;->track:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 152
    const-string p1, "AllInOneTTS"

    const-string p2, "PlaySample: AudioTrack setup failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method
