.class public final Lsweet/tts/PerApplicationActivity$PerApplicationFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PerApplicationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/PerApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerApplicationFragment"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPerApplicationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PerApplicationActivity.kt\nsweet/tts/PerApplicationActivity$PerApplicationFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1617#2,9:111\n1869#2:120\n1870#2:122\n1626#2:123\n1056#2:124\n1#3:121\n*S KotlinDebug\n*F\n+ 1 PerApplicationActivity.kt\nsweet/tts/PerApplicationActivity$PerApplicationFragment\n*L\n64#1:111,9\n64#1:120\n64#1:122\n64#1:123\n71#1:124\n64#1:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lsweet/tts/PerApplicationActivity$PerApplicationFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static final onCreatePreferences$lambda$1$lambda$0(Landroid/content/Context;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p2, Lsweet/tts/ForegroundApp;->INSTANCE:Lsweet/tts/ForegroundApp;

    invoke-virtual {p2, p0}, Lsweet/tts/ForegroundApp;->hasPermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 54
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lsweet/tts/AddAppActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Lsweet/tts/ForegroundApp;->INSTANCE:Lsweet/tts/ForegroundApp;

    invoke-virtual {p1, p0}, Lsweet/tts/ForegroundApp;->requestPermission(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Lsweet/tts/LongPressPreference;)Lkotlin/Unit;
    .locals 2

    const-string v0, "pref"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Remove "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " from Per Application?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 78
    const-string p1, "OK"

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3, p4}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Lsweet/tts/LongPressPreference;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 83
    const-string p1, "Cancel"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreatePreferences$lambda$5$lambda$4(Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Lsweet/tts/LongPressPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 79
    sget-object p3, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p3, p0}, Lsweet/tts/Prefs;->removeApp(Ljava/lang/String;)V

    .line 80
    sget-object p3, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p3, p0}, Lsweet/tts/Prefs;->clearAppVoices(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    check-cast p2, Landroidx/preference/Preference;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method static final onCreatePreferences$lambda$7$lambda$6(Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Landroid/content/Context;Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lsweet/tts/AppVoiceActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string p1, "package_name"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .line 43
    invoke-virtual {p0}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "createPreferenceScreen(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    sget-object v1, Lsweet/tts/ForegroundApp;->INSTANCE:Lsweet/tts/ForegroundApp;

    invoke-virtual {v1, p1}, Lsweet/tts/ForegroundApp;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    .line 48
    new-instance v2, Landroidx/preference/Preference;

    invoke-direct {v2, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v3, "Add Application"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v4, "\u091c\u093f\u0938 \u0910\u092a \u0915\u0947 \u0932\u093f\u090f \u0905\u0932\u0917 \u0906\u0935\u093e\u091c\u093c \u091a\u093e\u0939\u093f\u090f, \u0909\u0938\u0947 \u091c\u094b\u0921\u093c\u093f\u090f\u0964 \u091c\u094b\u0921\u093c\u0940 \u0939\u0941\u0908 \u0910\u092a \u0915\u094b \u0939\u091f\u093e\u0928\u0947 \u0915\u0947 \u0932\u093f\u090f \u0909\u0938\u0915\u0947 \u0928\u093e\u092e \u0915\u094b \u0926\u0947\u0930 \u0924\u0915 \u0926\u092c\u093e\u0907\u090f (long press)\u0964"

    const/4 v5, 0x2

    invoke-static {v1, v4, v3, v5, v3}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 51
    :cond_0
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v4, "\u092a\u0939\u0932\u0940 \u092c\u093e\u0930 Usage Access \u0915\u0940 \u0905\u0928\u0941\u092e\u0924\u093f \u0926\u0947\u0928\u0940 \u0939\u094b\u0917\u0940, \u0924\u093e\u0915\u093f \u0910\u092a \u091c\u093e\u0928 \u0938\u0915\u0947 \u0915\u093f \u0938\u094d\u0915\u094d\u0930\u0940\u0928 \u092a\u0930 \u0915\u094c\u0928 \u0938\u0940 \u0910\u092a \u0916\u0941\u0932\u0940 \u0939\u0948\u0964 \u092f\u0939 \u0905\u0928\u0941\u092e\u0924\u093f App info \u0915\u0940 Permissions \u0938\u0942\u091a\u0940 \u092e\u0947\u0902 \u0928\u0939\u0940\u0902 \u0906\u0924\u0940\u0964 \u092f\u0939 \u092b\u094b\u0928 \u0915\u0940 Settings \u092e\u0947\u0902 Special app access \u0915\u0947 \u0905\u0902\u0926\u0930 Usage access \u092e\u0947\u0902 \u092e\u093f\u0932\u0924\u0940 \u0939\u0948\u0964 \u0905\u0917\u0930 \u0935\u0939\u093e\u0901 \u0938\u094d\u0935\u093f\u091a \u0911\u0928 \u0928 \u0939\u094b \u0914\u0930 \u092b\u094b\u0928 restricted setting \u0915\u093e \u0938\u0902\u0926\u0947\u0936 \u0926\u093f\u0916\u093e\u090f, \u0924\u094b Settings \u092e\u0947\u0902 Apps \u092e\u0947\u0902 All In One TTS \u0916\u094b\u0932\u0915\u0930 App info \u092e\u0947\u0902 \u091c\u093e\u0907\u090f\u0964 \u090a\u092a\u0930 \u0926\u093e\u090f\u0901 \u0915\u094b\u0928\u0947 \u092e\u0947\u0902 More options (\u0924\u0940\u0928 \u092c\u093f\u0902\u0926\u0941) \u0926\u092c\u093e\u0915\u0930 Allow restricted settings \u091a\u0941\u0928\u093f\u090f, \u092b\u093f\u0930 \u0905\u0928\u0941\u092e\u0924\u093f \u0926\u094b\u092c\u093e\u0930\u093e \u0926\u0940\u091c\u093f\u090f\u0964"

    const-string v5, "First tap: grant Usage Access permission (needed to tell which app is on screen)"

    invoke-virtual {v1, v4, v5}, Lsweet/tts/Desc;->pick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 50
    :goto_0
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v1, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;)V

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 64
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1}, Lsweet/tts/Prefs;->addedApps()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 66
    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_1

    .line 119
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 111
    check-cast v2, Ljava/lang/Iterable;

    .line 124
    new-instance v0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$onCreatePreferences$$inlined$sortedBy$1;

    invoke-direct {v0}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$onCreatePreferences$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    new-instance v3, Lsweet/tts/LongPressPreference;

    .line 85
    new-instance v4, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1, v1, v2, p0}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;)V

    .line 74
    invoke-direct {v3, p1, v4}, Lsweet/tts/LongPressPreference;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 86
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Lsweet/tts/LongPressPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v1, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, v2}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;-><init>(Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lsweet/tts/LongPressPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    check-cast v3, Landroidx/preference/Preference;

    .line 74
    invoke-virtual {p2, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 97
    :cond_3
    invoke-virtual {p0, p2}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
