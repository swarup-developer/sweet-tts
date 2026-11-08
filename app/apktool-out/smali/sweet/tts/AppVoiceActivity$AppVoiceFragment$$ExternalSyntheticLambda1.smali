.class public final synthetic Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/AppVoiceActivity$AppVoiceFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/AppVoiceActivity$AppVoiceFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1;->f$0:Lsweet/tts/AppVoiceActivity$AppVoiceFragment;

    iput-object p2, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1;->f$0:Lsweet/tts/AppVoiceActivity$AppVoiceFragment;

    iget-object p0, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->onCreatePreferences$lambda$5$lambda$4(Lsweet/tts/AppVoiceActivity$AppVoiceFragment;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
