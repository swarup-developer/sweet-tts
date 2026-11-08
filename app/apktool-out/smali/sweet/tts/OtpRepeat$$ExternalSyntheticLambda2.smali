.class public final synthetic Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lsweet/tts/OtpRepeat$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lsweet/tts/OtpRepeat;->speakDirectly$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;I)V

    return-void
.end method
