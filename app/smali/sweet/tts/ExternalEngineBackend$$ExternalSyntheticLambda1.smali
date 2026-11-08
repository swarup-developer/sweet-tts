.class public final synthetic Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lsweet/tts/ExternalEngineBackend;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/ExternalEngineBackend;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda1;->f$0:Lsweet/tts/ExternalEngineBackend;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda1;->f$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {p0}, Lsweet/tts/ExternalEngineBackend;->scheduleIdleCheck$lambda$4(Lsweet/tts/ExternalEngineBackend;)V

    return-void
.end method
