.class public final Lsweet/tts/DiagnosticLog;
.super Ljava/lang/Object;
.source "Logging.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogging.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logging.kt\nsweet/tts/DiagnosticLog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,407:1\n1869#2,2:408\n*S KotlinDebug\n*F\n+ 1 Logging.kt\nsweet/tts/DiagnosticLog\n*L\n326#1:408,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u000eJ\u0006\u0010\u001a\u001a\u00020\u0007J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\nJ\u0016\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0005J\u0010\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lsweet/tts/DiagnosticLog;",
        "",
        "<init>",
        "()V",
        "FILE_NAME",
        "",
        "MAX_BYTES",
        "",
        "TRIM_TO_BYTES",
        "file",
        "Ljava/io/File;",
        "getFile",
        "()Ljava/io/File;",
        "value",
        "",
        "active",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "writer",
        "Lsweet/tts/AsyncLogWriter;",
        "clear",
        "",
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
.field private static final FILE_NAME:Ljava/lang/String; = "aiotts_diagnostic_log.txt"

.field public static final INSTANCE:Lsweet/tts/DiagnosticLog;

.field private static final MAX_BYTES:J = 0x17d7840L

.field private static final TRIM_TO_BYTES:J = 0x1312d00L

.field private static final writer:Lsweet/tts/AsyncLogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lsweet/tts/DiagnosticLog;

    invoke-direct {v0}, Lsweet/tts/DiagnosticLog;-><init>()V

    sput-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    .line 331
    new-instance v1, Lsweet/tts/AsyncLogWriter;

    new-instance v8, Lsweet/tts/DiagnosticLog$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lsweet/tts/DiagnosticLog$$ExternalSyntheticLambda0;-><init>()V

    new-instance v9, Lsweet/tts/DiagnosticLog$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lsweet/tts/DiagnosticLog$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "diagnostic"

    const-wide/32 v3, 0x17d7840

    const-wide/32 v5, 0x1312d00

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lsweet/tts/AsyncLogWriter;-><init>(Ljava/lang/String;JJZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lsweet/tts/DiagnosticLog;->writer:Lsweet/tts/AsyncLogWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFile()Ljava/io/File;
    .locals 2

    .line 317
    new-instance p0, Ljava/io/File;

    sget-object v0, Lsweet/tts/ImportExport;->INSTANCE:Lsweet/tts/ImportExport;

    invoke-virtual {v0}, Lsweet/tts/ImportExport;->folder$app()Ljava/io/File;

    move-result-object v0

    const-string v1, "aiotts_diagnostic_log.txt"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private final line(Ljava/lang/String;)V
    .locals 0

    .line 346
    sget-object p0, Lsweet/tts/DiagnosticLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {p0, p1}, Lsweet/tts/AsyncLogWriter;->add(Ljava/lang/String;)V

    return-void
.end method

.method static final writer$lambda$1()Ljava/io/File;
    .locals 1

    .line 331
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-direct {v0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static final writer$lambda$2()Ljava/util/List;
    .locals 1

    .line 331
    invoke-static {}, Lsweet/tts/LoggingKt;->access$logHeader()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 333
    sget-object p0, Lsweet/tts/DiagnosticLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {p0}, Lsweet/tts/AsyncLogWriter;->clear()V

    return-void
.end method

.method public final fileForSharing()Ljava/io/File;
    .locals 1

    .line 339
    sget-object v0, Lsweet/tts/DiagnosticLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {v0}, Lsweet/tts/AsyncLogWriter;->flush()V

    invoke-direct {p0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final flushNow()V
    .locals 0

    .line 334
    sget-object p0, Lsweet/tts/DiagnosticLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {p0}, Lsweet/tts/AsyncLogWriter;->flush()V

    return-void
.end method

.method public final getActive()Z
    .locals 0

    .line 320
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->diagnosticLogEnabled()Z

    move-result p0

    return p0
.end method

.method public final hasContent()Z
    .locals 4

    .line 336
    invoke-direct {p0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

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

    .line 342
    invoke-virtual {p0}, Lsweet/tts/DiagnosticLog;->getActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
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

    invoke-direct {p0, p1}, Lsweet/tts/DiagnosticLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method public final readText()Ljava/lang/String;
    .locals 2

    .line 338
    sget-object v0, Lsweet/tts/DiagnosticLog;->writer:Lsweet/tts/AsyncLogWriter;

    invoke-virtual {v0}, Lsweet/tts/AsyncLogWriter;->flush()V

    invoke-direct {p0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

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

.method public final setActive(Z)V
    .locals 6

    .line 322
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->diagnosticLogEnabled()Z

    move-result v0

    .line 323
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1, p1}, Lsweet/tts/Prefs;->setDiagnosticLogEnabled(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 325
    invoke-static {}, Lsweet/tts/LoggingKt;->access$sessionHeader()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=== Diagnostic log turned ON ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsweet/tts/DiagnosticLog;->line(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lsweet/tts/LoggingKt;->deviceReportLines()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 408
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    sget-object v3, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lsweet/tts/DiagnosticLog;->line(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 328
    const-string p1, "=== Diagnostic log turned OFF ==="

    invoke-direct {p0, p1}, Lsweet/tts/DiagnosticLog;->line(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final sizeBytes()J
    .locals 2

    .line 337
    invoke-direct {p0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/DiagnosticLog;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
