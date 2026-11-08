.class Lsweet/tts/VoiceDownloader$1;
.super Ljava/lang/Object;
.source "VoiceDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/VoiceDownloader;->startDownload(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lsweet/tts/VoiceDownloader$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lsweet/tts/VoiceDownloader$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 30

    .line 94
    move-object/from16 v9, p0

    .line 96
    const/4 v10, 0x0

    :try_start_3
    iget-object v0, v9, Lsweet/tts/VoiceDownloader$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lsweet/tts/VoiceDownloader;->voicesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    nop

    .line 99
    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v11, v1, [J

    .line 100
    const-wide/16 v12, 0x0

    move-wide v14, v12

    const/4 v1, 0x0

    :goto_18
    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b5

    const-string v8, "https://github.com/swarup-developer/sweet-tts/releases/download/voices-v1/"

    if-ge v1, v2, :cond_46

    .line 101
    :try_start_21
    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsweet/tts/VoiceDownloader;->-$$Nest$smheadSize(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v11, v1

    .line 102
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v14, v2

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 104
    :cond_46
    nop

    .line 105
    move-wide/from16 v16, v12

    const/4 v6, 0x0

    :goto_4a
    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v6, v1, :cond_1b4

    .line 106
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-static {v1}, Lsweet/tts/VoiceDownloader;->diskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".part"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-static {v1}, Lsweet/tts/VoiceDownloader;->diskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 109
    aget-wide v1, v11, v6

    cmp-long v3, v1, v12

    if-lez v3, :cond_90

    goto :goto_91

    :cond_90
    move-wide v1, v12

    :goto_91
    add-long v16, v16, v1

    .line 110
    move-object/from16 v22, v0

    move/from16 v21, v6

    move-object/from16 v23, v8

    goto/16 :goto_17c

    .line 112
    :cond_9b
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 113
    const/16 v1, 0x3a98

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 114
    const/16 v1, 0x7530

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 115
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 116
    const-string v1, "User-Agent"

    const-string v2, "SweetTTS-VoiceDownload"

    invoke-virtual {v5, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_192

    .line 121
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 122
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 124
    nop

    .line 126
    nop

    .line 127
    invoke-static {}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfgetFILES()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v6

    move-wide/from16 v19, v12

    .line 128
    :goto_f1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_15d

    .line 129
    invoke-virtual {v2, v1, v10, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 130
    int-to-long v12, v12

    add-long v19, v19, v12

    .line 131
    const-wide/16 v12, 0x0

    cmp-long v21, v14, v12

    if-lez v21, :cond_139

    .line 132
    add-long v21, v16, v19

    const-wide/16 v23, 0x64

    mul-long v23, v23, v21

    div-long v12, v23, v14

    long-to-int v13, v12

    .line 133
    const-wide/32 v23, 0x100000

    div-long v21, v21, v23

    .line 134
    div-long v23, v14, v23

    .line 135
    iget-object v12, v9, Lsweet/tts/VoiceDownloader$1;->val$activity:Landroid/app/Activity;

    new-instance v10, Lsweet/tts/VoiceDownloader$1$1;

    move-object/from16 v25, v1

    move-object v1, v10

    move-object/from16 v26, v2

    move-object/from16 v2, p0

    move-object/from16 v27, v3

    move v3, v13

    move-object v13, v4

    move-object/from16 v28, v5

    move-wide/from16 v4, v21

    move-object/from16 v22, v0

    move/from16 v21, v6

    move-object v0, v7

    move-wide/from16 v6, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lsweet/tts/VoiceDownloader$1$1;-><init>(Lsweet/tts/VoiceDownloader$1;IJJLjava/lang/String;)V

    invoke-virtual {v12, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    goto :goto_149

    .line 131
    :cond_139
    move-object/from16 v22, v0

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move/from16 v21, v6

    move-object v0, v7

    move-object/from16 v23, v8

    .line 128
    :goto_149
    move-object v7, v0

    move-object v4, v13

    move/from16 v6, v21

    move-object/from16 v0, v22

    move-object/from16 v8, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v5, v28

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    goto :goto_f1

    .line 143
    :cond_15d
    move-object/from16 v22, v0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move/from16 v21, v6

    move-object v0, v7

    move-object/from16 v23, v8

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 144
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 150
    add-long v16, v16, v19

    .line 105
    :goto_17c
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v0, v22

    move-object/from16 v8, v23

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_4a

    .line 147
    :cond_187
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 148
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "rename failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_192
    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b4
    .catchall {:try_start_21 .. :try_end_1b4} :catchall_1b5

    .line 154
    :cond_1b4
    goto :goto_1b7

    .line 152
    :catchall_1b5
    move-exception v0

    .line 153
    const/4 v2, 0x0

    .line 155
    :goto_1b7
    const/4 v1, 0x0

    invoke-static {v1}, Lsweet/tts/VoiceDownloader;->-$$Nest$sfputsRunning(Z)V

    .line 156
    nop

    .line 157
    iget-object v0, v9, Lsweet/tts/VoiceDownloader$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lsweet/tts/VoiceDownloader$1$2;

    invoke-direct {v1, v9, v2}, Lsweet/tts/VoiceDownloader$1$2;-><init>(Lsweet/tts/VoiceDownloader$1;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
