.class public final Lsweet/tts/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/UpdateChecker$Hooks;
    }
.end annotation


# static fields
.field private static final META_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/swarup-developer/sweet-tts-update/main/latest.json"

.field private static final MIN_INTERVAL_MS:J = 0x1499700L

.field private static final PREFS:Ljava/lang/String; = "aiotts_settings"

.field private static final UPDATE_TOKEN:Ljava/lang/String; = "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"

.field private static volatile sCheckedThisProcess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lsweet/tts/UpdateChecker;->sCheckedThisProcess:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lsweet/tts/UpdateChecker;->runCheck(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 27
    invoke-static/range {p0 .. p6}, Lsweet/tts/UpdateChecker;->showDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-static {p0, p1, p2}, Lsweet/tts/UpdateChecker;->startDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/io/File;)V
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lsweet/tts/UpdateChecker;->installApk(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method public static check(Landroid/app/Activity;)V
    .registers 11

    .line 52
    sget-boolean v0, Lsweet/tts/UpdateChecker;->sCheckedThisProcess:Z

    if-eqz v0, :cond_5

    return-void

    .line 53
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lsweet/tts/UpdateChecker;->sCheckedThisProcess:Z

    .line 54
    const-string v1, "aiotts_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    const-wide/16 v4, 0x0

    const-string v6, "update_last_check"

    invoke-interface {v1, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v7, 0x1499700

    cmp-long v9, v4, v7

    if-gez v9, :cond_25

    return-void

    .line 57
    :cond_25
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lsweet/tts/UpdateChecker$1;

    invoke-direct {v3, p0, v1}, Lsweet/tts/UpdateChecker$1;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 64
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method

.method private static installApk(Landroid/app/Activity;Ljava/io/File;)V
    .registers 4

    .line 263
    :try_start_0
    const-string v0, "sweet.tts.fileprovider"

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    .line 270
    goto :goto_20

    .line 269
    :catchall_1f
    move-exception p0

    .line 271
    :goto_20
    return-void
.end method

.method public static register(Landroid/app/Application;)V
    .registers 2

    .line 48
    new-instance v0, Lsweet/tts/UpdateChecker$Hooks;

    invoke-direct {v0}, Lsweet/tts/UpdateChecker$Hooks;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 49
    return-void
.end method

.method private static runCheck(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 14

    .line 69
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://raw.githubusercontent.com/swarup-developer/sweet-tts-update/main/latest.json"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 70
    const/16 v2, 0x1f40

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 71
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 73
    const-string v3, "User-Agent"

    const-string v4, "SweetTTS-UpdateCheck"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2e

    .line 75
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    return-void

    .line 78
    :cond_2e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :goto_43
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 82
    :cond_4d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 83
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    const-string v3, "versionCode"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 87
    const-string v3, "versionName"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    const-string v3, "whatsNew"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    const-string v3, "releaseUrl"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    nop

    .line 91
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_7f

    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v2

    goto :goto_80

    :cond_7f
    move-object v4, v0

    .line 92
    :goto_80
    const-string v5, "arm64"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 93
    const-string v4, "releaseUrlArm64"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_95

    move-object v3, v4

    .line 95
    :cond_95
    const-string v4, "apiUrlArm64"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    move-object v10, v3

    goto :goto_b1

    .line 97
    :cond_9d
    const-string v4, "releaseUrlArm32"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_aa

    move-object v3, v4

    .line 99
    :cond_aa
    const-string v4, "apiUrlArm32"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v3

    .line 101
    :goto_b1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_bf

    const-string v3, "apiUrl"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_c0

    :cond_bf
    move-object v11, v4

    .line 102
    :goto_c0
    if-lez v7, :cond_f1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c9

    goto :goto_f1

    .line 104
    :cond_c9
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 106
    if-gt v7, v0, :cond_da

    return-void

    .line 108
    :cond_da
    const-string v0, "update_dismissed_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_e3

    return-void

    .line 110
    :cond_e3
    nop

    .line 111
    nop

    .line 112
    new-instance v0, Lsweet/tts/UpdateChecker$2;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lsweet/tts/UpdateChecker$2;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f0
    .catchall {:try_start_2 .. :try_end_f0} :catchall_f2

    .line 118
    goto :goto_f3

    .line 102
    :cond_f1
    :goto_f1
    return-void

    .line 117
    :catchall_f2
    move-exception p0

    .line 119
    :goto_f3
    return-void
.end method

.method private static showDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_f3

    .line 125
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is available."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_f4

    const-string v2, ""

    if-lez v1, :cond_3f

    :try_start_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\nWhat\'s new:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_40

    :cond_3f
    move-object p4, v2

    :goto_40
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4d

    .line 128
    const-string v0, "\n\nTap Download. The update downloads inside the app, then the installer opens by itself. Your settings are kept."

    goto :goto_4f

    .line 129
    :cond_4d
    const-string v0, "\n\nTap Download to get it in your browser, then open the downloaded file to install. Your settings are kept."

    :goto_4f
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 132
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 133
    const/high16 v2, 0x41400000    # 12.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 135
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 139
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const/high16 p4, 0x41800000    # 16.0f

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Sweet TTS update available"

    .line 145
    invoke-virtual {p4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 146
    invoke-virtual {p4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 147
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p4

    .line 149
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 150
    const-string v3, "Download"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {p3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    mul-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    invoke-virtual {p3, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    invoke-virtual {v2, v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance p3, Lsweet/tts/UpdateChecker$3;

    invoke-direct {p3, p4, p6, p0, p5}, Lsweet/tts/UpdateChecker$3;-><init>(Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance p3, Landroid/widget/Button;

    invoke-direct {p3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 171
    const-string p0, "Later"

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    invoke-virtual {p0, v6, v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    invoke-virtual {v2, p3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance p0, Lsweet/tts/UpdateChecker$4;

    invoke-direct {p0, p1, p2, p4}, Lsweet/tts/UpdateChecker$4;-><init>(Landroid/content/SharedPreferences;ILandroid/app/AlertDialog;)V

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p4}, Landroid/app/AlertDialog;->show()V
    :try_end_f2
    .catchall {:try_start_2b .. :try_end_f2} :catchall_f4

    .line 185
    goto :goto_f5

    .line 124
    :cond_f3
    :goto_f3
    return-void

    .line 184
    :catchall_f4
    move-exception p0

    .line 186
    :goto_f5
    return-void
.end method

.method private static startDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 189
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 190
    const-string v1, "Downloading update"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    const-string v1, "Starting download..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 193
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 195
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 196
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lsweet/tts/UpdateChecker$5;

    invoke-direct {v3, p0, p1, v0, p2}, Lsweet/tts/UpdateChecker$5;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 258
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 259
    return-void
.end method
