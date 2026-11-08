.class Lsweet/tts/VoiceDownloader$1$2;
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

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lsweet/tts/VoiceDownloader$1;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lsweet/tts/VoiceDownloader$1$2;->this$0:Lsweet/tts/VoiceDownloader$1;

    iput-boolean p2, p0, Lsweet/tts/VoiceDownloader$1$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 159
    :try_start_0
    iget-object v0, p0, Lsweet/tts/VoiceDownloader$1$2;->this$0:Lsweet/tts/VoiceDownloader$1;

    iget-object v0, v0, Lsweet/tts/VoiceDownloader$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    .line 160
    :goto_9
    iget-boolean v0, p0, Lsweet/tts/VoiceDownloader$1$2;->val$success:Z

    if-eqz v0, :cond_1c

    .line 161
    iget-object v0, p0, Lsweet/tts/VoiceDownloader$1$2;->this$0:Lsweet/tts/VoiceDownloader$1;

    iget-object v0, v0, Lsweet/tts/VoiceDownloader$1;->val$activity:Landroid/app/Activity;

    const-string v1, "Voices ready"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_23

    .line 163
    :cond_1c
    iget-object v0, p0, Lsweet/tts/VoiceDownloader$1$2;->this$0:Lsweet/tts/VoiceDownloader$1;

    iget-object v0, v0, Lsweet/tts/VoiceDownloader$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lsweet/tts/VoiceDownloader;->-$$Nest$smshowRetry(Landroid/app/Activity;)V

    .line 165
    :goto_23
    return-void
.end method
