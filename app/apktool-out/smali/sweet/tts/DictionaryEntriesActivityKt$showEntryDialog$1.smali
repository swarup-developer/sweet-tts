.class final synthetic Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DictionaryEntriesActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$default(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lsweet/tts/Dictionary$Target;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lsweet/tts/Dictionary;

    const-string v5, "enabledTargets()Ljava/util/List;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "enabledTargets"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$1;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Target;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lsweet/tts/DictionaryEntriesActivityKt$showEntryDialog$1;->receiver:Ljava/lang/Object;

    check-cast p0, Lsweet/tts/Dictionary;

    invoke-virtual {p0}, Lsweet/tts/Dictionary;->enabledTargets()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
