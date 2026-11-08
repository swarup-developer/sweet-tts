.class Lsweet/tts/UpdateChecker$3;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/UpdateChecker;->showDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/UpdateChecker$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 144
    :try_start_0
    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lsweet/tts/UpdateChecker$3;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 146
    goto :goto_14

    .line 145
    :catchall_13
    move-exception p1

    .line 147
    :goto_14
    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    return-void
.end method
