.class Lsweet/tts/UpdateChecker$5;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/UpdateChecker;->startDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$apiUrl:Ljava/lang/String;

.field final synthetic val$pageUrl:Ljava/lang/String;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$5;->val$apiUrl:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/UpdateChecker$5;->val$pd:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lsweet/tts/UpdateChecker$5;->val$pageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 198
    move-object/from16 v8, p0

    .line 200
    const/4 v1, 0x0

    :try_start_3
    new-instance v9, Ljava/io/File;

    iget-object v0, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "SweetTTS-update.apk"

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_c3

    .line 201
    :try_start_10
    new-instance v0, Ljava/net/URL;

    iget-object v1, v8, Lsweet/tts/UpdateChecker$5;->val$apiUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 202
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 203
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 204
    const-string v1, "Authorization"

    const-string v2, "token "

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "Accept"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "User-Agent"

    const-string v2, "SweetTTS-UpdateCheck"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 208
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a4

    .line 212
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v10, v1

    .line 213
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 214
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    const/high16 v1, 0x10000

    new-array v14, v1, [B

    .line 216
    const-wide/16 v15, 0x0

    move-wide v1, v15

    .line 218
    :goto_59
    invoke-virtual {v12, v14}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8f

    .line 219
    const/4 v4, 0x0

    invoke-virtual {v13, v14, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 220
    int-to-long v3, v3

    add-long v17, v1, v3

    .line 221
    cmp-long v1, v10, v15

    if-lez v1, :cond_8a

    .line 222
    const-wide/16 v1, 0x64

    mul-long v1, v1, v17

    div-long/2addr v1, v10

    long-to-int v3, v1

    .line 223
    const-wide/32 v1, 0x100000

    div-long v4, v17, v1

    .line 224
    div-long v6, v10, v1

    .line 225
    iget-object v2, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lsweet/tts/UpdateChecker$5$1;

    move-object/from16 v19, v1

    move-object v15, v2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lsweet/tts/UpdateChecker$5$1;-><init>(Lsweet/tts/UpdateChecker$5;IJJ)V

    move-object/from16 v1, v19

    invoke-virtual {v15, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
    nop

    .line 218
    :cond_8a
    move-wide/from16 v1, v17

    const-wide/16 v15, 0x0

    goto :goto_59

    .line 233
    :cond_8f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 234
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 235
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 236
    nop

    .line 237
    iget-object v0, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lsweet/tts/UpdateChecker$5$2;

    invoke-direct {v1, v8, v9}, Lsweet/tts/UpdateChecker$5$2;-><init>(Lsweet/tts/UpdateChecker$5;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    goto :goto_d3

    .line 209
    :cond_a4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
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
    :try_end_c0
    .catchall {:try_start_10 .. :try_end_c0} :catchall_c0

    .line 243
    :catchall_c0
    move-exception v0

    move-object v1, v9

    goto :goto_c4

    :catchall_c3
    move-exception v0

    .line 244
    :goto_c4
    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 245
    :cond_c9
    iget-object v0, v8, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lsweet/tts/UpdateChecker$5$3;

    invoke-direct {v1, v8}, Lsweet/tts/UpdateChecker$5$3;-><init>(Lsweet/tts/UpdateChecker$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 255
    :goto_d3
    return-void
.end method
