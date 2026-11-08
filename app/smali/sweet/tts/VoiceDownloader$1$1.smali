.class Lsweet/tts/VoiceDownloader$1$1;
.super Ljava/lang/Object;
.source "VoiceDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/VoiceDownloader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsweet/tts/VoiceDownloader$1;

.field final synthetic val$fname:Ljava/lang/String;

.field final synthetic val$mb:J

.field final synthetic val$pct:I

.field final synthetic val$tmb:J


# direct methods
.method constructor <init>(Lsweet/tts/VoiceDownloader$1;IJJLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lsweet/tts/VoiceDownloader$1$1;->this$0:Lsweet/tts/VoiceDownloader$1;

    iput p2, p0, Lsweet/tts/VoiceDownloader$1$1;->val$pct:I

    iput-wide p3, p0, Lsweet/tts/VoiceDownloader$1$1;->val$mb:J

    iput-wide p5, p0, Lsweet/tts/VoiceDownloader$1$1;->val$tmb:J

    iput-object p7, p0, Lsweet/tts/VoiceDownloader$1$1;->val$fname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 137
    iget-object v0, p0, Lsweet/tts/VoiceDownloader$1$1;->this$0:Lsweet/tts/VoiceDownloader$1;

    iget-object v0, v0, Lsweet/tts/VoiceDownloader$1;->val$pd:Landroid/app/ProgressDialog;

    iget v1, p0, Lsweet/tts/VoiceDownloader$1$1;->val$pct:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 138
    iget-object v0, p0, Lsweet/tts/VoiceDownloader$1$1;->this$0:Lsweet/tts/VoiceDownloader$1;

    iget-object v0, v0, Lsweet/tts/VoiceDownloader$1;->val$pd:Landroid/app/ProgressDialog;

    iget-wide v1, p0, Lsweet/tts/VoiceDownloader$1$1;->val$mb:J

    iget-wide v3, p0, Lsweet/tts/VoiceDownloader$1$1;->val$tmb:J

    iget-object v5, p0, Lsweet/tts/VoiceDownloader$1$1;->val$fname:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading voices: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method
