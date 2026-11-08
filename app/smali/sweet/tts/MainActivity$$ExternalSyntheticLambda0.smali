.class public final synthetic Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lsweet/tts/MainActivity;

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lsweet/tts/MainActivity;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;->f$1:Lsweet/tts/MainActivity;

    iput-object p3, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;->f$1:Lsweet/tts/MainActivity;

    iget-object p0, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    invoke-static {v0, v1, p0}, Lsweet/tts/MainActivity;->onCreate$lambda$13$lambda$12(Landroid/content/Context;Lsweet/tts/MainActivity;Landroid/widget/Button;)V

    return-void
.end method
