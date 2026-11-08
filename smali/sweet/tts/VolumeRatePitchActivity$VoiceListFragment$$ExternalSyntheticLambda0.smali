.class public final synthetic Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment;

.field public final synthetic f$1:Lcom/nuance/android/vocalizer/VocalizerVoice;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment;Lcom/nuance/android/vocalizer/VocalizerVoice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment;

    iput-object p2, p0, Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment$$ExternalSyntheticLambda0;->f$1:Lcom/nuance/android/vocalizer/VocalizerVoice;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment;

    iget-object p0, p0, Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment$$ExternalSyntheticLambda0;->f$1:Lcom/nuance/android/vocalizer/VocalizerVoice;

    invoke-static {v0, p0, p1}, Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment;->buildScreen$lambda$11$lambda$10(Lsweet/tts/VolumeRatePitchActivity$VoiceListFragment;Lcom/nuance/android/vocalizer/VocalizerVoice;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
