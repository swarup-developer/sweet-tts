.class Lsweet/tts/UpdateChecker$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/UpdateChecker;->runCheck(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$furl:Ljava/lang/String;

.field final synthetic val$latest:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$notes:Ljava/lang/String;

.field final synthetic val$p:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lsweet/tts/UpdateChecker$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$2;->val$p:Landroid/content/SharedPreferences;

    iput p3, p0, Lsweet/tts/UpdateChecker$2;->val$latest:I

    iput-object p4, p0, Lsweet/tts/UpdateChecker$2;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lsweet/tts/UpdateChecker$2;->val$notes:Ljava/lang/String;

    iput-object p6, p0, Lsweet/tts/UpdateChecker$2;->val$furl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 101
    iget-object v0, p0, Lsweet/tts/UpdateChecker$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lsweet/tts/UpdateChecker$2;->val$p:Landroid/content/SharedPreferences;

    iget v2, p0, Lsweet/tts/UpdateChecker$2;->val$latest:I

    iget-object v3, p0, Lsweet/tts/UpdateChecker$2;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lsweet/tts/UpdateChecker$2;->val$notes:Ljava/lang/String;

    iget-object v5, p0, Lsweet/tts/UpdateChecker$2;->val$furl:Ljava/lang/String;

    # invokes: Lsweet/tts/UpdateChecker;->showDialog(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lsweet/tts/UpdateChecker;->access$100(Landroid/app/Activity;Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
