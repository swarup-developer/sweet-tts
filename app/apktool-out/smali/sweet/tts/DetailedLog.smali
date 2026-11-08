.class public final Lsweet/tts/DetailedLog;
.super Ljava/lang/Object;
.source "Logging.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogging.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logging.kt\nsweet/tts/DetailedLog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,407:1\n1869#2,2:408\n*S KotlinDebug\n*F\n+ 1 Logging.kt\nsweet/tts/DetailedLog\n*L\n381#1:408,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015J\u0006\u0010\u001a\u001a\u00020\u0015J\u0006\u0010\u001b\u001a\u00020\u0015J\u0006\u0010\u001c\u001a\u00020\nJ\u0006\u0010\u001d\u001a\u00020\u0007J\u0006\u0010\u001e\u001a\u00020\u0005J\u0006\u0010\u001f\u001a\u00020\u0011J\u0016\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lsweet/tts/DetailedLog;",
        "",
        "<init>",
        "()V",
        "FILE_NAME",
        "",
        "MAX_BYTES",
        "",
        "TRIM_TO_BYTES",
        "value",
        "",
        "active",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "file",
        "Ljava/io/File;",
        "getFile",
        "()Ljava/io/File;",
        "rearmIfActive",
        "",
        "start",
        "stop",
        "writer",
        "Lsweet/tts/AsyncLogWriter;",
        "clear",
        "flushNow",
        "hasContent",
        "sizeBytes",
        "readText",
        "fileForSharing",
        "log",
        "tag",
        "message",
        "line",
        "text",
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
.field private static final FILE_NAME:Ljava/lang/String; = "aiotts_detailed_log.txt"

.field public static final INSTANCE:Lsweet/tts/DetailedLog;

.field private static final MAX_BYTES:J = 0x1dcd6500L

.field private static final TRIM_TO_BYTES:J = 0x17d78400L

.field private static final writer:Lsweet/tts/AsyncLogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lsweet/tts/DetailedLog;

    invoke-direct {v0}, Lsweet/tts/DetailedLog;-><init>()V

    sput-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    .line 390
    new-instance v1, Lsweet/tts/AsyncLogWriter;

    new-instance v8, Lsweet/tts/DetailedLog$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lsweet/tts/DetailedLog$$ExternalSyntheticLambda0;-><init>()V

    new-instance v9, Lsweet/tts/DetailedLog$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lsweet/tts/DetailedLog$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "detailed"

    const-wide/32 v3, 0x1dcd6500

    const-wide/32 v5, 0x17d78400

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v9}, Lsweet/tts/AsyncLogWriter;-><init>(Ljava/lang/String;JJZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lsweet/tts/DetailedLog;->writer:Lsweet/tts/AsyncLogWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFile()Ljava/io/File;
    .locals 2

    .line 370
    new-instance p0, Ljava/io/File;

    sget-object v0, Lsweet/tts/ImportExport;->INSTANCE:Lsweet/tts/ImportExport;

    invoke-virtual {v0}, Lsweet/tts/ImportExport;->folder$app()Ljava/io/File;

    move-result-object v0

    const-string v1, "aiotts_detailed_log.txt"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private final line(Ljava/lang/String;)V
    .locals 0

    .line 405
    sget-object p0, Lsweet/tts/DetailedLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {p0, p1}, Lsweet/tts/AsyncLogWriter;->add(Ljava/lang/String;)V

    return-void
.end method

.method private final setActive(Z)V
    .locals 0

    .line 367
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setDetailedLogEnabled(Z)V

    return-void
.end method

.method static final writer$lambda$1()Ljava/io/File;
    .locals 1

    .line 390
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-direct {v0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static final writer$lambda$2()Ljava/util/List;
    .locals 1

    .line 390
    invoke-static {}, Lsweet/tts/LoggingKt;->access$logHeader()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 392
    sget-object p0, Lsweet/tts/DetailedLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {p0}, Lsweet/tts/AsyncLogWriter;->clear()V

    return-void
.end method

.method public final fileForSharing()Ljava/io/File;
    .locals 1

    .line 398
    sget-object v0, Lsweet/tts/DetailedLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {v0}, Lsweet/tts/AsyncLogWriter;->flush()V

    invoke-direct {p0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final flushNow()V
    .locals 0

    .line 393
    sget-object p0, Lsweet/tts/DetailedLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {p0}, Lsweet/tts/AsyncLogWriter;->flush()V

    return-void
.end method

.method public final getActive()Z
    .locals 0

    .line 366
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->detailedLogEnabled()Z

    move-result p0

    return p0
.end method

.method public final hasContent()Z
    .locals 4

    .line 395
    invoke-direct {p0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lsweet/tts/DetailedLog;->getActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsweet/tts/DetailedLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method public final readText()Ljava/lang/String;
    .locals 2

    .line 397
    sget-object v0, Lsweet/tts/DetailedLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {v0}, Lsweet/tts/AsyncLogWriter;->flush()V

    invoke-direct {p0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final rearmIfActive()V
    .locals 3

    .line 374
    invoke-virtual {p0}, Lsweet/tts/DetailedLog;->getActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsweet/tts/LoggingKt;->access$sessionHeader()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=== detailed capture resumed ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsweet/tts/DetailedLog;->line(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final sizeBytes()J
    .locals 2

    .line 396
    invoke-direct {p0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/DetailedLog;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final declared-synchronized start()V
    .locals 5

    const-string v0, "=== detailed capture started ("

    monitor-enter p0

    const/4 v1, 0x1

    .line 379
    :try_start_0
    invoke-direct {p0, v1}, Lsweet/tts/DetailedLog;->setActive(Z)V

    .line 380
    invoke-static {}, Lsweet/tts/LoggingKt;->access$sessionHeader()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsweet/tts/DetailedLog;->line(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lsweet/tts/LoggingKt;->deviceReportLines()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 408
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lsweet/tts/DetailedLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 382
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lsweet/tts/DetailedLog;->getActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "=== detailed capture stopped ==="

    invoke-direct {p0, v0}, Lsweet/tts/DetailedLog;->line(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 387
    invoke-direct {p0, v0}, Lsweet/tts/DetailedLog;->setActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
