.class public final Lsweet/tts/App;
.super Landroid/app/Application;
.source "App.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/App$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 App.kt\nsweet/tts/App\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,170:1\n1869#2,2:171\n1869#2,2:173\n1#3:175\n1321#4,2:176\n*S KotlinDebug\n*F\n+ 1 App.kt\nsweet/tts/App\n*L\n63#1:171,2\n115#1:173,2\n121#1:176,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lsweet/tts/App;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "installCrashLogger",
        "logPreviousExits",
        "Companion",
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
.field public static final Companion:Lsweet/tts/App$Companion;

.field private static context:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/App$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/App$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext$cp()Landroid/app/Application;
    .locals 1

    .line 15
    sget-object v0, Lsweet/tts/App;->context:Landroid/app/Application;

    return-object v0
.end method

.method private final installCrashLogger()V
    .locals 1

    .line 54
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    .line 55
    new-instance v0, Lsweet/tts/App$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lsweet/tts/App$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static final installCrashLogger$lambda$2(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 19

    .line 56
    const-string v0, "Crash"

    .line 0
    const-string v1, "uncaught exception in thread "

    const-string v2, "uncaught "

    .line 57
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 58
    new-instance v4, Ljava/io/PrintWriter;

    move-object v5, v3

    check-cast v5, Ljava/io/Writer;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v5, p2

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 59
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 60
    sget-object v4, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    .line 61
    move-object v9, v3

    check-cast v9, Ljava/lang/Iterable;

    const/16 v10, 0x1e

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    const-string v9, " <- "

    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    new-instance v16, Lsweet/tts/App$$ExternalSyntheticLambda0;

    invoke-direct/range {v16 .. v16}, Lsweet/tts/App$$ExternalSyntheticLambda0;-><init>()V

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " in thread "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " | "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v4, v0, v2}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    check-cast v3, Ljava/lang/Iterable;

    const/16 v1, 0xc8

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 171
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    sget-object v3, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v0}, Lsweet/tts/DiagnosticLog;->flushNow()V

    .line 65
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v0}, Lsweet/tts/DetailedLog;->flushNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-object/from16 v5, p2

    :catchall_1
    :goto_1
    if-eqz p0, :cond_1

    .line 68
    invoke-interface/range {p0 .. p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static final installCrashLogger$lambda$2$lambda$0(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final logPreviousExits()V
    .locals 2

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 133
    new-instance v1, Lsweet/tts/App$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lsweet/tts/App$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/App;)V

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static final logPreviousExits$lambda$7(Lsweet/tts/App;)V
    .locals 24

    move-object/from16 v0, p0

    .line 78
    const-string v1, "crash dump parse failed: "

    const-string v2, "last"

    const-string v3, "Exit"

    .line 81
    :try_start_0
    sget-object v4, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v4}, Lsweet/tts/DiagnosticLog;->getActive()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v4}, Lsweet/tts/DetailedLog;->getActive()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_d

    .line 82
    :cond_0
    const-string v4, "exit_log"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lsweet/tts/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-wide/16 v6, 0x0

    .line 83
    invoke-interface {v4, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 84
    const-string v8, "activity"

    invoke-virtual {v0, v8}, Lsweet/tts/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/app/ActivityManager;

    .line 86
    invoke-virtual {v0}, Lsweet/tts/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x5

    invoke-virtual {v8, v0, v5, v9}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v10, v6

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 87
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 90
    :try_start_1
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v13

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v14

    .line 91
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-wide/from16 v16, v6

    :try_start_2
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "process="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " reason="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " status="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " importance="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " at="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " desc="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-object v5, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v5, v3, v0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v5, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v5, v3, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    :goto_1
    move v0, v5

    .line 95
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v7

    const/4 v9, 0x6

    if-ne v7, v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v0, :cond_6

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 97
    :cond_6
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_5

    check-cast v5, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object v7, v5

    check-cast v7, Ljava/io/InputStream;

    .line 99
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v12, 0x10000

    .line 100
    new-array v13, v12, [B

    .line 101
    :goto_5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    const v15, 0x1e8480

    if-ge v14, v15, :cond_7

    .line 102
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    sub-int/2addr v15, v14

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v7, v13, v15, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-ltz v14, :cond_8

    .line 104
    invoke-virtual {v9, v13, v15, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    .line 106
    :cond_8
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v9, 0x0

    .line 97
    :try_start_7
    invoke-static {v5, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-nez v7, :cond_9

    goto/16 :goto_c

    :cond_9
    if-eqz v0, :cond_a

    .line 109
    :try_start_8
    sget-object v0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-virtual {v0, v7}, Lsweet/tts/CrashReport;->parse([B)Lsweet/tts/CrashReport$Result;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 110
    :try_start_9
    sget-object v5, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v5, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-virtual {v0, v7}, Lsweet/tts/CrashReport;->fallback([B)Lsweet/tts/CrashReport$Result;

    move-result-object v0

    .line 114
    :goto_6
    sget-object v5, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v0}, Lsweet/tts/CrashReport$Result;->getShort()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crash: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lsweet/tts/CrashReport$Result;->getFull()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 115
    sget-object v7, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v7, v3, v5}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 174
    :cond_a
    new-instance v0, Ljava/lang/String;

    .line 118
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 119
    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    const-string v19, "\"main\""

    const/16 v22, 0x6

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b

    move v5, v15

    .line 120
    :cond_b
    sget-object v7, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "substring(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x5dc

    invoke-static {v5, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x20

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "anr main thread: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const/16 v5, 0xbb8

    invoke-static {v0, v5}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 121
    sget-object v7, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v7, v3, v5}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v15, 0x0

    :goto_9
    move-object v7, v0

    .line 97
    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_b

    :catchall_6
    move-exception v0

    const/4 v6, 0x5

    goto :goto_a

    :catchall_7
    move-exception v0

    move v6, v9

    :goto_a
    const/4 v15, 0x0

    goto :goto_b

    :catchall_8
    move-exception v0

    move v15, v5

    move-wide/from16 v16, v6

    move v6, v9

    .line 125
    :goto_b
    :try_start_c
    sget-object v5, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exit entry failed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_c
    move v9, v6

    move v5, v15

    move-wide/from16 v6, v16

    goto/16 :goto_0

    .line 128
    :cond_d
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception v0

    .line 130
    sget-object v1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "exit report failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    const-string v0, "Init"

    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lsweet/tts/UpdateChecker;->register(Landroid/app/Application;)V

    .line 18
    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    sput-object v1, Lsweet/tts/App;->context:Landroid/app/Application;

    .line 19
    invoke-direct {p0}, Lsweet/tts/App;->installCrashLogger()V

    .line 21
    :try_start_0
    const-string v1, "nofdsan"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nofdsan load failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->resetVolumeRatePitchToNewDefaultsOnce()V

    .line 26
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->resetNumberEmojiVoiceToMatchLanguageOnce()V

    .line 27
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->migrateDictionaryEnToVocalizerEnglishOnce()V

    .line 28
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->migrateGoogleVolumeDefaultOnce()V

    .line 29
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->migrateDictionaryToPerLanguageOnce()V

    .line 30
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->seedDictionaryWordExclusionDefaultsOnce()V

    .line 31
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->seedDictionaryWordExclusionDefaultsV2Once()V

    .line 32
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->seedDictionaryIndianEnglishV3Once()V

    .line 35
    :try_start_1
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->logsClearedForPrivacyV96()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    sget-object v1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v1}, Lsweet/tts/DiagnosticLog;->clear()V

    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v1}, Lsweet/tts/DetailedLog;->clear()V

    .line 37
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->setLogsClearedForPrivacyV96()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 39
    const-string v2, "AllInOneTTS"

    const-string v3, "privacy log clear failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_0
    :goto_1
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v1}, Lsweet/tts/DetailedLog;->rearmIfActive()V

    .line 42
    :try_start_2
    invoke-static {}, Lsweet/tts/LoggingKt;->compactEnv()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "env unavailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_2
    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "process start pid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lsweet/tts/EdgeToEdgeInsets;->INSTANCE:Lsweet/tts/EdgeToEdgeInsets;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lsweet/tts/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 46
    invoke-direct {p0}, Lsweet/tts/App;->logPreviousExits()V

    .line 48
    sget-object p0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {p0}, Lsweet/tts/EloquenceHub;->checkRecentCrashes()V

    return-void
.end method
