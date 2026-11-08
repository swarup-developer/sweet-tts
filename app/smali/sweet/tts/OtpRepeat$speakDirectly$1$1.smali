.class public final Lsweet/tts/OtpRepeat$speakDirectly$1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "OtpRepeat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/OtpRepeat;->speakDirectly(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "sweet/tts/OtpRepeat$speakDirectly$1$1",
        "Landroid/speech/tts/UtteranceProgressListener;",
        "onStart",
        "",
        "id",
        "",
        "onDone",
        "onError",
        "errorCode",
        "",
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
.field final synthetic $tts:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsweet/tts/OtpRepeat$speakDirectly$1$1;->$tts:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 185
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lsweet/tts/OtpRepeat$speakDirectly$1$1;->$tts:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lsweet/tts/OtpRepeat$speakDirectly$1$1;->$tts:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    .line 189
    iget-object p0, p0, Lsweet/tts/OtpRepeat$speakDirectly$1$1;->$tts:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
