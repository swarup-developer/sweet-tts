.class public final synthetic Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Button;

.field public final synthetic f$1:Lsweet/tts/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Lsweet/tts/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;->f$0:Landroid/widget/Button;

    iput-object p2, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;->f$1:Lsweet/tts/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;->f$0:Landroid/widget/Button;

    iget-object p0, p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;->f$1:Lsweet/tts/MainActivity;

    invoke-static {v0, p0}, Lsweet/tts/MainActivity;->onCreate$lambda$13$lambda$12$lambda$11(Landroid/widget/Button;Lsweet/tts/MainActivity;)V

    return-void
.end method
