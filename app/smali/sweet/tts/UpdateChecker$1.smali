.class Lsweet/tts/UpdateChecker$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/UpdateChecker;->check(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$p:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lsweet/tts/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lsweet/tts/UpdateChecker$1;->val$p:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 58
    iget-object v0, p0, Lsweet/tts/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lsweet/tts/UpdateChecker$1;->val$p:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lsweet/tts/UpdateChecker;->-$$Nest$smrunCheck(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    .line 59
    return-void
.end method
