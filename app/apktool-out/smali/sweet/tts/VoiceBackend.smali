.class public interface abstract Lsweet/tts/VoiceBackend;
.super Ljava/lang/Object;
.source "Voice.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/VoiceBackend$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005H&J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0012\u00c0\u0006\u0003"
    }
    d2 = {
        "Lsweet/tts/VoiceBackend;",
        "",
        "speak",
        "",
        "text",
        "",
        "lang",
        "callback",
        "Landroid/speech/tts/SynthesisCallback;",
        "callerRate",
        "",
        "callerPitch",
        "appPackage",
        "stop",
        "beginUtterance",
        "wasStopped",
        "",
        "resolveVoiceName",
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


# direct methods
.method public static synthetic access$beginUtterance$jd(Lsweet/tts/VoiceBackend;)V
    .locals 0

    .line 11
    invoke-super {p0}, Lsweet/tts/VoiceBackend;->beginUtterance()V

    return-void
.end method

.method public static synthetic access$resolveVoiceName$jd(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-super {p0, p1, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$stop$jd(Lsweet/tts/VoiceBackend;)V
    .locals 0

    .line 11
    invoke-super {p0}, Lsweet/tts/VoiceBackend;->stop()V

    return-void
.end method

.method public static synthetic access$wasStopped$jd(Lsweet/tts/VoiceBackend;)Z
    .locals 0

    .line 11
    invoke-super {p0}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result p0

    return p0
.end method

.method public static synthetic resolveVoiceName$default(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 36
    :cond_0
    invoke-interface {p0, p1, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resolveVoiceName"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic speak$default(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;ILjava/lang/Object;)V
    .locals 1

    if-nez p8, :cond_3

    and-int/lit8 p8, p7, 0x8

    const/16 v0, 0x64

    if-eqz p8, :cond_0

    move p4, v0

    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    move p5, v0

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    const/4 p6, 0x0

    .line 17
    :cond_2
    invoke-interface/range {p0 .. p6}, Lsweet/tts/VoiceBackend;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: speak"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public beginUtterance()V
    .locals 0

    return-void
.end method

.method public resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public wasStopped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
