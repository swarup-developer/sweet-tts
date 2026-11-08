.class public final Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;
.super Ljava/lang/Object;
.source "EloquenceSettingsActivity.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/EloquenceSettingsActivity;->sliderRow(ILsweet/tts/EloquenceVoice$Slider;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "sweet/tts/EloquenceSettingsActivity$sliderRow$3",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "b",
        "Landroid/widget/SeekBar;",
        "value",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $label:Landroid/widget/TextView;

.field final synthetic $max:I

.field final synthetic $minus:Landroid/widget/Button;

.field final synthetic $plus:Landroid/widget/Button;

.field final synthetic $preset:I

.field final synthetic $s:Lsweet/tts/EloquenceVoice$Slider;


# direct methods
.method constructor <init>(ILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V
    .locals 0

    iput p1, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$preset:I

    iput-object p2, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$s:Lsweet/tts/EloquenceVoice$Slider;

    iput-object p3, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$label:Landroid/widget/TextView;

    iput-object p4, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$minus:Landroid/widget/Button;

    iput-object p5, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$plus:Landroid/widget/Button;

    iput p6, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$max:I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 123
    :cond_0
    sget-object p1, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    iget p3, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$preset:I

    iget-object v0, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$s:Lsweet/tts/EloquenceVoice$Slider;

    invoke-virtual {v0}, Lsweet/tts/EloquenceVoice$Slider;->getParam()I

    move-result v0

    invoke-virtual {p1, p3, v0, p2}, Lsweet/tts/EloquenceVoice;->setStep(III)V

    .line 124
    iget-object v1, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$label:Landroid/widget/TextView;

    iget-object v2, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$s:Lsweet/tts/EloquenceVoice$Slider;

    iget-object v3, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$minus:Landroid/widget/Button;

    iget-object v4, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$plus:Landroid/widget/Button;

    iget v5, p0, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;->$max:I

    move v6, p2

    invoke-static/range {v1 .. v6}, Lsweet/tts/EloquenceSettingsActivity;->access$sliderRow$show(Landroid/widget/TextView;Lsweet/tts/EloquenceVoice$Slider;Landroid/widget/Button;Landroid/widget/Button;II)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
