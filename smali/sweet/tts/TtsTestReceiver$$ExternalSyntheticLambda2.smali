.class public final synthetic Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide p4, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$3:J

    iput-object p6, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$4:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v3, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$3:J

    iget-object v5, p0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;->f$4:Landroid/content/Intent;

    move v6, p1

    invoke-static/range {v0 .. v6}, Lsweet/tts/TtsTestReceiver;->onReceive$lambda$3(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/content/Intent;I)V

    return-void
.end method
