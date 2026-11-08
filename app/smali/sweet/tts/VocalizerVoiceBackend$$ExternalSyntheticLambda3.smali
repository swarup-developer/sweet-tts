.class public final synthetic Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/nuance/android/vocalizer/VocalizerEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/nuance/android/vocalizer/VocalizerEngine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda3;->f$0:Lcom/nuance/android/vocalizer/VocalizerEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda3;->f$0:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-static {p0}, Lsweet/tts/VocalizerVoiceBackend;->debugBreak$lambda$1(Lcom/nuance/android/vocalizer/VocalizerEngine;)V

    return-void
.end method
