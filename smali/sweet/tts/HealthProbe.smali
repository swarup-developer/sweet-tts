.class public final Lsweet/tts/HealthProbe;
.super Ljava/lang/Object;
.source "HealthProbe.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lsweet/tts/HealthProbe;",
        "",
        "<init>",
        "()V",
        "lastCpuMs",
        "",
        "lastWallMs",
        "lastChargeUah",
        "line",
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


# static fields
.field public static final INSTANCE:Lsweet/tts/HealthProbe;

.field private static lastChargeUah:J

.field private static lastCpuMs:J

.field private static lastWallMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/HealthProbe;

    invoke-direct {v0}, Lsweet/tts/HealthProbe;-><init>()V

    sput-object v0, Lsweet/tts/HealthProbe;->INSTANCE:Lsweet/tts/HealthProbe;

    const-wide/16 v0, -0x1

    .line 20
    sput-wide v0, Lsweet/tts/HealthProbe;->lastCpuMs:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 22
    sput-wide v0, Lsweet/tts/HealthProbe;->lastChargeUah:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized line()Ljava/lang/String;
    .locals 40

    const-string v0, "[Health] battery="

    const-string v1, " batteryChange="

    const-string v2, " current="

    const-string v3, " charge="

    const-string v4, " temp="

    const-string v5, "appCpu=+"

    const-string v6, "appCpu="

    const-string v7, "[Health] unavailable: "

    monitor-enter p0

    .line 27
    :try_start_0
    sget-object v8, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {v8}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object v8

    .line 28
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    const/4 v11, -0x1

    if-eqz v9, :cond_0

    .line 29
    const-string v12, "level"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    if-eqz v9, :cond_1

    .line 30
    const-string v13, "scale"

    invoke-virtual {v9, v13, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    if-ltz v12, :cond_2

    if-lez v13, :cond_2

    mul-int/lit8 v12, v12, 0x64

    .line 31
    div-int/2addr v12, v13

    goto :goto_2

    :cond_2
    move v12, v11

    :goto_2
    if-eqz v9, :cond_3

    .line 32
    const-string v13, "status"

    invoke-virtual {v9, v13, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    :cond_3
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v11, v13, :cond_5

    const/4 v15, 0x5

    if-ne v11, v15, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move v11, v14

    :goto_4
    const/high16 v15, -0x80000000

    if-eqz v9, :cond_6

    .line 34
    const-string v10, "temperature"

    invoke-virtual {v9, v10, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    goto :goto_5

    :cond_6
    move v9, v15

    .line 35
    :goto_5
    const-class v10, Landroid/os/BatteryManager;

    invoke-virtual {v8, v10}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryManager;

    const-wide/high16 v17, -0x8000000000000000L

    if-eqz v10, :cond_7

    .line 36
    invoke-virtual {v10, v14}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v19

    goto :goto_6

    :cond_7
    move-wide/from16 v19, v17

    :goto_6
    if-eqz v10, :cond_8

    .line 37
    invoke-virtual {v10, v13}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v21

    goto :goto_7

    :cond_8
    move-wide/from16 v21, v17

    .line 38
    :goto_7
    const-class v10, Landroid/os/PowerManager;

    invoke-virtual {v8, v10}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 39
    const-class v13, Landroid/app/ActivityManager;

    invoke-virtual {v8, v13}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 41
    :try_start_1
    const-class v15, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v8, v15}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManager;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_8

    :cond_9
    const/16 v16, 0x0

    :goto_8
    if-nez v16, :cond_a

    goto :goto_9

    .line 42
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v15, 0xa

    if-ne v8, v15, :cond_b

    const-string v8, "ACTIVE"

    goto :goto_e

    :cond_b
    :goto_9
    if-nez v16, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v15, 0x14

    if-ne v8, v15, :cond_d

    const-string v8, "WORKING_SET"

    goto :goto_e

    :cond_d
    :goto_a
    if-nez v16, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v15, 0x1e

    if-ne v8, v15, :cond_f

    const-string v8, "FREQUENT"

    goto :goto_e

    :cond_f
    :goto_b
    if-nez v16, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v15, 0x28

    if-ne v8, v15, :cond_11

    const-string v8, "RARE"

    goto :goto_e

    :cond_11
    :goto_c
    if-nez v16, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v15, 0x2d

    if-ne v8, v15, :cond_13

    const-string v8, "RESTRICTED"

    goto :goto_e

    :cond_13
    :goto_d
    if-nez v16, :cond_14

    const-string v8, "?"

    goto :goto_e

    :cond_14
    const-string v8, "other"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    .line 44
    :catchall_0
    :try_start_2
    const-string v8, "?"

    .line 46
    :goto_e
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v14

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 48
    sget-wide v25, Lsweet/tts/HealthProbe;->lastCpuMs:J

    const-wide/16 v27, 0x0

    cmp-long v29, v25, v27

    const-wide/16 v30, 0x3e8

    if-ltz v29, :cond_15

    sget-wide v32, Lsweet/tts/HealthProbe;->lastWallMs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmp-long v29, v23, v32

    if-lez v29, :cond_15

    move-object/from16 v34, v10

    move/from16 v29, v11

    sub-long v10, v14, v25

    move-object/from16 v25, v7

    sub-long v6, v23, v32

    move-object/from16 v26, v2

    move-object/from16 v32, v3

    .line 51
    :try_start_3
    div-long v2, v6, v30

    sget-object v33, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    move-object/from16 v33, v13

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v35, v8

    const-string v8, "%.1f"

    move-object/from16 v36, v0

    move-object/from16 v37, v1

    long-to-double v0, v10

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v38

    long-to-double v6, v6

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ms in "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% of one core)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_15
    move-object/from16 v36, v0

    move-object/from16 v37, v1

    move-object/from16 v26, v2

    move-object/from16 v32, v3

    move-object/from16 v25, v7

    move-object/from16 v35, v8

    move-object/from16 v34, v10

    move/from16 v29, v11

    move-object/from16 v33, v13

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms since process start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_f
    sput-wide v14, Lsweet/tts/HealthProbe;->lastCpuMs:J

    sput-wide v23, Lsweet/tts/HealthProbe;->lastWallMs:J

    cmp-long v1, v19, v17

    if-eqz v1, :cond_16

    .line 55
    sget-wide v2, Lsweet/tts/HealthProbe;->lastChargeUah:J

    cmp-long v5, v2, v17

    if-eqz v5, :cond_16

    sub-long v2, v2, v19

    long-to-double v2, v2

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v5

    .line 57
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%+.1f"

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v37

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mAh since last line"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 58
    :cond_16
    const-string v2, ""

    :goto_10
    if-eqz v1, :cond_17

    .line 59
    sput-wide v19, Lsweet/tts/HealthProbe;->lastChargeUah:J

    :cond_17
    if-ltz v12, :cond_18

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_18
    const-string v3, "?"

    :goto_11
    if-eqz v29, :cond_19

    const-string v5, "CHARGING"

    goto :goto_12

    :cond_19
    const-string v5, "on battery"

    :goto_12
    const/high16 v6, -0x80000000

    if-eq v9, v6, :cond_1a

    int-to-double v6, v9

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "C"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_1a
    const-string v4, ""

    :goto_13
    if-eqz v1, :cond_1b

    .line 63
    div-long v6, v19, v30

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v8, v32

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "mAh"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_1b
    const-string v1, ""

    :goto_14
    cmp-long v6, v21, v17

    if-eqz v6, :cond_1c

    cmp-long v6, v21, v27

    if-eqz v6, :cond_1c

    .line 64
    div-long v6, v21, v30

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v26

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_15

    :cond_1c
    const-string v6, ""

    :goto_15
    if-eqz v34, :cond_1d

    .line 65
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    const-string v7, "on"

    goto :goto_16

    :cond_1d
    const-string v7, "off"

    :goto_16
    if-eqz v34, :cond_1e

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1e

    const-string v8, "on"

    goto :goto_17

    :cond_1e
    const-string v8, "off"

    :goto_17
    if-eqz v33, :cond_1f

    .line 66
    invoke-virtual/range {v33 .. v33}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1f

    const-string v9, "YES"

    goto :goto_18

    :cond_1f
    const-string v9, "no"

    .line 67
    :goto_18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v36

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " powerSave="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bgRestricted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " standbyBucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, v35

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1a

    :catchall_1
    move-exception v0

    goto :goto_19

    :catchall_2
    move-exception v0

    move-object/from16 v25, v7

    .line 69
    :goto_19
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 26
    :goto_1a
    monitor-exit p0

    return-object v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
