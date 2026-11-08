.class public final synthetic Lsweet/tts/EloquenceHub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/eloqium/tts/engine/EloqiumEngine;


# direct methods
.method public synthetic constructor <init>(Lorg/eloqium/tts/engine/EloqiumEngine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/EloquenceHub$$ExternalSyntheticLambda1;->f$0:Lorg/eloqium/tts/engine/EloqiumEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/EloquenceHub$$ExternalSyntheticLambda1;->f$0:Lorg/eloqium/tts/engine/EloqiumEngine;

    invoke-static {p0}, Lsweet/tts/EloquenceHub;->reportBroken$lambda$3(Lorg/eloqium/tts/engine/EloqiumEngine;)V

    return-void
.end method
