.class public final Lsweet/tts/ExternalEngineBackend;
.super Ljava/lang/Object;
.source "ExternalEngineBackend.kt"

# interfaces
.implements Lsweet/tts/VoiceBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/ExternalEngineBackend$Client;,
        Lsweet/tts/ExternalEngineBackend$Companion;,
        Lsweet/tts/ExternalEngineBackend$Pending;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalEngineBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalEngineBackend.kt\nsweet/tts/ExternalEngineBackend\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1563#2:300\n1634#2,3:301\n1869#2,2:304\n1761#2,3:309\n72#3,2:306\n1#4:308\n*S KotlinDebug\n*F\n+ 1 ExternalEngineBackend.kt\nsweet/tts/ExternalEngineBackend\n*L\n81#1:300\n81#1:301,3\n82#1:304,2\n176#1:309,3\n201#1:306,2\n201#1:308\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u0000 +2\u00020\u0001:\u0003+,-B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u000fH\u0016J:\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010#\u001a\u00020\u0018H\u0016J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u000bH\u0002J\u0010\u0010&\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u000bH\u0002J\u0010\u0010\'\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000bH\u0002J\u0008\u0010(\u001a\u00020\u0018H\u0002J6\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 R\u0016\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\r0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lsweet/tts/ExternalEngineBackend;",
        "Lsweet/tts/VoiceBackend;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "clients",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lsweet/tts/ExternalEngineBackend$Client;",
        "pending",
        "Lsweet/tts/ExternalEngineBackend$Pending;",
        "started",
        "",
        "utteranceOk",
        "counter",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "stopRequested",
        "handler",
        "Landroid/os/Handler;",
        "idleCheckScheduled",
        "beginUtterance",
        "",
        "wasStopped",
        "speak",
        "text",
        "lang",
        "callback",
        "Landroid/speech/tts/SynthesisCallback;",
        "callerRate",
        "",
        "callerPitch",
        "appPackage",
        "stop",
        "connect",
        "client",
        "closeClient",
        "ensureReady",
        "scheduleIdleCheck",
        "speakVoice",
        "voiceName",
        "Companion",
        "Client",
        "Pending",
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


# static fields
.field public static final Companion:Lsweet/tts/ExternalEngineBackend$Companion;

.field private static final GRACE_SETTLE_MAX_MS:J = 0x96L

.field private static final GRACE_SETTLE_POLL_MS:J = 0x14L

.field private static final IDLE_CHECK_MS:J = 0x7530L

.field private static final IDLE_RELEASE_MS:J = 0x1d4c0L

.field private static final INIT_TIMEOUT_MS:J = 0x1770L

.field private static final RECONNECT_COOLDOWN_MS:J = 0xbb8L

.field private static final SPEAK_FAILURE_RETRY_COUNT:I = 0x3

.field private static final SPEAK_FAILURE_RETRY_DELAY_MS:J = 0x96L

.field private static final SPEAK_TIMEOUT_BASE_MS:J = 0x1f40L

.field private static final SPEAK_TIMEOUT_MS_PER_CHAR:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "AllInOneTTS"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final clients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsweet/tts/ExternalEngineBackend$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final counter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final handler:Landroid/os/Handler;

.field private volatile idleCheckScheduled:Z

.field private final pending:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsweet/tts/ExternalEngineBackend$Pending;",
            ">;"
        }
    .end annotation
.end field

.field private final started:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopRequested:Z

.field private final utteranceOk:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/ExternalEngineBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/ExternalEngineBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/ExternalEngineBackend;->Companion:Lsweet/tts/ExternalEngineBackend$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend;->appContext:Landroid/content/Context;

    .line 61
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend;->started:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend;->utteranceOk:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lsweet/tts/ExternalEngineBackend;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getPending$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getStarted$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend;->started:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getUtteranceOk$p(Lsweet/tts/ExternalEngineBackend;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend;->utteranceOk:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final closeClient(Lsweet/tts/ExternalEngineBackend$Client;)V
    .locals 2

    .line 145
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Lsweet/tts/ExternalEngineBackend$Client;->setTts(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1, v1}, Lsweet/tts/ExternalEngineBackend$Client;->setReady(Z)V

    .line 148
    invoke-virtual {p1, v0}, Lsweet/tts/ExternalEngineBackend$Client;->setLastLocale(Ljava/util/Locale;)V

    if-eqz p0, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 151
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method

.method private final declared-synchronized connect(Lsweet/tts/ExternalEngineBackend$Client;)V
    .locals 9

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lsweet/tts/ExternalEngineBackend;->closeClient(Lsweet/tts/ExternalEngineBackend$Client;)V

    .line 91
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getEngine()Lsweet/tts/ExternalEngines$Engine;

    move-result-object v4

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lsweet/tts/ExternalEngineBackend$Client;->setConnectStartedAt(J)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0}, Lsweet/tts/ExternalEngineBackend$Client;->setReady(Z)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Lsweet/tts/ExternalEngineBackend$Client;->setLastLocale(Ljava/util/Locale;)V

    .line 95
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 96
    invoke-virtual {p1, v5}, Lsweet/tts/ExternalEngineBackend$Client;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 98
    new-instance v7, Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lsweet/tts/ExternalEngineBackend;->appContext:Landroid/content/Context;

    new-instance v0, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/ExternalEngineBackend$Client;JLsweet/tts/ExternalEngines$Engine;Ljava/util/concurrent/CountDownLatch;)V

    .line 108
    invoke-virtual {v4}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-direct {v7, v8, v0, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v0, 0xb

    .line 112
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 110
    invoke-virtual {v7, p1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 117
    :try_start_2
    const-string v0, "AllInOneTTS"

    const-string v2, "ExternalEngineBackend: setAudioAttributes failed"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_0
    new-instance p1, Lsweet/tts/ExternalEngineBackend$connect$1;

    invoke-direct {p1, p0}, Lsweet/tts/ExternalEngineBackend$connect$1;-><init>(Lsweet/tts/ExternalEngineBackend;)V

    check-cast p1, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v7, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 140
    invoke-virtual {v1, v7}, Lsweet/tts/ExternalEngineBackend$Client;->setTts(Landroid/speech/tts/TextToSpeech;)V

    .line 141
    invoke-direct {p0}, Lsweet/tts/ExternalEngineBackend;->scheduleIdleCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static final connect$lambda$2(Lsweet/tts/ExternalEngineBackend$Client;JLsweet/tts/ExternalEngines$Engine;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 5

    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-virtual {p0, v0}, Lsweet/tts/ExternalEngineBackend$Client;->setReady(Z)V

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 101
    invoke-virtual {p0}, Lsweet/tts/ExternalEngineBackend$Client;->getReady()Z

    move-result p0

    const-string p1, "ms"

    const-string p2, " ("

    const-string v2, "External"

    if-eqz p0, :cond_1

    .line 102
    sget-object p0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {p3}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") connected in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p3}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ExternalEngineBackend: TextToSpeech init FAILED for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ", status="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "AllInOneTTS"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object p0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {p3}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") could not be started, status="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " after "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_1
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final ensureReady(Lsweet/tts/ExternalEngineBackend$Client;)Z
    .locals 9

    .line 157
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getReady()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 159
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getReady()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 160
    :goto_0
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getConnectStartedAt()J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lsweet/tts/ExternalEngineBackend;->connect(Lsweet/tts/ExternalEngineBackend$Client;)V

    .line 161
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v5, 0x1770

    add-long/2addr v2, v5

    .line 162
    :cond_4
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getReady()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-gez v0, :cond_5

    iget-boolean v0, p0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    if-nez v0, :cond_5

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x32

    invoke-virtual {v0, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    .line 165
    :catch_0
    :cond_5
    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getReady()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    :goto_1
    return v1
.end method

.method private final scheduleIdleCheck()V
    .locals 4

    .line 169
    iget-boolean v0, p0, Lsweet/tts/ExternalEngineBackend;->idleCheckScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lsweet/tts/ExternalEngineBackend;->idleCheckScheduled:Z

    .line 171
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend;->handler:Landroid/os/Handler;

    new-instance v1, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lsweet/tts/ExternalEngineBackend$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/ExternalEngineBackend;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static final scheduleIdleCheck$lambda$4(Lsweet/tts/ExternalEngineBackend;)V
    .locals 7

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lsweet/tts/ExternalEngineBackend;->idleCheckScheduled:Z

    .line 174
    iget-object v1, p0, Lsweet/tts/ExternalEngineBackend;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lsweet/tts/ExternalEngineBackend$Client;

    .line 175
    invoke-virtual {v2}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "<get-values>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 309
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsweet/tts/ExternalEngineBackend$Pending;

    .line 176
    invoke-virtual {v4}, Lsweet/tts/ExternalEngineBackend$Pending;->getClient()Lsweet/tts/ExternalEngineBackend$Client;

    move-result-object v4

    if-ne v4, v2, :cond_2

    goto :goto_2

    .line 177
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2}, Lsweet/tts/ExternalEngineBackend$Client;->getLastUsedAt()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 178
    sget-object v3, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v2}, Lsweet/tts/ExternalEngineBackend$Client;->getEngine()Lsweet/tts/ExternalEngines$Engine;

    move-result-object v4

    invoke-virtual {v4}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " released after 120 s without use"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "External"

    invoke-virtual {v3, v5, v4}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, v2}, Lsweet/tts/ExternalEngineBackend;->closeClient(Lsweet/tts/ExternalEngineBackend$Client;)V

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 182
    invoke-direct {p0}, Lsweet/tts/ExternalEngineBackend;->scheduleIdleCheck()V

    :cond_6
    return-void
.end method


# virtual methods
.method public beginUtterance()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    return-void
.end method

.method public resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    .locals 0

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lang"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    :try_start_0
    invoke-interface {p3}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final speakVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;II)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const-string v7, "voiceName"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "text"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "lang"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "callback"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v7, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v7, v1}, Lsweet/tts/ExternalEngines;->entryFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Entry;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return v8

    .line 195
    :cond_0
    sget-object v9, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v9, v1}, Lsweet/tts/ExternalEngines;->engineFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Engine;

    move-result-object v9

    if-nez v9, :cond_1

    return v8

    .line 196
    :cond_1
    move-object v10, v2

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, " text="

    const-string v13, "Speak"

    if-nez v11, :cond_19

    invoke-static {v2}, Lsweet/tts/WatchdogKt;->hasSpeakableChars(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_b

    .line 201
    :cond_2
    iget-object v11, v0, Lsweet/tts/ExternalEngineBackend;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v11, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v9}, Lsweet/tts/ExternalEngines$Engine;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 306
    invoke-interface {v11, v15}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v8

    if-nez v16, :cond_4

    .line 201
    new-instance v8, Lsweet/tts/ExternalEngineBackend$Client;

    invoke-direct {v8, v9}, Lsweet/tts/ExternalEngineBackend$Client;-><init>(Lsweet/tts/ExternalEngines$Engine;)V

    .line 307
    invoke-interface {v11, v15, v8}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    move-object/from16 v16, v8

    goto :goto_0

    :cond_3
    move-object/from16 v16, v11

    .line 201
    :cond_4
    :goto_0
    move-object/from16 v8, v16

    check-cast v8, Lsweet/tts/ExternalEngineBackend$Client;

    const/4 v11, 0x1

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lsweet/tts/ExternalEngineBackend$Client;->setLastUsedAt(J)V

    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 204
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v8}, Lsweet/tts/ExternalEngineBackend;->ensureReady(Lsweet/tts/ExternalEngineBackend$Client;)Z

    move-result v16

    move/from16 v18, v11

    const-string v11, " lang="

    move-object/from16 v19, v7

    const-string v7, "FAILED ("

    if-nez v16, :cond_6

    .line 205
    iget-boolean v0, v0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    if-eqz v0, :cond_5

    return v18

    .line 206
    :cond_5
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v9}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v5, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not ready) voice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    move/from16 v11, v18

    invoke-virtual {v0, v1, v11}, Lsweet/tts/ExternalEngines;->markFailed(Ljava/lang/String;Z)V

    return v17

    :cond_6
    move-object/from16 v16, v9

    .line 210
    invoke-virtual {v8}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v9

    if-nez v9, :cond_7

    return v17

    :cond_7
    move-wide/from16 v20, v14

    .line 211
    invoke-virtual {v8}, Lsweet/tts/ExternalEngineBackend$Client;->getLastLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual/range {v19 .. v19}, Lsweet/tts/ExternalEngines$Entry;->getLocale()Ljava/util/Locale;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const-string v15, ") voice="

    if-nez v14, :cond_a

    .line 212
    invoke-virtual/range {v19 .. v19}, Lsweet/tts/ExternalEngines$Entry;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v14

    if-gez v14, :cond_8

    .line 213
    new-instance v14, Ljava/util/Locale;

    invoke-virtual/range {v19 .. v19}, Lsweet/tts/ExternalEngines$Entry;->getLocale()Ljava/util/Locale;

    move-result-object v22

    move-object/from16 v23, v12

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v14

    goto :goto_1

    :cond_8
    move-object/from16 v23, v12

    :goto_1
    if-gez v14, :cond_9

    .line 215
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual/range {v16 .. v16}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lsweet/tts/ExternalEngines$Entry;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " does not offer "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    move/from16 v12, v17

    invoke-virtual {v0, v1, v12}, Lsweet/tts/ExternalEngines;->markFailed(Ljava/lang/String;Z)V

    return v12

    :cond_9
    move/from16 v12, v17

    .line 219
    invoke-virtual/range {v19 .. v19}, Lsweet/tts/ExternalEngines$Entry;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v8, v14}, Lsweet/tts/ExternalEngineBackend$Client;->setLastLocale(Ljava/util/Locale;)V

    goto :goto_2

    :cond_a
    move-object/from16 v23, v12

    move/from16 v12, v17

    .line 222
    :goto_2
    sget-object v14, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v14, v1}, Lsweet/tts/Prefs;->rateFor(Ljava/lang/String;)I

    move-result v14

    mul-int/2addr v14, v5

    int-to-float v14, v14

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v14, v14, v17

    const/high16 v12, 0x45160000    # 2400.0f

    move-object/from16 v22, v15

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15, v12}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v12

    .line 223
    sget-object v14, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v14, v1}, Lsweet/tts/Prefs;->pitchFor(Ljava/lang/String;)I

    move-result v14

    mul-int/2addr v14, v6

    int-to-float v14, v14

    div-float v14, v14, v17

    move-object/from16 v24, v11

    const/high16 v11, 0x44d20000    # 1680.0f

    invoke-static {v14, v15, v11}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v11

    div-float v14, v12, v17

    .line 224
    invoke-virtual {v9, v14}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    div-float v14, v11, v17

    .line 225
    invoke-virtual {v9, v14}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 226
    sget-object v14, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual/range {v16 .. v16}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object v15

    .line 227
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    sub-long v25, v25, v20

    const-wide/32 v20, 0xf4240

    move-object/from16 v27, v9

    move-object/from16 v17, v10

    div-long v9, v25, v20

    move-object/from16 v20, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "voice="

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "(external "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ") lang="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " callerRate="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " callerPitch="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " -> ratePercent="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " pitchPercent="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " prep="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v14, v13, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x5dc0

    const/4 v5, 0x2

    const/4 v11, 0x1

    .line 230
    :try_start_0
    invoke-interface {v4, v2, v5, v11}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    const/4 v2, 0x0

    :goto_3
    const/4 v5, -0x2

    if-ne v2, v5, :cond_b

    .line 232
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(external) STOPPED before start (framework item already stopped)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :cond_b
    const/4 v11, 0x1

    .line 235
    iget-object v2, v0, Lsweet/tts/ExternalEngineBackend;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "ext_"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 237
    iget-object v6, v0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v6, Ljava/util/Map;

    new-instance v7, Lsweet/tts/ExternalEngineBackend$Pending;

    invoke-direct {v7, v5, v8}, Lsweet/tts/ExternalEngineBackend$Pending;-><init>(Ljava/util/concurrent/CountDownLatch;Lsweet/tts/ExternalEngineBackend$Client;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-boolean v6, v0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    if-eqz v6, :cond_c

    iget-object v0, v0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    .line 239
    :cond_c
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v7, v17

    move-object/from16 v9, v27

    .line 240
    invoke-virtual {v9, v7, v11, v6, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x0

    :goto_4
    const-wide/16 v14, 0x96

    if-eqz v10, :cond_e

    const/4 v11, 0x3

    if-ge v12, v11, :cond_e

    .line 243
    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    :catch_0
    iget-boolean v10, v0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    if-eqz v10, :cond_d

    iget-object v0, v0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    return v11

    :cond_d
    const/4 v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 246
    invoke-virtual {v9, v7, v11, v6, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_e
    if-nez v10, :cond_f

    .line 248
    iget-boolean v6, v0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    if-eqz v6, :cond_f

    .line 249
    :try_start_2
    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    :catchall_1
    iget-object v0, v0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    return v11

    :cond_f
    const/4 v6, -0x3

    if-eqz v10, :cond_10

    .line 254
    iget-object v5, v0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual/range {v16 .. v16}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    move-object/from16 v10, p2

    invoke-virtual {v7, v10}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " speak() call failed after "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " retries) voice="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v12, v24

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :try_start_3
    invoke-interface {v4, v6}, Landroid/speech/tts/SynthesisCallback;->error(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 259
    :catchall_2
    invoke-direct {v0, v8}, Lsweet/tts/ExternalEngineBackend;->closeClient(Lsweet/tts/ExternalEngineBackend$Client;)V

    .line 260
    sget-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    const/4 v11, 0x1

    invoke-virtual {v0, v1, v11}, Lsweet/tts/ExternalEngines;->markFailed(Ljava/lang/String;Z)V

    return v11

    :cond_10
    move-object/from16 v10, p2

    move-object/from16 v7, v20

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 p5, v14

    .line 265
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    int-to-long v14, v14

    mul-long v14, v14, p5

    const-wide/16 v23, 0x1f40

    add-long v14, v14, v23

    .line 266
    :try_start_4
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v14, v15, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    const/4 v5, 0x0

    .line 267
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v3, v23, v20

    .line 268
    sget-object v6, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    move-object/from16 v27, v9

    sget-object v9, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v9, v10}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v24, v12

    const-string v12, "(external) speak() settled after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms (completed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", budget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms) text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v13, v3}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lsweet/tts/ExternalEngineBackend$Client;->setLastUsedAt(J)V

    .line 271
    iget-boolean v3, v0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    if-eqz v3, :cond_11

    .line 272
    iget-object v1, v0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, v0, Lsweet/tts/ExternalEngineBackend;->started:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    return v11

    :cond_11
    const/4 v11, 0x1

    if-nez v5, :cond_14

    .line 277
    iget-object v3, v0, Lsweet/tts/ExternalEngineBackend;->started:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 278
    iget-object v4, v0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 280
    :catchall_3
    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual/range {v16 .. v16}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v5, v10}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " timed out, hadRealPlayback="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v22

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v12, v24

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, p3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v23

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v13, v4}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_12

    .line 281
    :try_start_6
    invoke-interface/range {p4 .. p4}, Landroid/speech/tts/SynthesisCallback;->done()I

    goto :goto_6

    :cond_12
    move-object/from16 v4, p4

    const/4 v2, -0x3

    invoke-interface {v4, v2}, Landroid/speech/tts/SynthesisCallback;->error(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :goto_6
    if-nez v3, :cond_13

    .line 282
    invoke-direct {v0, v8}, Lsweet/tts/ExternalEngineBackend;->closeClient(Lsweet/tts/ExternalEngineBackend$Client;)V

    sget-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    const/4 v11, 0x1

    invoke-virtual {v0, v1, v11}, Lsweet/tts/ExternalEngines;->markFailed(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_13
    const/4 v11, 0x1

    :goto_7
    return v11

    :cond_14
    move-object/from16 v4, p4

    .line 285
    iget-object v3, v0, Lsweet/tts/ExternalEngineBackend;->utteranceOk:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_8

    :cond_15
    const/4 v3, 0x1

    .line 286
    :goto_8
    iget-object v0, v0, Lsweet/tts/ExternalEngineBackend;->started:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_17

    const-wide/16 v5, 0x0

    :goto_9
    cmp-long v0, v5, p5

    if-gez v0, :cond_16

    .line 289
    invoke-virtual/range {v27 .. v27}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/16 v7, 0x14

    .line 290
    :try_start_7
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    add-long/2addr v5, v7

    goto :goto_9

    .line 293
    :catch_2
    :cond_16
    sget-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v0, v1}, Lsweet/tts/ExternalEngines;->clearFailed(Ljava/lang/String;)V

    :cond_17
    if-eqz v3, :cond_18

    .line 295
    :try_start_8
    invoke-interface {v4}, Landroid/speech/tts/SynthesisCallback;->done()I

    goto :goto_a

    :cond_18
    const/4 v2, -0x3

    invoke-interface {v4, v2}, Landroid/speech/tts/SynthesisCallback;->error(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :goto_a
    const/4 v11, 0x1

    return v11

    :cond_19
    :goto_b
    move-object v10, v2

    move-object v6, v3

    move-object v5, v12

    .line 197
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v10}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "(external) SKIPPED (nothing to speak) lang="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :try_start_9
    invoke-interface {v4}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    const/4 v11, 0x1

    return v11
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    .line 80
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 81
    :cond_0
    iget-object v0, p0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 301
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 302
    check-cast v3, Lsweet/tts/ExternalEngineBackend$Pending;

    .line 81
    invoke-virtual {v3}, Lsweet/tts/ExternalEngineBackend$Pending;->getClient()Lsweet/tts/ExternalEngineBackend$Client;

    move-result-object v3

    .line 302
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 300
    check-cast v2, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 82
    iget-object p0, p0, Lsweet/tts/ExternalEngineBackend;->pending:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 304
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsweet/tts/ExternalEngineBackend$Pending;

    .line 82
    invoke-virtual {v1}, Lsweet/tts/ExternalEngineBackend$Pending;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 83
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsweet/tts/ExternalEngineBackend$Client;

    :try_start_0
    invoke-virtual {v0}, Lsweet/tts/ExternalEngineBackend$Client;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public wasStopped()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lsweet/tts/ExternalEngineBackend;->stopRequested:Z

    return p0
.end method
