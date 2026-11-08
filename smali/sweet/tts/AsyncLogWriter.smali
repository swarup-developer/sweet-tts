.class final Lsweet/tts/AsyncLogWriter;
.super Ljava/lang/Object;
.source "Logging.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/AsyncLogWriter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogging.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logging.kt\nsweet/tts/AsyncLogWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,407:1\n1#2:408\n1869#3,2:409\n1869#3,2:411\n*S KotlinDebug\n*F\n+ 1 Logging.kt\nsweet/tts/AsyncLogWriter\n*L\n116#1:409,2\n161#1:411,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001:\u0001,BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\r\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0003J\u0006\u0010&\u001a\u00020$J\u0006\u0010\'\u001a\u00020$J\u0008\u0010(\u001a\u00020$H\u0002J\u0008\u0010)\u001a\u00020$H\u0002J\u0010\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\r\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lsweet/tts/AsyncLogWriter;",
        "",
        "name",
        "",
        "maxBytes",
        "",
        "trimToBytes",
        "reportPerf",
        "",
        "fileProvider",
        "Lkotlin/Function0;",
        "Ljava/io/File;",
        "headerLines",
        "",
        "<init>",
        "(Ljava/lang/String;JJZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "queue",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "lock",
        "fmt",
        "Ljava/text/SimpleDateFormat;",
        "enqCount",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "enqNs",
        "enqMaxNs",
        "winStartMs",
        "batches",
        "",
        "wLines",
        "wNs",
        "wMaxNs",
        "qMax",
        "trims",
        "trimNs",
        "lastHealthMs",
        "add",
        "",
        "text",
        "flush",
        "clear",
        "run",
        "maybeReport",
        "trim",
        "f",
        "Entry",
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
.field private batches:I

.field private final enqCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final enqMaxNs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final enqNs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final fileProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final fmt:Ljava/text/SimpleDateFormat;

.field private final headerLines:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastHealthMs:J

.field private final lock:Ljava/lang/Object;

.field private final maxBytes:J

.field private final name:Ljava/lang/String;

.field private qMax:I

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reportPerf:Z

.field private trimNs:J

.field private final trimToBytes:J

.field private trims:I

.field private wLines:I

.field private wMaxNs:J

.field private wNs:J

.field private winStartMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lsweet/tts/AsyncLogWriter;->name:Ljava/lang/String;

    .line 31
    iput-wide p2, p0, Lsweet/tts/AsyncLogWriter;->maxBytes:J

    .line 32
    iput-wide p4, p0, Lsweet/tts/AsyncLogWriter;->trimToBytes:J

    .line 33
    iput-boolean p6, p0, Lsweet/tts/AsyncLogWriter;->reportPerf:Z

    .line 34
    iput-object p7, p0, Lsweet/tts/AsyncLogWriter;->fileProvider:Lkotlin/jvm/functions/Function0;

    .line 35
    iput-object p8, p0, Lsweet/tts/AsyncLogWriter;->headerLines:Lkotlin/jvm/functions/Function0;

    .line 38
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lsweet/tts/AsyncLogWriter;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 39
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsweet/tts/AsyncLogWriter;->lock:Ljava/lang/Object;

    .line 40
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lsweet/tts/AsyncLogWriter;->fmt:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lsweet/tts/AsyncLogWriter;->enqCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lsweet/tts/AsyncLogWriter;->enqNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lsweet/tts/AsyncLogWriter;->enqMaxNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lsweet/tts/AsyncLogWriter;->winStartMs:J

    .line 55
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lsweet/tts/AsyncLogWriter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lsweet/tts/AsyncLogWriter$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/AsyncLogWriter;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "aiotts-log-"

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 29
    invoke-direct/range {v1 .. v9}, Lsweet/tts/AsyncLogWriter;-><init>(Ljava/lang/String;JJZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final _init_$lambda$0(Lsweet/tts/AsyncLogWriter;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lsweet/tts/AsyncLogWriter;->run()V

    return-void
.end method

.method private final maybeReport()V
    .locals 33

    move-object/from16 v0, p0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 123
    iget-wide v3, v0, Lsweet/tts/AsyncLogWriter;->winStartMs:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto/16 :goto_2

    .line 124
    :cond_0
    iget-object v3, v0, Lsweet/tts/AsyncLogWriter;->enqCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    const-wide/16 v8, 0x3e8

    if-lez v3, :cond_1

    .line 125
    iget-object v3, v0, Lsweet/tts/AsyncLogWriter;->enqNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v10

    div-long/2addr v10, v6

    div-long/2addr v10, v8

    goto :goto_0

    :cond_1
    move-wide v10, v4

    .line 126
    :goto_0
    iget-object v3, v0, Lsweet/tts/AsyncLogWriter;->enqMaxNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6

    div-long/2addr v6, v8

    .line 127
    iget-object v3, v0, Lsweet/tts/AsyncLogWriter;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v12, Lsweet/tts/AsyncLogWriter$Entry;

    iget-wide v13, v0, Lsweet/tts/AsyncLogWriter;->winStartMs:J

    sub-long v13, v1, v13

    div-long/2addr v13, v8

    iget v8, v0, Lsweet/tts/AsyncLogWriter;->wLines:I

    .line 128
    iget v9, v0, Lsweet/tts/AsyncLogWriter;->batches:I

    const-wide/32 v15, 0xf4240

    if-lez v9, :cond_2

    iget-wide v4, v0, Lsweet/tts/AsyncLogWriter;->wNs:J

    move-wide/from16 v17, v4

    int-to-long v4, v9

    div-long v4, v17, v4

    div-long/2addr v4, v15

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    move-wide/from16 v17, v1

    iget-wide v1, v0, Lsweet/tts/AsyncLogWriter;->wMaxNs:J

    div-long/2addr v1, v15

    move-wide/from16 v19, v15

    .line 129
    iget v15, v0, Lsweet/tts/AsyncLogWriter;->qMax:I

    move-object/from16 v16, v3

    iget v3, v0, Lsweet/tts/AsyncLogWriter;->trims:I

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lsweet/tts/AsyncLogWriter;->trimNs:J

    div-long v1, v1, v19

    move-object/from16 v19, v12

    iget-object v12, v0, Lsweet/tts/AsyncLogWriter;->fileProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v23

    const-wide/16 v25, 0x400

    move-wide/from16 v27, v1

    div-long v0, v23, v25

    .line 130
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v23

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v25

    sub-long v23, v23, v25

    const-wide/32 v25, 0x100000

    move-wide/from16 v29, v0

    div-long v0, v23, v25

    .line 131
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v23

    move-wide/from16 v31, v0

    div-long v0, v23, v25

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v2

    new-instance v12, Ljava/lang/StringBuilder;

    move/from16 v20, v2

    const-string v2, "[LogPerf] last "

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "s: lines="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " enqueueAvg="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "us enqueueMax="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "us batches="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " writeAvg="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms writeMax="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v4, v21

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms maxBatchLines="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " trims="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trimMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, v27

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileKB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, v29

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " javaHeapMB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, v31

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nativeHeapMB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v1, v17

    move-object/from16 v3, v19

    .line 127
    invoke-direct {v3, v1, v2, v0}, Lsweet/tts/AsyncLogWriter$Entry;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    .line 132
    iput-wide v1, v0, Lsweet/tts/AsyncLogWriter;->winStartMs:J

    const/4 v3, 0x0

    iput v3, v0, Lsweet/tts/AsyncLogWriter;->batches:I

    iput v3, v0, Lsweet/tts/AsyncLogWriter;->wLines:I

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lsweet/tts/AsyncLogWriter;->wNs:J

    iput-wide v4, v0, Lsweet/tts/AsyncLogWriter;->wMaxNs:J

    iput v3, v0, Lsweet/tts/AsyncLogWriter;->qMax:I

    iput v3, v0, Lsweet/tts/AsyncLogWriter;->trims:I

    iput-wide v4, v0, Lsweet/tts/AsyncLogWriter;->trimNs:J

    .line 134
    iget-object v3, v0, Lsweet/tts/AsyncLogWriter;->name:Ljava/lang/String;

    const-string v4, "detailed"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lsweet/tts/AsyncLogWriter;->lastHealthMs:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 135
    iput-wide v1, v0, Lsweet/tts/AsyncLogWriter;->lastHealthMs:J

    .line 136
    iget-object v0, v0, Lsweet/tts/AsyncLogWriter;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v3, Lsweet/tts/AsyncLogWriter$Entry;

    sget-object v4, Lsweet/tts/HealthProbe;->INSTANCE:Lsweet/tts/HealthProbe;

    invoke-virtual {v4}, Lsweet/tts/HealthProbe;->line()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lsweet/tts/AsyncLogWriter$Entry;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private final run()V
    .locals 14

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v2, p0, Lsweet/tts/AsyncLogWriter;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lsweet/tts/AsyncLogWriter;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "iterator(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "next(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    instance-of v6, v5, Lsweet/tts/AsyncLogWriter$Entry;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lsweet/tts/AsyncLogWriter;->fmt:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    move-object v8, v5

    check-cast v8, Lsweet/tts/AsyncLogWriter$Entry;

    invoke-virtual {v8}, Lsweet/tts/AsyncLogWriter$Entry;->getMs()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v5, Lsweet/tts/AsyncLogWriter$Entry;

    invoke-virtual {v5}, Lsweet/tts/AsyncLogWriter$Entry;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_2
    instance-of v6, v5, Ljava/util/concurrent/CountDownLatch;

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-lez v4, :cond_7

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 97
    iget-object v3, p0, Lsweet/tts/AsyncLogWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    iget-object v7, p0, Lsweet/tts/AsyncLogWriter;->fileProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "toString(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v2, v9, v8, v9}, Lkotlin/io/FilesKt;->appendText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 100
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-wide v10, p0, Lsweet/tts/AsyncLogWriter;->maxBytes:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_4

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 102
    invoke-direct {p0, v7}, Lsweet/tts/AsyncLogWriter;->trim(Ljava/io/File;)V

    .line 103
    iget v2, p0, Lsweet/tts/AsyncLogWriter;->trims:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsweet/tts/AsyncLogWriter;->trims:I

    .line 104
    iget-wide v10, p0, Lsweet/tts/AsyncLogWriter;->trimNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v10, v12

    iput-wide v10, p0, Lsweet/tts/AsyncLogWriter;->trimNs:J

    .line 106
    :cond_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    monitor-exit v3

    .line 107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 108
    iget v5, p0, Lsweet/tts/AsyncLogWriter;->batches:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsweet/tts/AsyncLogWriter;->batches:I

    iget v5, p0, Lsweet/tts/AsyncLogWriter;->wLines:I

    add-int/2addr v5, v4

    iput v5, p0, Lsweet/tts/AsyncLogWriter;->wLines:I

    iget-wide v5, p0, Lsweet/tts/AsyncLogWriter;->wNs:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lsweet/tts/AsyncLogWriter;->wNs:J

    .line 109
    iget-wide v5, p0, Lsweet/tts/AsyncLogWriter;->wMaxNs:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    iput-wide v2, p0, Lsweet/tts/AsyncLogWriter;->wMaxNs:J

    .line 110
    :cond_5
    iget v2, p0, Lsweet/tts/AsyncLogWriter;->qMax:I

    if-le v4, v2, :cond_6

    iput v4, p0, Lsweet/tts/AsyncLogWriter;->qMax:I

    .line 111
    :cond_6
    iget-boolean v2, p0, Lsweet/tts/AsyncLogWriter;->reportPerf:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lsweet/tts/AsyncLogWriter;->maybeReport()V

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 97
    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    :cond_7
    :goto_1
    check-cast v1, Ljava/lang/Iterable;

    .line 409
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 116
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 114
    :try_start_3
    const-string v3, "AllInOneTTS"

    iget-object v4, p0, Lsweet/tts/AsyncLogWriter;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " log write failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    check-cast v1, Ljava/lang/Iterable;

    .line 409
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 116
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    :catchall_2
    move-exception p0

    check-cast v1, Ljava/lang/Iterable;

    .line 409
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 116
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    .line 410
    :cond_8
    throw p0
.end method

.method private final trim(Ljava/io/File;)V
    .locals 13

    .line 142
    const-string v0, "getBytes(...)"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 143
    iget-wide v3, p0, Lsweet/tts/AsyncLogWriter;->trimToBytes:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    goto/16 :goto_6

    .line 144
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v5, v3

    check-cast v5, Ljava/io/RandomAccessFile;

    .line 146
    iget-wide v6, p0, Lsweet/tts/AsyncLogWriter;->trimToBytes:J

    sub-long/2addr v1, v6

    invoke-virtual {v5, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/high16 v1, 0x10000

    .line 149
    new-array v1, v1, [B

    .line 150
    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v2, :cond_3

    move v8, v7

    :goto_1
    if-ge v8, v2, :cond_1

    .line 154
    aget-byte v9, v1, v8

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ge v8, v2, :cond_2

    add-int/2addr v8, v6

    goto :goto_2

    .line 156
    :cond_2
    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v8, -0x1

    :goto_2
    new-instance v9, Ljava/io/FileOutputStream;

    .line 158
    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v9, Ljava/io/OutputStream;

    instance-of v10, v9, Ljava/io/BufferedOutputStream;

    if-eqz v10, :cond_4

    check-cast v9, Ljava/io/BufferedOutputStream;

    goto :goto_3

    :cond_4
    new-instance v10, Ljava/io/BufferedOutputStream;

    const/16 v11, 0x2000

    invoke-direct {v10, v9, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v9, v10

    :goto_3
    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v10, v9

    check-cast v10, Ljava/io/BufferedOutputStream;

    .line 159
    const-string v11, "=== earlier lines trimmed ===\n"

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 161
    :try_start_2
    iget-object p0, p0, Lsweet/tts/AsyncLogWriter;->headerLines:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    .line 411
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 161
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    :cond_5
    if-ltz v8, :cond_6

    if-ge v8, v2, :cond_6

    sub-int/2addr v2, v8

    .line 162
    :try_start_3
    invoke-virtual {v10, v1, v8, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    :cond_6
    :goto_5
    if-ltz v8, :cond_7

    .line 164
    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    if-ltz p0, :cond_7

    .line 166
    invoke-virtual {v10, v1, v7, p0}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_5

    .line 168
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p0, 0x0

    .line 158
    :try_start_4
    invoke-static {v9, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 169
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 145
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 173
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x2

    .line 174
    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v1, v7

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v1, v6

    .line 173
    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    .line 176
    invoke-static/range {v4 .. v9}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_6
    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 158
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_7
    invoke-static {v9, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object p0, v0

    .line 145
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object p1, v0

    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 6

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 60
    iget-object v2, p0, Lsweet/tts/AsyncLogWriter;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v3, Lsweet/tts/AsyncLogWriter$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p1}, Lsweet/tts/AsyncLogWriter$Entry;-><init>(JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 62
    iget-object p1, p0, Lsweet/tts/AsyncLogWriter;->enqCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 63
    iget-object p1, p0, Lsweet/tts/AsyncLogWriter;->enqNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 64
    :cond_0
    iget-object p1, p0, Lsweet/tts/AsyncLogWriter;->enqMaxNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lsweet/tts/AsyncLogWriter;->enqMaxNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 5

    .line 75
    invoke-virtual {p0}, Lsweet/tts/AsyncLogWriter;->flush()V

    .line 76
    iget-object v0, p0, Lsweet/tts/AsyncLogWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lsweet/tts/AsyncLogWriter;->fileProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "AllInOneTTS"

    iget-object p0, p0, Lsweet/tts/AsyncLogWriter;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " clear failed"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final flush()V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 70
    iget-object p0, p0, Lsweet/tts/AsyncLogWriter;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 71
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
