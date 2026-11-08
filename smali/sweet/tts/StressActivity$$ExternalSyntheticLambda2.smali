.class public final synthetic Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lsweet/tts/StressActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/StressActivity;IIJLjava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$0:Lsweet/tts/StressActivity;

    iput p2, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$2:I

    iput-wide p4, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$3:J

    iput-object p6, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$5:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$0:Lsweet/tts/StressActivity;

    iget v1, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$2:I

    iget-wide v3, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$3:J

    iget-object v5, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda2;->f$5:Landroid/widget/TextView;

    invoke-static/range {v0 .. v6}, Lsweet/tts/StressActivity;->onCreate$lambda$5(Lsweet/tts/StressActivity;IIJLjava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method
