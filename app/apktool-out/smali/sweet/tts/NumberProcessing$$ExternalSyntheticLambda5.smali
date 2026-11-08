.class public final synthetic Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;->f$1:I

    iput-boolean p3, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;->f$1:I

    iget-boolean p0, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;->f$2:Z

    check-cast p1, Lkotlin/text/MatchResult;

    invoke-static {v0, v1, p0, p1}, Lsweet/tts/NumberProcessing;->groupLongNumbers$lambda$8(Lkotlin/jvm/functions/Function1;IZLkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
