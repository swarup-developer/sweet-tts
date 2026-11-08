.class public final synthetic Lsweet/tts/GoogleVoiceBackend$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/GoogleVoiceBackend;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/GoogleVoiceBackend;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/GoogleVoiceBackend$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/GoogleVoiceBackend;

    iput-object p2, p0, Lsweet/tts/GoogleVoiceBackend$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/GoogleVoiceBackend;

    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, p0, p1}, Lsweet/tts/GoogleVoiceBackend;->connectFreshEngine$lambda$0(Lsweet/tts/GoogleVoiceBackend;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    return-void
.end method
