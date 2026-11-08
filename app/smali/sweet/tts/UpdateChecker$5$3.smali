.class Lsweet/tts/UpdateChecker$5$3;
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


# direct methods
.method constructor <init>(Lsweet/tts/UpdateChecker$5;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lsweet/tts/UpdateChecker$5$3;->this$0:Lsweet/tts/UpdateChecker$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 247
    iget-object v0, p0, Lsweet/tts/UpdateChecker$5$3;->this$0:Lsweet/tts/UpdateChecker$5;

    iget-object v0, v0, Lsweet/tts/UpdateChecker$5;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 249
    :try_start_7
    iget-object v0, p0, Lsweet/tts/UpdateChecker$5$3;->this$0:Lsweet/tts/UpdateChecker$5;

    iget-object v0, v0, Lsweet/tts/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lsweet/tts/UpdateChecker$5$3;->this$0:Lsweet/tts/UpdateChecker$5;

    iget-object v3, v3, Lsweet/tts/UpdateChecker$5;->val$pageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1e

    .line 251
    goto :goto_1f

    .line 250
    :catchall_1e
    move-exception v0

    .line 252
    :goto_1f
    return-void
.end method
