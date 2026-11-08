.class public final Lsweet/tts/KeepRunning;
.super Ljava/lang/Object;
.source "KeepRunning.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lsweet/tts/KeepRunning;",
        "",
        "<init>",
        "()V",
        "CHANNEL",
        "",
        "ID",
        "",
        "service",
        "Landroid/app/Service;",
        "onServiceCreated",
        "",
        "s",
        "onServiceDestroyed",
        "apply",
        "start",
        "stop",
        "log",
        "msg",
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
.field private static final CHANNEL:Ljava/lang/String; = "keep_running"

.field private static final ID:I = 0x1005

.field public static final INSTANCE:Lsweet/tts/KeepRunning;

.field private static volatile service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/KeepRunning;

    invoke-direct {v0}, Lsweet/tts/KeepRunning;-><init>()V

    sput-object v0, Lsweet/tts/KeepRunning;->INSTANCE:Lsweet/tts/KeepRunning;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 76
    sget-object p0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string v0, "KeepRunning"

    invoke-virtual {p0, v0, p1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object p0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {p0, v0, p1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final start(Landroid/app/Service;)V
    .locals 7

    .line 44
    const-string v0, "keep_running"

    .line 45
    :try_start_0
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 46
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "Keep running in background"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v5, 0x0

    .line 48
    invoke-virtual {v2, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 50
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    const-class v6, Lsweet/tts/MainActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x4000000

    invoke-static {v1, v3, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 51
    new-instance v2, Landroid/app/Notification$Builder;

    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    invoke-direct {v2, v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x1080032

    .line 52
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 53
    const-string v2, "Sweet TTS is running"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 54
    const-string v2, "Keeps speech ready in the background"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1005

    const/4 v2, 0x2

    .line 59
    invoke-virtual {p1, v1, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 60
    const-string p1, "on (foreground service with notification)"

    invoke-direct {p0, p1}, Lsweet/tts/KeepRunning;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "could not start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsweet/tts/KeepRunning;->log(Ljava/lang/String;)V

    return-void
.end method

.method private final stop(Landroid/app/Service;)V
    .locals 2

    const/4 v0, 0x1

    .line 69
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "could not stop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsweet/tts/KeepRunning;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 2

    .line 39
    sget-object v0, Lsweet/tts/KeepRunning;->service:Landroid/app/Service;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->keepRunningEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lsweet/tts/KeepRunning;->start(Landroid/app/Service;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lsweet/tts/KeepRunning;->stop(Landroid/app/Service;)V

    return-void
.end method

.method public final onServiceCreated(Landroid/app/Service;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sput-object p1, Lsweet/tts/KeepRunning;->service:Landroid/app/Service;

    .line 27
    invoke-virtual {p0}, Lsweet/tts/KeepRunning;->apply()V

    return-void
.end method

.method public final onServiceDestroyed(Landroid/app/Service;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lsweet/tts/KeepRunning;->service:Landroid/app/Service;

    if-ne v0, p1, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lsweet/tts/KeepRunning;->stop(Landroid/app/Service;)V

    const/4 p0, 0x0

    .line 33
    sput-object p0, Lsweet/tts/KeepRunning;->service:Landroid/app/Service;

    :cond_0
    return-void
.end method
