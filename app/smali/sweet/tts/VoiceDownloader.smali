.class public final Lsweet/tts/VoiceDownloader;
.super Ljava/lang/Object;
.source "VoiceDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/VoiceDownloader$Hooks;
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "https://github.com/swarup-developer/sweet-tts/releases/download/voices-v1/"

.field private static final FILES:[Ljava/lang/String;

.field private static volatile sChecked:Z

.field private static volatile sRunning:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetFILES()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lsweet/tts/VoiceDownloader;->FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsRunning(Z)V
    .registers 1

    sput-boolean p0, Lsweet/tts/VoiceDownloader;->sRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smheadSize(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lsweet/tts/VoiceDownloader;->headSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smshowRetry(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lsweet/tts/VoiceDownloader;->showRetry(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smstartDownload(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lsweet/tts/VoiceDownloader;->startDownload(Landroid/app/Activity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "arw_laila_embedded-compact_1-0-0.xmf"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "bei_paya_embedded-compact_1-0-0.xmf"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "bhi_jaya_embedded-compact_1-1-0.xmf"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "clm.xmf"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "eni_rishi_embedded-compact_1-0-1.xmf"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "enu_samantha_embedded-compact_1-0-2.xmf"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "hii_lekha_embedded-compact_1-0-0.xmf"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "hii_neel_embedded-compact_1-0-0.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "kai_alpana_embedded-compact_1-1-0.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "lid.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "mai_ananya_embedded-compact_1-0-1.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "synth_med_fxd_bet3f22.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "sysdct.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "tai_vani_embedded-compact_1-1-0.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "tei_geeta_embedded-compact_1-1-1.xmf"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "userdct_hei.xmf"

    aput-object v3, v0, v1

    sput-object v0, Lsweet/tts/VoiceDownloader;->FILES:[Ljava/lang/String;

    .line 38
    sput-boolean v2, Lsweet/tts/VoiceDownloader;->sRunning:Z

    .line 39
    sput-boolean v2, Lsweet/tts/VoiceDownloader;->sChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static diskName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 62
    nop

    .line 63
    const-string v0, ".xmf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 64
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vocalizer_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".dat"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static headSize(Ljava/lang/String;)J
    .registers 3

    .line 175
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 176
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 177
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 179
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 180
    const-string v0, "User-Agent"

    const-string v1, "SweetTTS-VoiceDownload"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 182
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    .line 183
    return-wide v0

    .line 184
    :catchall_2c
    move-exception p0

    .line 185
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static maybeStart(Landroid/app/Activity;)V
    .registers 2

    .line 76
    sget-boolean v0, Lsweet/tts/VoiceDownloader;->sChecked:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lsweet/tts/VoiceDownloader;->sRunning:Z

    if-eqz v0, :cond_9

    goto :goto_17

    .line 77
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lsweet/tts/VoiceDownloader;->sChecked:Z

    .line 78
    invoke-static {p0}, Lsweet/tts/VoiceDownloader;->needsVoices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 79
    :cond_13
    invoke-static {p0}, Lsweet/tts/VoiceDownloader;->startDownload(Landroid/app/Activity;)V

    .line 80
    return-void

    .line 76
    :cond_17
    :goto_17
    return-void
.end method

.method public static needsVoices(Landroid/content/Context;)Z
    .registers 7

    .line 68
    invoke-static {p0}, Lsweet/tts/VoiceDownloader;->voicesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 69
    sget-object v0, Lsweet/tts/VoiceDownloader;->FILES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    .line 70
    new-instance v5, Ljava/io/File;

    invoke-static {v4}, Lsweet/tts/VoiceDownloader;->diskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 p0, 0x1

    return p0

    .line 69
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 72
    :cond_21
    return v2
.end method

.method public static register(Landroid/app/Application;)V
    .registers 2

    .line 52
    new-instance v0, Lsweet/tts/VoiceDownloader$Hooks;

    invoke-direct {v0}, Lsweet/tts/VoiceDownloader$Hooks;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 53
    return-void
.end method

.method private static showRetry(Landroid/app/Activity;)V
    .registers 4

    .line 191
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3d

    .line 192
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Voice download failed"

    .line 193
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Sweet TTS needs to download its voices once before it can speak. Check your internet connection and tap Retry."

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Retry"

    new-instance v2, Lsweet/tts/VoiceDownloader$3;

    invoke-direct {v2, p0}, Lsweet/tts/VoiceDownloader$3;-><init>(Landroid/app/Activity;)V

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Later"

    new-instance v1, Lsweet/tts/VoiceDownloader$2;

    invoke-direct {v1}, Lsweet/tts/VoiceDownloader$2;-><init>()V

    .line 201
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3e

    .line 208
    goto :goto_3f

    .line 191
    :cond_3d
    :goto_3d
    return-void

    .line 207
    :catchall_3e
    move-exception p0

    .line 209
    :goto_3f
    return-void
.end method

.method private static startDownload(Landroid/app/Activity;)V
    .registers 5

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lsweet/tts/VoiceDownloader;->sRunning:Z

    .line 84
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 85
    const-string v2, "First time setup"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    const-string v2, "Preparing voices..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 88
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    :try_start_21
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_26

    :catchall_25
    move-exception v2

    .line 92
    :goto_26
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lsweet/tts/VoiceDownloader$1;

    invoke-direct {v3, p0, v1}, Lsweet/tts/VoiceDownloader$1;-><init>(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 170
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method static voicesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 57
    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 58
    :cond_b
    new-instance p0, Ljava/io/File;

    const-string v1, "Voices"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method
