.class public final synthetic Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/nuance/android/vocalizer/VocalizerEngine;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/nuance/android/vocalizer/VocalizerEngine;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;->f$0:Lcom/nuance/android/vocalizer/VocalizerEngine;

    iput-object p2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;->f$0:Lcom/nuance/android/vocalizer/VocalizerEngine;

    iget-object v1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->speakOnSynthThread$lambda$5(Lcom/nuance/android/vocalizer/VocalizerEngine;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
