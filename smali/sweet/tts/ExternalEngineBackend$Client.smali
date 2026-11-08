.class final Lsweet/tts/ExternalEngineBackend$Client;
.super Ljava/lang/Object;
.source "ExternalEngineBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/ExternalEngineBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Client"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lsweet/tts/ExternalEngineBackend$Client;",
        "",
        "engine",
        "Lsweet/tts/ExternalEngines$Engine;",
        "<init>",
        "(Lsweet/tts/ExternalEngines$Engine;)V",
        "getEngine",
        "()Lsweet/tts/ExternalEngines$Engine;",
        "tts",
        "Landroid/speech/tts/TextToSpeech;",
        "getTts",
        "()Landroid/speech/tts/TextToSpeech;",
        "setTts",
        "(Landroid/speech/tts/TextToSpeech;)V",
        "ready",
        "",
        "getReady",
        "()Z",
        "setReady",
        "(Z)V",
        "latch",
        "Ljava/util/concurrent/CountDownLatch;",
        "getLatch",
        "()Ljava/util/concurrent/CountDownLatch;",
        "setLatch",
        "(Ljava/util/concurrent/CountDownLatch;)V",
        "connectStartedAt",
        "",
        "getConnectStartedAt",
        "()J",
        "setConnectStartedAt",
        "(J)V",
        "lastUsedAt",
        "getLastUsedAt",
        "setLastUsedAt",
        "lastLocale",
        "Ljava/util/Locale;",
        "getLastLocale",
        "()Ljava/util/Locale;",
        "setLastLocale",
        "(Ljava/util/Locale;)V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile connectStartedAt:J

.field private final engine:Lsweet/tts/ExternalEngines$Engine;

.field private volatile lastLocale:Ljava/util/Locale;

.field private volatile lastUsedAt:J

.field private volatile latch:Ljava/util/concurrent/CountDownLatch;

.field private volatile ready:Z

.field private volatile tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Lsweet/tts/ExternalEngines$Engine;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->engine:Lsweet/tts/ExternalEngines$Engine;

    .line 52
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final getConnectStartedAt()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lsweet/tts/ExternalEngineBackend$Client;->connectStartedAt:J

    return-wide v0
.end method

.method public final getEngine()Lsweet/tts/ExternalEngines$Engine;
    .locals 0

    .line 49
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$Client;->engine:Lsweet/tts/ExternalEngines$Engine;

    return-object p0
.end method

.method public final getLastLocale()Ljava/util/Locale;
    .locals 0

    .line 55
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$Client;->lastLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public final getLastUsedAt()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lsweet/tts/ExternalEngineBackend$Client;->lastUsedAt:J

    return-wide v0
.end method

.method public final getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 52
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$Client;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public final getReady()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lsweet/tts/ExternalEngineBackend$Client;->ready:Z

    return p0
.end method

.method public final getTts()Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 50
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$Client;->tts:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method public final setConnectStartedAt(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->connectStartedAt:J

    return-void
.end method

.method public final setLastLocale(Ljava/util/Locale;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->lastLocale:Ljava/util/Locale;

    return-void
.end method

.method public final setLastUsedAt(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->lastUsedAt:J

    return-void
.end method

.method public final setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public final setReady(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->ready:Z

    return-void
.end method

.method public final setTts(Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$Client;->tts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method
