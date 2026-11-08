.class public final synthetic Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/VoicesActivity$VoicesFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/VoicesActivity$VoicesFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6;->f$0:Lsweet/tts/VoicesActivity$VoicesFragment;

    iput-object p2, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6;->f$0:Lsweet/tts/VoicesActivity$VoicesFragment;

    iget-object p0, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6;->f$1:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lsweet/tts/VoicesActivity$VoicesFragment;->onCreatePreferences$lambda$11$lambda$10(Lsweet/tts/VoicesActivity$VoicesFragment;Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
