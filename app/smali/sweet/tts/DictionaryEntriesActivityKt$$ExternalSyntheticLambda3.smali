.class public final synthetic Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:Lsweet/tts/Dictionary$Target;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/app/AlertDialog;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lsweet/tts/Dictionary$Target;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$2:Lsweet/tts/Dictionary$Target;

    iput-object p4, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iput-boolean p6, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$5:Z

    iput-object p7, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$6:Landroid/app/AlertDialog;

    iput-object p8, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 0
    iget-object v0, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Integer;

    iget-object v2, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$2:Lsweet/tts/Dictionary$Target;

    iget-object v3, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iget-boolean v5, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$5:Z

    iget-object v6, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$6:Landroid/app/AlertDialog;

    iget-object v7, p0, Lsweet/tts/DictionaryEntriesActivityKt$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function0;

    move-object v8, p1

    move v9, p2

    invoke-static/range {v0 .. v9}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$lambda$13$lambda$12$lambda$11(Ljava/lang/String;Ljava/lang/Integer;Lsweet/tts/Dictionary$Target;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V

    return-void
.end method
