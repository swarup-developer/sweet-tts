.class public final synthetic Lsweet/tts/AddAppActivity$AddAppFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lsweet/tts/AddAppActivity$AddAppFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lsweet/tts/AddAppActivity$AddAppFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/AddAppActivity$AddAppFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/AddAppActivity$AddAppFragment$$ExternalSyntheticLambda0;->f$1:Lsweet/tts/AddAppActivity$AddAppFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/AddAppActivity$AddAppFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lsweet/tts/AddAppActivity$AddAppFragment$$ExternalSyntheticLambda0;->f$1:Lsweet/tts/AddAppActivity$AddAppFragment;

    invoke-static {v0, p0, p1}, Lsweet/tts/AddAppActivity$AddAppFragment;->onCreatePreferences$lambda$6$lambda$5(Ljava/lang/String;Lsweet/tts/AddAppActivity$AddAppFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
