.class public final synthetic Lsweet/tts/EnglishHomographs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lsweet/tts/EnglishHomographs$Rule;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/EnglishHomographs$Rule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/EnglishHomographs$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/EnglishHomographs$Rule;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/EnglishHomographs$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/EnglishHomographs$Rule;

    check-cast p1, Lkotlin/text/MatchResult;

    invoke-static {p0, p1}, Lsweet/tts/EnglishHomographs;->rewrite$lambda$0(Lsweet/tts/EnglishHomographs$Rule;Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
