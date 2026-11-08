.class public final Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "GoogleVoiceBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/GoogleVoiceBackend;->connectFreshEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "sweet/tts/GoogleVoiceBackend$connectFreshEngine$3",
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
.field final synthetic this$0:Lsweet/tts/GoogleVoiceBackend;


# direct methods
.method constructor <init>(Lsweet/tts/GoogleVoiceBackend;)V
    .locals 0

    iput-object p1, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    .line 218
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {v0}, Lsweet/tts/GoogleVoiceBackend;->access$getUtteranceOk$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {v0}, Lsweet/tts/GoogleVoiceBackend;->access$getSpeakCalledAt$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {v0}, Lsweet/tts/GoogleVoiceBackend;->access$getStartedUtterances$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {p0}, Lsweet/tts/GoogleVoiceBackend;->access$getPendingUtterances$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

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

    .line 235
    :cond_0
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {v0}, Lsweet/tts/GoogleVoiceBackend;->access$getUtteranceOk$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {v0}, Lsweet/tts/GoogleVoiceBackend;->access$getSpeakCalledAt$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {v0}, Lsweet/tts/GoogleVoiceBackend;->access$getStartedUtterances$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {p0}, Lsweet/tts/GoogleVoiceBackend;->access$getPendingUtterances$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {v0}, Lsweet/tts/GoogleVoiceBackend;->access$getStartedUtterances$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {p0}, Lsweet/tts/GoogleVoiceBackend;->access$getSpeakCalledAt$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 223
    sget-object p1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google audio started "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms after speak() lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Audio"

    invoke-virtual {p1, v0, p0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object p2, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {p2}, Lsweet/tts/GoogleVoiceBackend;->access$getSpeakCalledAt$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object p2, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {p2}, Lsweet/tts/GoogleVoiceBackend;->access$getStartedUtterances$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$connectFreshEngine$3;->this$0:Lsweet/tts/GoogleVoiceBackend;

    invoke-static {p0}, Lsweet/tts/GoogleVoiceBackend;->access$getPendingUtterances$p(Lsweet/tts/GoogleVoiceBackend;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method
