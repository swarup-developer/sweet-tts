.class public final Lsweet/tts/AppVoiceActivity$AppVoiceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "AppVoiceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/AppVoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppVoiceFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppVoiceActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppVoiceActivity.kt\nsweet/tts/AppVoiceActivity$AppVoiceFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,102:1\n774#2:103\n865#2,2:104\n1563#2:106\n1634#2,3:107\n37#3:110\n36#3,3:111\n37#3:114\n36#3,3:115\n*S KotlinDebug\n*F\n+ 1 AppVoiceActivity.kt\nsweet/tts/AppVoiceActivity$AppVoiceFragment\n*L\n53#1:103\n53#1:104,2\n66#1:106\n66#1:107,3\n73#1:110\n73#1:111,3\n74#1:114\n74#1:115,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lsweet/tts/AppVoiceActivity$AppVoiceFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "packageName",
        "",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "Companion",
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


# static fields
.field public static final Companion:Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;


# instance fields
.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->Companion:Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static final onCreatePreferences$lambda$5$lambda$3(Ljava/util/List;Landroidx/preference/ListPreference;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "pref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p1, :cond_0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 79
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Same as global default"

    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final onCreatePreferences$lambda$5$lambda$4(Lsweet/tts/AppVoiceActivity$AppVoiceFragment;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    iget-object p0, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->packageName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "packageName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p0, p1, p3}, Lsweet/tts/Prefs;->setVoiceForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 11

    .line 49
    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "package_name"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->packageName:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "createPreferenceScreen(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v0}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    sget-object v4, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v4, v3}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v4, v3}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 104
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 58
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    const-string p1, "Nothing to override"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const-string p1, "Every enabled language only has one voice available, so this app already uses the same voices as everywhere else."

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 58
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_3

    .line 64
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    sget-object v4, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object v5, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v5, v3}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/Iterable;

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 107
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 108
    check-cast v6, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 66
    iget-object v6, v6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 108
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 67
    sget-object v4, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    iget-object v6, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->packageName:Ljava/lang/String;

    const-string v7, "packageName"

    const/4 v8, 0x0

    if-nez v6, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_4
    invoke-virtual {v4, v6, v3}, Lsweet/tts/Prefs;->voiceForApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v6, Landroidx/preference/ListPreference;

    invoke-direct {v6, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v9, p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->packageName:Ljava/lang/String;

    if-nez v9, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v8

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "appvoice_"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Select voice for "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v6, v2}, Landroidx/preference/ListPreference;->setPersistent(Z)V

    .line 73
    move-object v1, v5

    check-cast v1, Ljava/util/Collection;

    .line 113
    new-array v7, v2, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v6, v7}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 117
    new-array v7, v2, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v6, v8}, Landroidx/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v1, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v5}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 81
    new-instance v1, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/AppVoiceActivity$AppVoiceFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    invoke-virtual {v6, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 68
    check-cast v6, Landroidx/preference/Preference;

    invoke-virtual {p2, v6}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_1

    .line 90
    :cond_6
    :goto_3
    invoke-virtual {p0, p2}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
