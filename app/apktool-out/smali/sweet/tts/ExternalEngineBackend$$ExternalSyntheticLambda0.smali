.class public final synthetic Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/ExternalEngineBackend$Client;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lsweet/tts/ExternalEngines$Engine;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/ExternalEngineBackend$Client;JLsweet/tts/ExternalEngines$Engine;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/ExternalEngineBackend$Client;

    iput-wide p2, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$2:Lsweet/tts/ExternalEngines$Engine;

    iput-object p5, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/ExternalEngineBackend$Client;

    iget-wide v1, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$2:Lsweet/tts/ExternalEngines$Engine;

    iget-object v4, p0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lsweet/tts/ExternalEngineBackend;->connect$lambda$2(Lsweet/tts/ExternalEngineBackend$Client;JLsweet/tts/ExternalEngines$Engine;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
