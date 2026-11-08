.class public final synthetic Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/SeekBar;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/widget/Button;

.field public final synthetic f$4:Landroid/widget/Button;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$0:Landroid/widget/SeekBar;

    iput-object p2, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$3:Landroid/widget/Button;

    iput-object p5, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$4:Landroid/widget/Button;

    iput-object p6, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$5:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$0:Landroid/widget/SeekBar;

    iget-object v1, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$3:Landroid/widget/Button;

    iget-object v4, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$4:Landroid/widget/Button;

    iget-object v5, p0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;->f$5:Lkotlin/jvm/functions/Function1;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lsweet/tts/VoiceSlidersActivity;->buildSlider$lambda$21(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method
