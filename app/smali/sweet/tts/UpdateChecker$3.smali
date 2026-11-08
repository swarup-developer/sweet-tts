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
.method constructor <init>(Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$dlg:Landroid/app/AlertDialog;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lsweet/tts/UpdateChecker$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 149
    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 150
    iget-object p1, p0, Lsweet/tts/UpdateChecker$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lsweet/tts/UpdateChecker$3;->val$url:Ljava/lang/String;

    invoke-static {p1, v0}, Lsweet/tts/UpdateChecker;->-$$Nest$smstartDownload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 151
    return-void
.end method
