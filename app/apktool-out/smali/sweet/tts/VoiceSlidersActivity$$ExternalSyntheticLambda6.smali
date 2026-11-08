.class public final synthetic Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;->f$0:I

    iput p2, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;->f$0:I

    iget v1, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;->f$1:I

    iget-object p0, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lsweet/tts/VoiceSlidersActivity;->buildScaledSlider$lambda$13(IILkotlin/jvm/functions/Function1;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
