.class public final Lsweet/tts/VoiceBackend$DefaultImpls;
.super Ljava/lang/Object;
.source "Voice.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/VoiceBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static beginUtterance(Lsweet/tts/VoiceBackend;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-static {p0}, Lsweet/tts/VoiceBackend;->access$beginUtterance$jd(Lsweet/tts/VoiceBackend;)V

    return-void
.end method

.method public static resolveVoiceName(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p0, p1, p2}, Lsweet/tts/VoiceBackend;->access$resolveVoiceName$jd(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolveVoiceName$default(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2, p3, p4}, Lsweet/tts/VoiceBackend;->resolveVoiceName$default(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic speak$default(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 17
    invoke-static/range {p0 .. p8}, Lsweet/tts/VoiceBackend;->speak$default(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static stop(Lsweet/tts/VoiceBackend;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-static {p0}, Lsweet/tts/VoiceBackend;->access$stop$jd(Lsweet/tts/VoiceBackend;)V

    return-void
.end method

.method public static wasStopped(Lsweet/tts/VoiceBackend;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-static {p0}, Lsweet/tts/VoiceBackend;->access$wasStopped$jd(Lsweet/tts/VoiceBackend;)Z

    move-result p0

    return p0
.end method
