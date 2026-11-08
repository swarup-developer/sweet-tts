.class public final Lsweet/tts/DictionaryEntriesActivity$EditListFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DictionaryEntriesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/DictionaryEntriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditListFragment"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDictionaryEntriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DictionaryEntriesActivity.kt\nsweet/tts/DictionaryEntriesActivity$EditListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,256:1\n1878#2,3:257\n*S KotlinDebug\n*F\n+ 1 DictionaryEntriesActivity.kt\nsweet/tts/DictionaryEntriesActivity$EditListFragment\n*L\n105#1:257,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0006\u0010\n\u001a\u00020\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "Lsweet/tts/DictionaryEntriesActivity$EditListFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
        "rebuild",
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

    .line 94
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static final rebuild$lambda$3$lambda$2$lambda$1(Lsweet/tts/DictionaryEntriesActivity$EditListFragment;Lsweet/tts/Dictionary$Target;ILandroidx/preference/Preference;)Z
    .locals 9

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v0, "requireActivity(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Lsweet/tts/DictionaryEntriesActivity$EditListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/DictionaryEntriesActivity$EditListFragment;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$default(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final rebuild$lambda$3$lambda$2$lambda$1$lambda$0(Lsweet/tts/DictionaryEntriesActivity$EditListFragment;)Lkotlin/Unit;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;->rebuild()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;->rebuild()V

    return-void
.end method

.method public final rebuild()V
    .locals 23

    move-object/from16 v0, p0

    .line 100
    invoke-virtual {v0}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "createPreferenceScreen(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v3, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v3}, Lsweet/tts/Dictionary;->allTargets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsweet/tts/Dictionary$Target;

    .line 105
    sget-object v7, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v6}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 258
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-gez v8, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v9, Lsweet/tts/Dictionary$Entry;

    add-int/lit8 v5, v5, 0x1

    .line 107
    invoke-virtual {v9}, Lsweet/tts/Dictionary$Entry;->getReplace()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "(nothing spoken)"

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lsweet/tts/Dictionary$Entry;->getReplace()Ljava/lang/String;

    move-result-object v11

    :goto_1
    const/4 v12, 0x1

    .line 108
    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v6}, Lsweet/tts/Dictionary$Target;->getLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 109
    invoke-virtual {v6}, Lsweet/tts/Dictionary$Target;->getAllowsCaseSensitive()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 110
    invoke-virtual {v9}, Lsweet/tts/Dictionary$Entry;->getCaseSensitive()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "Yes"

    goto :goto_2

    :cond_3
    const-string v13, "No"

    :goto_2
    const-string v14, "Case Sensitive: "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_4
    new-instance v13, Landroidx/preference/Preference;

    invoke-direct {v13, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v9}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " \u2192 "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v13, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    move-object v14, v12

    check-cast v14, Ljava/lang/Iterable;

    const-string v9, " \u2022 "

    move-object v15, v9

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v21, 0x3e

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v13, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v9, Lsweet/tts/DictionaryEntriesActivity$EditListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0, v6, v8}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/DictionaryEntriesActivity$EditListFragment;Lsweet/tts/Dictionary$Target;I)V

    invoke-virtual {v13, v9}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    invoke-virtual {v2, v13}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    move v8, v10

    goto/16 :goto_0

    :cond_5
    if-nez v5, :cond_6

    .line 123
    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 124
    const-string v1, "No entries yet"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 123
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 129
    :cond_6
    invoke-virtual {v0, v2}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
