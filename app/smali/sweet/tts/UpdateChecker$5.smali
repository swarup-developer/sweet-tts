.class Lsweet/tts/UpdateChecker$5;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/UpdateChecker;->startDownload(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pd:Landroid/app/ProgressDialog;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/UpdateChecker$5;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 181
    move-object/from16 v8, p0

    .line 183
    const/4 v1, 0x0

    :try_start_3
    new-instance v9, Ljava/io/File;

    iget-object v0, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "SweetTTS-update.apk"

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b9

    .line 184
    :try_start_10
    new-instance v0, Ljava/net/URL;

    iget-object v1, v8, Lsweet/tts/UpdateChecker$5;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 185
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 186
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 188
    const-string v1, "User-Agent"

    const-string v2, "SweetTTS-UpdateCheck"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 190
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9a

    .line 194
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v10, v1

    .line 195
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 196
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 197
    const/high16 v1, 0x10000

    new-array v14, v1, [B

    .line 198
    const-wide/16 v15, 0x0

    move-wide v1, v15

    .line 200
    :goto_4f
    invoke-virtual {v12, v14}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_85

    .line 201
    const/4 v4, 0x0

    invoke-virtual {v13, v14, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 202
    int-to-long v3, v3

    add-long v17, v1, v3

    .line 203
    cmp-long v1, v10, v15

    if-lez v1, :cond_80

    .line 204
    const-wide/16 v1, 0x64

    mul-long v1, v1, v17

    div-long/2addr v1, v10

    long-to-int v3, v1

    .line 205
    const-wide/32 v1, 0x100000

    div-long v4, v17, v1

    .line 206
    div-long v6, v10, v1

    .line 207
    iget-object v2, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lsweet/tts/UpdateChecker$5$1;

    move-object/from16 v19, v1

    move-object v15, v2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lsweet/tts/UpdateChecker$5$1;-><init>(Lsweet/tts/UpdateChecker$5;IJJ)V

    move-object/from16 v1, v19

    invoke-virtual {v15, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    nop

    .line 200
    :cond_80
    move-wide/from16 v1, v17

    const-wide/16 v15, 0x0

    goto :goto_4f

    .line 215
    :cond_85
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 217
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 218
    nop

    .line 219
    iget-object v0, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lsweet/tts/UpdateChecker$5$2;

    invoke-direct {v1, v8, v9}, Lsweet/tts/UpdateChecker$5$2;-><init>(Lsweet/tts/UpdateChecker$5;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    goto :goto_c9

    .line 191
    :cond_9a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    new-instance v0, Ljava/lang/Exception;

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
    :try_end_b6
    .catchall {:try_start_10 .. :try_end_b6} :catchall_b6

    .line 225
    :catchall_b6
    move-exception v0

    move-object v1, v9

    goto :goto_ba

    :catchall_b9
    move-exception v0

    .line 226
    :goto_ba
    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 227
    :cond_bf
    iget-object v0, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lsweet/tts/UpdateChecker$5$3;

    invoke-direct {v1, v8}, Lsweet/tts/UpdateChecker$5$3;-><init>(Lsweet/tts/UpdateChecker$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    :goto_c9
    return-void
.end method
