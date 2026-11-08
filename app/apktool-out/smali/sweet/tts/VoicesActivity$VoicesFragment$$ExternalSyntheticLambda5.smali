.class public final synthetic Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lsweet/tts/VoicesActivity$VoicesFragment;->onCreatePreferences$lambda$9$lambda$8(Landroid/content/Context;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
