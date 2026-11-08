.class public final Lsweet/tts/VoiceSlidersActivity$buildSlider$3;
.super Ljava/lang/Object;
.source "VoiceSlidersActivity.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/VoiceSlidersActivity;->buildSlider(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;
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
        "sweet/tts/VoiceSlidersActivity$buildSlider$3",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "bar",
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
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $labelView:Landroid/widget/TextView;

.field final synthetic $minusButton:Landroid/widget/Button;

.field final synthetic $onChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $plusButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$labelView:Landroid/widget/TextView;

    iput-object p2, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$label:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$minusButton:Landroid/widget/Button;

    iput-object p4, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$plusButton:Landroid/widget/Button;

    iput-object p5, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$onChanged:Lkotlin/jvm/functions/Function1;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object p1, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$labelView:Landroid/widget/TextView;

    iget-object p3, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$label:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$minusButton:Landroid/widget/Button;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object p1, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$plusButton:Landroid/widget/Button;

    const/16 v1, 0x64

    if-ge p2, v1, :cond_2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object p0, p0, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;->$onChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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
