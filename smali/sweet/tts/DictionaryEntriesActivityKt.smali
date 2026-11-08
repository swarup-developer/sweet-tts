.class public final Lsweet/tts/DictionaryEntriesActivityKt;
.super Ljava/lang/Object;
.source "DictionaryEntriesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDictionaryEntriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DictionaryEntriesActivity.kt\nsweet/tts/DictionaryEntriesActivityKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n2746#2,3:257\n360#2,7:260\n1563#2:268\n1634#2,3:269\n1#3:267\n*S KotlinDebug\n*F\n+ 1 DictionaryEntriesActivity.kt\nsweet/tts/DictionaryEntriesActivityKt\n*L\n154#1:257,3\n158#1:260,7\n170#1:268\n170#1:269,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ae\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\tH\u0000\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "showEntryDialog",
        "",
        "activity",
        "Landroid/app/Activity;",
        "existingTargetKey",
        "",
        "index",
        "",
        "enabledTargets",
        "Lkotlin/Function0;",
        "",
        "Lsweet/tts/Dictionary$Target;",
        "targetFor",
        "Lkotlin/Function1;",
        "onSaved",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$showEntryDialog$updateCaseSensitiveVisibility(Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$updateCaseSensitiveVisibility(Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    return-void
.end method

.method public static final showEntryDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Target;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lsweet/tts/Dictionary$Target;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    move-object/from16 v10, p5

    const-string v1, "activity"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enabledTargets"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetFor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onSaved"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 148
    sget-object v3, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v3, v8}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsweet/tts/Dictionary$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 153
    :goto_0
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v8, :cond_4

    .line 154
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .line 257
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsweet/tts/Dictionary$Target;

    .line 154
    invoke-virtual {v5}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsweet/tts/Dictionary$Target;

    if-eqz v0, :cond_4

    .line 156
    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_4
    :goto_2
    move-object v4, v2

    .line 261
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 262
    check-cast v6, Lsweet/tts/Dictionary$Target;

    .line 158
    invoke-virtual {v6}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, -0x1

    :goto_4
    if-ltz v5, :cond_7

    goto :goto_5

    :cond_7
    move v5, v2

    .line 160
    :goto_5
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v6, v7

    check-cast v6, Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 161
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x18

    const/16 v13, 0x30

    .line 162
    invoke-virtual {v0, v13, v12, v13, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 168
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v13, "Applies to:"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v13, Landroid/widget/Spinner;

    invoke-direct {v13, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 170
    move-object v14, v4

    check-cast v14, Ljava/lang/Iterable;

    .line 268
    new-instance v15, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v14, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v15, Ljava/util/Collection;

    .line 269
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 270
    check-cast v14, Lsweet/tts/Dictionary$Target;

    .line 170
    invoke-virtual {v14}, Lsweet/tts/Dictionary$Target;->getLabel()Ljava/lang/String;

    move-result-object v14

    .line 270
    invoke-interface {v15, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 271
    :cond_8
    check-cast v15, Ljava/util/List;

    .line 170
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v14, 0x1090009

    invoke-direct {v2, v6, v14, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    check-cast v2, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v13, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    invoke-virtual {v13, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 173
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 174
    const-string v5, "Case Sensitive (match upper/lower case exactly)"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_9

    .line 175
    invoke-virtual {v3}, Lsweet/tts/Dictionary$Entry;->getCaseSensitive()Z

    move-result v5

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 178
    const-string v14, "Find (exact text)"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 180
    const-string v14, ""

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_b

    :cond_a
    move-object v15, v14

    :cond_b
    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object v15, v3

    .line 182
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 183
    const-string v16, "Replace with (leave blank to silence it)"

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setInputType(I)V

    if-eqz v15, :cond_d

    .line 185
    invoke-virtual {v15}, Lsweet/tts/Dictionary$Entry;->getReplace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    move-object v14, v1

    :cond_d
    :goto_8
    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v1, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$3;

    invoke-direct {v1, v4, v13, v2}, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$3;-><init>(Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v13, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 197
    check-cast v12, Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    move-object v1, v13

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    move-object v1, v5

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    move-object v1, v3

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-static {v4, v13, v2}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$updateCaseSensitiveVisibility(Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    .line 204
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v15, :cond_e

    .line 205
    const-string v6, "Add Entry"

    goto :goto_9

    :cond_e
    const-string v6, "Edit Entry"

    :goto_9
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 206
    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 207
    const-string v1, "Save"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    const-string v1, "Cancel"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v15, :cond_f

    if-eqz v8, :cond_f

    if-eqz v9, :cond_f

    .line 210
    const-string v1, "Delete"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda0;

    invoke-direct {v6, v8, v9, v10}, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    :cond_f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 217
    new-instance v0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;

    move-object v6, v2

    move-object v2, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v10}, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 254
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic showEntryDialog$default(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 143
    new-instance p3, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$1;

    sget-object p7, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-direct {p3, p7}, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    .line 144
    new-instance p3, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$2;

    sget-object p4, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-direct {p3, p4}, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$2;-><init>(Ljava/lang/Object;)V

    move-object p4, p3

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 139
    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final showEntryDialog$lambda$10(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 211
    sget-object p3, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p0, p1}, Lsweet/tts/Dictionary;->removeEntry(Ljava/lang/String;I)V

    .line 212
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method static final showEntryDialog$lambda$13(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 12

    const/4 v0, -0x1

    .line 218
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda2;

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final showEntryDialog$lambda$13$lambda$12(Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 220
    move-object p10, p0

    check-cast p10, Ljava/lang/CharSequence;

    invoke-interface {p10}, Ljava/lang/CharSequence;->length()I

    move-result p10

    if-nez p10, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 224
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p4

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsweet/tts/Dictionary$Target;

    .line 226
    invoke-virtual {p3}, Lsweet/tts/Dictionary$Target;->getAllowsCaseSensitive()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 243
    :goto_0
    move-object p5, p2

    check-cast p5, Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-nez p5, :cond_2

    .line 244
    new-instance p5, Landroid/app/AlertDialog$Builder;

    check-cast p6, Landroid/content/Context;

    invoke-direct {p5, p6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    const-string p6, "No replacement word entered. This entry will not be spoken. Do you want to continue?"

    check-cast p6, Ljava/lang/CharSequence;

    invoke-virtual {p5, p6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p10

    .line 246
    const-string p5, "Continue"

    move-object v0, p5

    check-cast v0, Ljava/lang/CharSequence;

    move p6, p4

    move-object p4, p3

    move-object p3, p8

    move-object p8, p1

    new-instance p1, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;

    move p5, p6

    move-object p6, p2

    move-object p2, p7

    move p7, p5

    move-object p5, p0

    invoke-direct/range {p1 .. p9}, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lsweet/tts/Dictionary$Target;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p10, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 247
    const-string p1, "Go Back"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2
    move-object p5, p7

    move-object p7, p1

    move-object p1, p5

    move-object p5, p2

    move p6, p4

    move-object p2, p8

    move-object p8, p9

    move-object p4, p0

    .line 250
    invoke-static/range {p1 .. p8}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$lambda$13$lambda$12$commit(Ljava/lang/String;Ljava/lang/Integer;Lsweet/tts/Dictionary$Target;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final showEntryDialog$lambda$13$lambda$12$commit(Ljava/lang/String;Ljava/lang/Integer;Lsweet/tts/Dictionary$Target;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lsweet/tts/Dictionary$Target;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/app/AlertDialog;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p2}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-object p0, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    move-object v0, p1

    invoke-virtual {p2}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual/range {p0 .. p5}, Lsweet/tts/Dictionary;->updateEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 236
    sget-object p1, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lsweet/tts/Dictionary;->removeEntry(Ljava/lang/String;I)V

    .line 237
    sget-object p0, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {p2}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lsweet/tts/Dictionary;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 230
    :cond_2
    :goto_0
    sget-object p0, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {p2}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lsweet/tts/Dictionary;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    :goto_1
    invoke-virtual {p6}, Landroid/app/AlertDialog;->dismiss()V

    .line 240
    invoke-interface {p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method static final showEntryDialog$lambda$13$lambda$12$lambda$11(Ljava/lang/String;Ljava/lang/Integer;Lsweet/tts/Dictionary$Target;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 246
    invoke-static/range {p0 .. p7}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$lambda$13$lambda$12$commit(Ljava/lang/String;Ljava/lang/Integer;Lsweet/tts/Dictionary$Target;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final showEntryDialog$updateCaseSensitiveVisibility(Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Target;",
            ">;",
            "Landroid/widget/Spinner;",
            "Landroid/widget/CheckBox;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsweet/tts/Dictionary$Target;

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Lsweet/tts/Dictionary$Target;->getAllowsCaseSensitive()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method
