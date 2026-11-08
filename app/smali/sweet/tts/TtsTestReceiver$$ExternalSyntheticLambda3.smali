.class public final synthetic Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget v2, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lsweet/tts/TtsTestReceiver;->renderToFile$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
