.class public final synthetic Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/SeekBar;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lsweet/tts/EloquenceVoice$Slider;

.field public final synthetic f$4:Landroid/widget/TextView;

.field public final synthetic f$5:Landroid/widget/Button;

.field public final synthetic f$6:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SeekBar;IILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SeekBar;

    iput p2, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$3:Lsweet/tts/EloquenceVoice$Slider;

    iput-object p5, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$4:Landroid/widget/TextView;

    iput-object p6, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$5:Landroid/widget/Button;

    iput-object p7, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$6:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SeekBar;

    iget v1, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$3:Lsweet/tts/EloquenceVoice$Slider;

    iget-object v4, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$4:Landroid/widget/TextView;

    iget-object v5, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$5:Landroid/widget/Button;

    iget-object v6, p0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;->f$6:Landroid/widget/Button;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lsweet/tts/EloquenceSettingsActivity;->sliderRow$lambda$22(Landroid/widget/SeekBar;IILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
