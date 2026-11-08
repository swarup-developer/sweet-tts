.class Lsweet/tts/UpdateChecker$5$2;
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

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lsweet/tts/UpdateChecker$5;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lsweet/tts/UpdateChecker$5$2;->this$0:Lsweet/tts/UpdateChecker$5;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$5$2;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 221
    :try_start_0
    iget-object v0, p0, Lsweet/tts/UpdateChecker$5$2;->this$0:Lsweet/tts/UpdateChecker$5;

    iget-object v0, v0, Lsweet/tts/UpdateChecker$5;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    .line 222
    :goto_9
    iget-object v0, p0, Lsweet/tts/UpdateChecker$5$2;->this$0:Lsweet/tts/UpdateChecker$5;

    iget-object v0, v0, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lsweet/tts/UpdateChecker$5$2;->val$f:Ljava/io/File;

    invoke-static {v0, v1}, Lsweet/tts/UpdateChecker;->-$$Nest$sminstallApk(Landroid/app/Activity;Ljava/io/File;)V

    .line 223
    return-void
.end method
