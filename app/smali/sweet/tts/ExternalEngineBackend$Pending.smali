.class final Lsweet/tts/ExternalEngineBackend$Pending;
.super Ljava/lang/Object;
.source "ExternalEngineBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/ExternalEngineBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pending"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lsweet/tts/ExternalEngineBackend$Pending;",
        "",
        "latch",
        "Ljava/util/concurrent/CountDownLatch;",
        "client",
        "Lsweet/tts/ExternalEngineBackend$Client;",
        "<init>",
        "(Ljava/util/concurrent/CountDownLatch;Lsweet/tts/ExternalEngineBackend$Client;)V",
        "getLatch",
        "()Ljava/util/concurrent/CountDownLatch;",
        "getClient",
        "()Lsweet/tts/ExternalEngineBackend$Client;",
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
.field private final client:Lsweet/tts/ExternalEngineBackend$Client;

.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Lsweet/tts/ExternalEngineBackend$Client;)V
    .locals 1

    const-string v0, "latch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$Pending;->latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lsweet/tts/ExternalEngineBackend$Pending;->client:Lsweet/tts/ExternalEngineBackend$Client;

    return-void
.end method


# virtual methods
.method public final getClient()Lsweet/tts/ExternalEngineBackend$Client;
    .locals 0

    .line 58
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$Pending;->client:Lsweet/tts/ExternalEngineBackend$Client;

    return-object p0
.end method

.method public final getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 58
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$Pending;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method
