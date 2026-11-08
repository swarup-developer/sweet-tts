.class public final synthetic Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$1:Z

    iput-object p3, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$1:Z

    iget-object v2, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Lkotlin/text/MatchResult;

    invoke-static {v0, v1, v2, p0, p1}, Lsweet/tts/NumberProcessing;->rewriteOtp$lambda$15(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
