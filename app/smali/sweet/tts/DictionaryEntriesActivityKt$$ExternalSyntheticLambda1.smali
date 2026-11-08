.class public final synthetic Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Landroid/widget/Spinner;

.field public final synthetic f$5:Landroid/widget/CheckBox;

.field public final synthetic f$6:Landroid/app/Activity;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/Integer;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$4:Landroid/widget/Spinner;

    iput-object p6, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$5:Landroid/widget/CheckBox;

    iput-object p7, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$6:Landroid/app/Activity;

    iput-object p8, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$8:Ljava/lang/Integer;

    iput-object p10, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$9:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 11

    .line 0
    iget-object v0, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget-object v4, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$4:Landroid/widget/Spinner;

    iget-object v5, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$5:Landroid/widget/CheckBox;

    iget-object v6, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$6:Landroid/app/Activity;

    iget-object v7, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    iget-object v8, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$8:Ljava/lang/Integer;

    iget-object v9, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda1;->f$9:Lkotlin/jvm/functions/Function0;

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$lambda$13(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method
