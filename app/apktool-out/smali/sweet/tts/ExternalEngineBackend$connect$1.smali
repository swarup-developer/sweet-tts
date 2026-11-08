.class public final Lsweet/tts/ExternalEngineBackend$connect$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "ExternalEngineBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/ExternalEngineBackend;->connect(Lsweet/tts/ExternalEngineBackend$Client;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalEngineBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalEngineBackend.kt\nsweet/tts/ExternalEngineBackend$connect$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1#2:300\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "sweet/tts/ExternalEngineBackend$connect$1",
        "Landroid/speech/tts/UtteranceProgressListener;",
        "onStart",
        "",
        "utteranceId",
        "",
        "onDone",
        "onError",
        "errorCode",
        "",
        "onStop",
        "interrupted",
        "",
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
.field final synthetic this$0:Lsweet/tts/ExternalEngineBackend;


# direct methods
.method constructor <init>(Lsweet/tts/ExternalEngineBackend;)V
    .locals 0

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    .line 119
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {v0}, Lsweet/tts/ExternalEngineBackend;->access$getUtteranceOk$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {v0}, Lsweet/tts/ExternalEngineBackend;->access$getStarted$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {p0}, Lsweet/tts/ExternalEngineBackend;->access$getPending$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsweet/tts/ExternalEngineBackend$Pending;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsweet/tts/ExternalEngineBackend$Pending;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {v0}, Lsweet/tts/ExternalEngineBackend;->access$getUtteranceOk$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {v0}, Lsweet/tts/ExternalEngineBackend;->access$getStarted$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {p0}, Lsweet/tts/ExternalEngineBackend;->access$getPending$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsweet/tts/ExternalEngineBackend$Pending;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsweet/tts/ExternalEngineBackend$Pending;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lsweet/tts/ExternalEngineBackend$connect$1;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {p0}, Lsweet/tts/ExternalEngineBackend;->access$getStarted$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p2, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {p2}, Lsweet/tts/ExternalEngineBackend;->access$getStarted$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend$connect$1;->this$0:Lsweet/tts/ExternalEngineBackend;

    invoke-static {p0}, Lsweet/tts/ExternalEngineBackend;->access$getPending$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsweet/tts/ExternalEngineBackend$Pending;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsweet/tts/ExternalEngineBackend$Pending;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method
