.class public final Lsweet/tts/EloquenceVoiceBackend;
.super Ljava/lang/Object;
.source "EloquenceVoiceBackend.kt"

# interfaces
.implements Lsweet/tts/VoiceBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/EloquenceVoiceBackend$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J:\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J0\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lsweet/tts/EloquenceVoiceBackend;",
        "Lsweet/tts/VoiceBackend;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "stopRequested",
        "",
        "resolveVoiceName",
        "",
        "lang",
        "appPackage",
        "beginUtterance",
        "",
        "wasStopped",
        "stop",
        "speak",
        "text",
        "callback",
        "Landroid/speech/tts/SynthesisCallback;",
        "callerRate",
        "",
        "callerPitch",
        "speakLocked",
        "Companion",
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
.field public static final Companion:Lsweet/tts/EloquenceVoiceBackend$Companion;

.field private static final STREAM_BUFFER_SIZE:I = 0x1000


# instance fields
.field private volatile stopRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/EloquenceVoiceBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/EloquenceVoiceBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/EloquenceVoiceBackend;->Companion:Lsweet/tts/EloquenceVoiceBackend$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_elq
    sget-object p0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {p0}, Lsweet/tts/EloquenceHub;->engine()Lorg/eloqium/tts/engine/EloqiumEngine;
    :try_end_elq

    .catchall {:try_start_elq .. :try_end_elq} :catch_elq

    :catch_elq
    return-void
.end method

.method private final speakLocked(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;II)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v0, p4

    move/from16 v3, p5

    .line 72
    const-string v10, "engine refused chunk "

    const-string v11, ")"

    const-string v12, "/"

    iget-boolean v4, v1, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    const-string v13, " text="

    const-string v14, "Speak"

    if-eqz v4, :cond_0

    .line 73
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v1, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v1, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STOPPED before start (Eloquence) lang="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    sget-object v4, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v4}, Lsweet/tts/EloquenceHub;->engine()Lorg/eloqium/tts/engine/EloqiumEngine;

    move-result-object v20

    const/4 v4, -0x3

    .line 77
    const-string v5, "AllInOneTTS"

    if-nez v20, :cond_1

    .line 78
    const-string v0, "Eloquence engine not available, cannot speak"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    sget-object v1, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v1, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "FAILED (Eloquence/ETI Eloquence engine not available) lang="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v1, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v1, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {v9, v4}, Landroid/speech/tts/SynthesisCallback;->error(I)V

    return-void

    .line 90
    :cond_1
    sget-object v6, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v7, "ETI Eloquence"

    invoke-virtual {v6, v7}, Lsweet/tts/Prefs;->rateFor(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v6, v0

    int-to-float v6, v6

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v6, v15

    float-to-int v6, v6

    const/16 v4, 0x1c2

    move-object/from16 v22, v5

    const/4 v5, 0x1

    invoke-static {v6, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    .line 91
    sget-object v6, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v6, v7}, Lsweet/tts/Prefs;->pitchFor(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v6, v3

    int-to-float v6, v6

    div-float/2addr v6, v15

    float-to-int v6, v6

    move/from16 v16, v15

    const/16 v15, 0xc8

    invoke-static {v6, v5, v15}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v26

    mul-int/lit8 v6, v4, 0x39

    int-to-float v6, v6

    div-float v6, v6, v16

    float-to-int v6, v6

    const/16 v15, 0x28

    const/16 v5, 0xfa

    .line 96
    invoke-static {v6, v15, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v17

    .line 97
    sget-object v5, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v5, v7}, Lsweet/tts/Prefs;->volumeFor(Ljava/lang/String;)I

    move-result v27

    .line 102
    sget-object v5, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {v5}, Lsweet/tts/EloquenceVoice;->preset()I

    move-result v15

    .line 103
    sget-object v5, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {v5, v15}, Lsweet/tts/EloquenceVoice;->shape(I)Ljava/util/Map;

    move-result-object v16

    move/from16 v18, v26

    move/from16 v19, v27

    .line 112
    invoke-static/range {v15 .. v20}, Lsweet/tts/EloquenceVoiceBackend;->speakLocked$configure(ILjava/util/Map;IIILorg/eloqium/tts/engine/EloqiumEngine;)V

    move/from16 v23, v15

    move/from16 v15, v18

    move/from16 v5, v19

    const/4 v6, 0x1

    .line 114
    sget-object v7, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, "voice=ETI Eloquence(Eloquence) lang="

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " callerRate="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callerPitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> effectiveRatePercent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " effectivePitchPercent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " effectiveVolume="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v7, v14, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->INSTANCE:Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x60

    const/16 v4, 0x27

    move/from16 v27, v5

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move/from16 v26, v15

    move-object/from16 v29, v22

    const/4 v15, 0x1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->apply(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v3, Lsweet/tts/EloquencePieces;->INSTANCE:Lsweet/tts/EloquencePieces;

    invoke-virtual {v3, v0}, Lsweet/tts/EloquencePieces;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual/range {v20 .. v20}, Lorg/eloqium/tts/engine/EloqiumEngine;->getSampleRateHz()I

    move-result v0

    invoke-interface {v9, v0, v4, v15}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    invoke-static {v0}, Lsweet/tts/SpeakerRoute;->noteSampleRate(I)V

    .line 127
    invoke-interface {v9}, Landroid/speech/tts/SynthesisCallback;->done()I

    return-void

    :cond_2
    const/16 v3, 0x1000

    .line 142
    new-array v3, v3, [B

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 148
    const-string v18, ""

    const-wide/16 v21, 0x0

    move/from16 v19, v5

    move/from16 v24, v19

    move/from16 v30, v24

    move/from16 v31, v30

    move/from16 v36, v31

    move-object/from16 v39, v18

    move-object/from16 v4, v20

    move-wide/from16 v32, v21

    move-wide/from16 v34, v32

    move-wide/from16 v37, v34

    move/from16 v20, v36

    .line 149
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_11

    .line 150
    iget-boolean v15, v1, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    if-nez v15, :cond_11

    if-eqz v19, :cond_3

    goto/16 :goto_c

    .line 151
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v40, v0

    .line 152
    invoke-static/range {v40 .. v40}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    if-ne v5, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    move-wide/from16 v41, v6

    .line 153
    :try_start_1
    sget-object v6, Lorg/eloqium/tts/pipeline/PauseProcessor;->INSTANCE:Lorg/eloqium/tts/pipeline/PauseProcessor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object/from16 v43, v13

    const/4 v7, 0x0

    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v6, v15, v7, v13, v0}, Lorg/eloqium/tts/pipeline/PauseProcessor;->process(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v6, Lorg/eloqium/tts/pipeline/OpenEVVEncoder;->INSTANCE:Lorg/eloqium/tts/pipeline/OpenEVVEncoder;

    sget-object v7, Lorg/eloqium/tts/pipeline/UnicodeNormalizer;->INSTANCE:Lorg/eloqium/tts/pipeline/UnicodeNormalizer;

    invoke-virtual {v7, v0}, Lorg/eloqium/tts/pipeline/UnicodeNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/eloqium/tts/pipeline/OpenEVVEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 163
    sget-object v6, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v6, v4}, Lsweet/tts/EloquenceHub;->arm(Lorg/eloqium/tts/engine/EloqiumEngine;)V

    .line 164
    invoke-virtual {v4, v0}, Lorg/eloqium/tts/engine/EloqiumEngine;->speakBytes([B)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-nez v0, :cond_6

    .line 165
    :try_start_3
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v0}, Lsweet/tts/EloquenceHub;->disarm()V

    .line 166
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eloquence engine refused text chunk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v6, v29

    :try_start_4
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lsweet/tts/EloquenceHub;->reportBroken(Lorg/eloqium/tts/engine/EloqiumEngine;Ljava/lang/String;)V

    if-nez v24, :cond_5

    .line 172
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v0}, Lsweet/tts/EloquenceHub;->engine()Lorg/eloqium/tts/engine/EloqiumEngine;

    move-result-object v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v28, :cond_5

    move-object/from16 v24, v16

    move/from16 v25, v17

    .line 175
    :try_start_5
    invoke-static/range {v23 .. v28}, Lsweet/tts/EloquenceVoiceBackend;->speakLocked$configure(ILjava/util/Map;IIILorg/eloqium/tts/engine/EloqiumEngine;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v29, v6

    move-object/from16 v4, v28

    move-object/from16 v0, v40

    move-wide/from16 v6, v41

    move-object/from16 v13, v43

    const/16 v24, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v4, v28

    goto/16 :goto_11

    .line 179
    :cond_5
    :try_start_6
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :cond_6
    move-object/from16 v6, v29

    move-object v0, v12

    move-wide/from16 v12, v32

    .line 191
    :goto_2
    :try_start_7
    invoke-virtual {v4, v3}, Lorg/eloqium/tts/engine/EloqiumEngine;->read([B)I

    move-result v7

    .line 192
    sget-object v15, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v15}, Lsweet/tts/EloquenceHub;->progress()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-gez v7, :cond_7

    if-eqz v20, :cond_7

    goto :goto_4

    :cond_7
    if-gez v7, :cond_8

    .line 195
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "engine read failed ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 198
    :try_start_9
    sget-object v5, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v5}, Lsweet/tts/EloquenceHub;->disarm()V

    .line 199
    sget-object v5, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v5, v4, v0}, Lsweet/tts/EloquenceHub;->reportBroken(Lorg/eloqium/tts/engine/EloqiumEngine;Ljava/lang/String;)V

    move-object/from16 v39, v0

    move-wide/from16 v32, v12

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    goto/16 :goto_a

    :cond_8
    if-nez v7, :cond_9

    .line 234
    :goto_4
    sget-object v7, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v7}, Lsweet/tts/EloquenceHub;->disarm()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v29, v6

    move-wide/from16 v32, v12

    move-wide/from16 v6, v41

    move-object/from16 v13, v43

    move-object v12, v0

    move-object/from16 v0, v40

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-wide/from16 v32, v12

    goto/16 :goto_11

    :cond_9
    if-nez v19, :cond_e

    .line 203
    :try_start_a
    iget-boolean v15, v1, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    if-eqz v15, :cond_a

    goto/16 :goto_7

    :cond_a
    if-nez v36, :cond_c

    .line 214
    invoke-virtual {v4}, Lorg/eloqium/tts/engine/EloqiumEngine;->getSampleRateHz()I

    move-result v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-object/from16 v25, v0

    move-object/from16 v28, v4

    const/4 v0, 0x2

    const/4 v4, 0x1

    :try_start_b
    invoke-static {v15}, Lsweet/tts/SpeakerRoute;->noteSampleRate(I)V

    invoke-interface {v9, v15, v0, v4}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    move-result v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v15, :cond_b

    .line 216
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callback.start returned "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move v0, v5

    int-to-long v4, v7

    add-long v34, v34, v4

    :goto_5
    move v5, v0

    move-object/from16 v0, v25

    move-object/from16 v4, v28

    const/16 v19, 0x1

    const/16 v31, 0x1

    goto/16 :goto_2

    :cond_b
    const/16 v36, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v25, v0

    move-object/from16 v28, v4

    :goto_6
    move v0, v5

    const/4 v4, 0x0

    .line 223
    :try_start_d
    invoke-static {v9, v3, v4, v7}, Lsweet/tts/EloquenceVoiceBackend;->writeAudioRouted(Landroid/speech/tts/SynthesisCallback;[BII)I

    move-result v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v5, :cond_d

    .line 227
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "callback.audioAvailable returned "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " after "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bytes"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-wide/from16 v32, v12

    move-object/from16 v4, v28

    const/4 v5, 0x1

    const/16 v19, 0x1

    const/16 v31, 0x1

    goto/16 :goto_12

    :cond_d
    int-to-long v4, v7

    add-long/2addr v12, v4

    move v5, v0

    move-object/from16 v0, v25

    move-object/from16 v4, v28

    const/16 v30, 0x1

    goto/16 :goto_2

    :cond_e
    :goto_7
    move-object/from16 v25, v0

    move-object/from16 v28, v4

    move v0, v5

    if-nez v19, :cond_f

    .line 204
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-wide/from16 v37, v4

    const/16 v19, 0x1

    goto :goto_8

    :catchall_6
    move-exception v0

    move-wide/from16 v32, v12

    move-object/from16 v4, v28

    const/4 v5, 0x1

    const/16 v19, 0x1

    goto/16 :goto_12

    :cond_f
    :goto_8
    if-nez v20, :cond_10

    .line 205
    :try_start_10
    sget-object v4, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v4}, Lsweet/tts/EloquenceHub;->fastStopAllowed()Z

    move-result v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-eqz v4, :cond_10

    .line 207
    :try_start_11
    sget-object v4, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v4}, Lsweet/tts/EloquenceHub;->noteFastStop()V

    .line 208
    invoke-virtual/range {v28 .. v28}, Lorg/eloqium/tts/engine/EloqiumEngine;->emergencyStop()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    const/16 v20, 0x1

    goto :goto_9

    :catchall_7
    move-exception v0

    move-wide/from16 v32, v12

    move-object/from16 v4, v28

    const/4 v5, 0x1

    const/16 v20, 0x1

    goto :goto_12

    :catchall_8
    move-exception v0

    move-wide/from16 v32, v12

    move-object/from16 v4, v28

    goto :goto_b

    :cond_10
    :goto_9
    int-to-long v4, v7

    add-long v34, v34, v4

    move v5, v0

    move-object/from16 v0, v25

    move-object/from16 v4, v28

    goto/16 :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v28, v4

    :goto_a
    move-wide/from16 v32, v12

    :goto_b
    const/4 v5, 0x1

    goto :goto_12

    :catchall_a
    move-exception v0

    move-object/from16 v28, v4

    goto :goto_10

    :catchall_b
    move-exception v0

    move-object/from16 v28, v4

    goto :goto_f

    :cond_11
    :goto_c
    move-wide/from16 v41, v6

    move-object/from16 v43, v13

    move-object/from16 v6, v29

    const/4 v5, 0x0

    .line 249
    :goto_d
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v0}, Lsweet/tts/EloquenceHub;->disarm()V

    :goto_e
    move-wide/from16 v3, v32

    move-wide/from16 v12, v34

    move-object/from16 v0, v39

    goto :goto_14

    :catchall_c
    move-exception v0

    move-object/from16 v28, v4

    move-wide/from16 v41, v6

    :goto_f
    move-object/from16 v43, v13

    :goto_10
    move-object/from16 v6, v29

    :goto_11
    const/4 v5, 0x0

    .line 240
    :goto_12
    :try_start_12
    const-string v7, "EloquenceVoiceBackend.speak: unexpected exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    if-eqz v5, :cond_12

    .line 247
    :goto_13
    :try_start_13
    invoke-virtual {v4, v3}, Lorg/eloqium/tts/engine/EloqiumEngine;->read([B)I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    if-lez v0, :cond_12

    int-to-long v12, v0

    add-long v34, v34, v12

    goto :goto_13

    .line 249
    :catchall_d
    :cond_12
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v0}, Lsweet/tts/EloquenceHub;->disarm()V

    const/4 v5, 0x1

    goto :goto_e

    .line 251
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v9, v15, v41

    if-eqz v19, :cond_16

    cmp-long v7, v37, v21

    if-lez v7, :cond_13

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v21, v15, v37

    :cond_13
    move/from16 p4, v5

    move-object/from16 v29, v6

    move-wide/from16 v5, v21

    .line 254
    sget-object v7, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    if-eqz v31, :cond_14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "the framework ("

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_15

    :cond_14
    const-string v8, "onStop"

    :goto_15
    if-eqz v20, :cond_15

    .line 256
    const-string v18, " (engine stopped at once)"

    :cond_15
    move-object/from16 v11, v18

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v0, "INTERRUPTED (Eloquence) by "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "; audio heard before the cut: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " bytes; rest of the sentence discarded: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " bytes in "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v7, v14, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v31, :cond_17

    const/4 v13, 0x1

    .line 258
    iput-boolean v13, v1, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    goto :goto_16

    :cond_16
    move-object/from16 v16, v0

    move/from16 p4, v5

    move-object/from16 v29, v6

    .line 261
    :cond_17
    :goto_16
    iget-boolean v0, v1, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    const-string v1, " bytesSent="

    const-string v5, " lang="

    if-eqz v0, :cond_18

    .line 264
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v6, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v6, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STOPPED (Eloquence/ETI Eloquence) elapsedMs="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v43

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    move-object/from16 v8, p2

    move-object/from16 v6, v43

    .line 267
    const-string v0, " elapsedMs="

    if-eqz p4, :cond_19

    .line 268
    sget-object v7, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v7, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PRODUCTION SPEAK FAILED (Eloquence/ETI Eloquence callback exception) text="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, v29

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v7, Lsweet/tts/StopClock;->INSTANCE:Lsweet/tts/StopClock;

    invoke-virtual {v7}, Lsweet/tts/StopClock;->noteFail()V

    .line 270
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "reason="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v16

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    sget-object v3, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    sget-object v4, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v4, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "FAILED (Eloquence/ETI Eloquence callback exception) "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v3, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v4, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v4, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v14, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p3

    const/4 v3, -0x3

    .line 273
    :try_start_14
    invoke-interface {v1, v3}, Landroid/speech/tts/SynthesisCallback;->error(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    goto/16 :goto_17

    :cond_19
    move-object/from16 v1, p3

    move-object/from16 v11, v29

    const/4 v3, -0x3

    .line 274
    const-string v4, "callback.done() threw"

    if-nez v30, :cond_1a

    invoke-static {v2}, Lsweet/tts/WatchdogKt;->hasSpeakableChars(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 277
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    sget-object v3, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v3, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "SKIPPED (nothing to speak) lang="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v3, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v3, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "SKIPPED (nothing to speak) elapsedMs="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :try_start_15
    invoke-interface {v1}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto/16 :goto_17

    :catchall_e
    move-exception v0

    invoke-static {v11, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    :cond_1a
    if-nez v30, :cond_1b

    .line 281
    sget-object v0, Lsweet/tts/StopClock;->INSTANCE:Lsweet/tts/StopClock;

    invoke-virtual {v0}, Lsweet/tts/StopClock;->noteFail()V

    .line 282
    sget-object v0, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v0, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "PRODUCTION SPEAK FAILED (Eloquence/ETI Eloquence, no audio received) text="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    sget-object v4, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v4, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "FAILED (Eloquence/ETI Eloquence, no audio received) lang="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v4, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v4, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "FAILED (Eloquence/ETI Eloquence, no audio received) elapsedMs="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :try_start_16
    invoke-interface {v1, v3}, Landroid/speech/tts/SynthesisCallback;->error(I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    goto :goto_17

    .line 287
    :cond_1b
    sget-object v3, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v3, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "PRODUCTION SPEAK OK (Eloquence/ETI Eloquence) lang="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v3, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    sget-object v5, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v5, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "OK (Eloquence/ETI Eloquence) lang="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v14, v5}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v3, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v5, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v5, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v14, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :try_start_17
    invoke-interface {v1}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception v0

    invoke-static {v11, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catchall_10
    :goto_17
    return-void

    :catchall_11
    move-exception v0

    if-eqz v5, :cond_1c

    .line 247
    :goto_18
    :try_start_18
    invoke-virtual {v4, v3}, Lorg/eloqium/tts/engine/EloqiumEngine;->read([B)I

    move-result v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_12

    if-lez v1, :cond_1c

    goto :goto_18

    .line 249
    :catchall_12
    :cond_1c
    sget-object v1, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v1}, Lsweet/tts/EloquenceHub;->disarm()V

    throw v0
.end method

.method private static final speakLocked$configure(ILjava/util/Map;IIILorg/eloqium/tts/engine/EloqiumEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;III",
            "Lorg/eloqium/tts/engine/EloqiumEngine;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-virtual {p5, p0, p1}, Lorg/eloqium/tts/engine/EloqiumEngine;->applyVoice(ILjava/util/Map;)V

    .line 106
    invoke-virtual {p5, p2}, Lorg/eloqium/tts/engine/EloqiumEngine;->setSpeed(I)V

    .line 108
    invoke-virtual {p5, p3}, Lorg/eloqium/tts/engine/EloqiumEngine;->setPitchPercent(I)V

    .line 110
    invoke-virtual {p5, p4}, Lorg/eloqium/tts/engine/EloqiumEngine;->setVolume(I)V

    return-void
.end method


# virtual methods
.method public beginUtterance()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    return-void
.end method

.method public resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const-string p0, "ETI Eloquence"

    return-object p0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    .locals 1

    const-string p6, "text"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "lang"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "callback"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p6, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {p6}, Lsweet/tts/EloquenceHub;->getUtteranceLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p6

    invoke-virtual {p6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 65
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lsweet/tts/EloquenceVoiceBackend;->speakLocked(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-object p0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {p0}, Lsweet/tts/EloquenceHub;->getUtteranceLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {p1}, Lsweet/tts/EloquenceHub;->getUtteranceLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public stop()V
    .locals 1

    invoke-static {}, Lsweet/tts/SpeakerRoute;->requestStop()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    return-void
.end method

.method public wasStopped()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lsweet/tts/EloquenceVoiceBackend;->stopRequested:Z

    return p0
.end method

.method private static writeAudioRouted(Landroid/speech/tts/SynthesisCallback;[BII)I
    .locals 6

    sget-object v0, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {v0}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lsweet/tts/SpeakerRoute;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :send_real

    new-array v1, p3, [B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v1}, Lsweet/tts/SpeakerRoute;->playBlocking(Landroid/content/Context;[B)Z

    move-result v0

    if-eqz v0, :send_real

    new-array v0, p3, [B

    invoke-interface {p0, v0, v2, p3}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    move-result v0

    return v0

    :send_real
    invoke-interface {p0, p1, p2, p3}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    move-result v0

    return v0
.end method
