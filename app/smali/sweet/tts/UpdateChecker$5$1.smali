.class Lsweet/tts/UpdateChecker$5$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/UpdateChecker$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsweet/tts/UpdateChecker$5;

.field final synthetic val$mb:J

.field final synthetic val$pct:I

.field final synthetic val$tmb:J


# direct methods
.method constructor <init>(Lsweet/tts/UpdateChecker$5;IJJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lsweet/tts/UpdateChecker$5$1;->this$0:Lsweet/tts/UpdateChecker$5;

    iput p2, p0, Lsweet/tts/UpdateChecker$5$1;->val$pct:I

    iput-wide p3, p0, Lsweet/tts/UpdateChecker$5$1;->val$mb:J

    iput-wide p5, p0, Lsweet/tts/UpdateChecker$5$1;->val$tmb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 209
    iget-object v0, p0, Lsweet/tts/UpdateChecker$5$1;->this$0:Lsweet/tts/UpdateChecker$5;

    iget-object v0, v0, Lsweet/tts/UpdateChecker$5;->val$pd:Landroid/app/ProgressDialog;

    iget v1, p0, Lsweet/tts/UpdateChecker$5$1;->val$pct:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 210
    iget-object v0, p0, Lsweet/tts/UpdateChecker$5$1;->this$0:Lsweet/tts/UpdateChecker$5;

    iget-object v0, v0, Lsweet/tts/UpdateChecker$5;->val$pd:Landroid/app/ProgressDialog;

    iget-wide v1, p0, Lsweet/tts/UpdateChecker$5$1;->val$mb:J

    iget-wide v3, p0, Lsweet/tts/UpdateChecker$5$1;->val$tmb:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method
