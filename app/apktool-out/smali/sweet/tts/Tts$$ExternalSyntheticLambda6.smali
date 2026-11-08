.class public final synthetic Lsweet/tts/Tts$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lsweet/tts/Tts;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/Tts;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda6;->f$0:Lsweet/tts/Tts;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda6;->f$0:Lsweet/tts/Tts;

    invoke-static {p0}, Lsweet/tts/Tts;->speakRun$lambda$18(Lsweet/tts/Tts;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
