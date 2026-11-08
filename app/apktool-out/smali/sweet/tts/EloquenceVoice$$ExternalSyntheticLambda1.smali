.class public final synthetic Lsweet/tts/EloquenceVoice$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/EloquenceVoice$$ExternalSyntheticLambda1;->f$0:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/EloquenceVoice$$ExternalSyntheticLambda1;->f$0:Ljava/util/LinkedHashMap;

    check-cast p1, Lsweet/tts/EloquenceVoice$Slider;

    invoke-static {p0, p1}, Lsweet/tts/EloquenceVoice;->noteBuiltIn$lambda$5(Ljava/util/LinkedHashMap;Lsweet/tts/EloquenceVoice$Slider;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
