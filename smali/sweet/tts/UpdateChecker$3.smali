.class Lsweet/tts/UpdateChecker$3;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/UpdateChecker;->showDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$apiUrl:Ljava/lang/String;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$dlg:Landroid/app/AlertDialog;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$3;->val$apiUrl:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/UpdateChecker$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lsweet/tts/UpdateChecker$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 158
    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 159
    const-string p1, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1f

    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$apiUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1f

    .line 160
    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lsweet/tts/UpdateChecker$3;->val$apiUrl:Ljava/lang/String;

    iget-object v1, p0, Lsweet/tts/UpdateChecker$3;->val$url:Ljava/lang/String;

    # invokes: Lsweet/tts/UpdateChecker;->startDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lsweet/tts/UpdateChecker;->access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 163
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lsweet/tts/UpdateChecker$3;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_32

    .line 165
    goto :goto_33

    .line 164
    :catchall_32
    move-exception p1

    .line 167
    :goto_33
    return-void
.end method
