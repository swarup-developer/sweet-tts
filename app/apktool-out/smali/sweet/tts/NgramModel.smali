.class public final Lsweet/tts/NgramModel;
.super Ljava/lang/Object;
.source "NgramModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/NgramModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNgramModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NgramModel.kt\nsweet/tts/NgramModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n1193#2,2:105\n1267#2,4:107\n*S KotlinDebug\n*F\n+ 1 NgramModel.kt\nsweet/tts/NgramModel\n*L\n31#1:105,2\n31#1:107,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0005\u0018\u0000 %2\u00020\u0001:\u0001%Ba\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\"\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c`\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003J\u001e\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u001f\u001a\u00020\u00032\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005J\u001e\u0010#\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020\u00032\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000c`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lsweet/tts/NgramModel;",
        "",
        "group",
        "",
        "langs",
        "",
        "orders",
        "",
        "scale",
        "",
        "floor",
        "",
        "",
        "grams",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;[II[[SLjava/util/HashMap;)V",
        "getGroup",
        "()Ljava/lang/String;",
        "getLangs",
        "()Ljava/util/List;",
        "[[S",
        "gramCount",
        "getGramCount",
        "()I",
        "index",
        "",
        "cleanRegex",
        "Lkotlin/text/Regex;",
        "normalize",
        "text",
        "scores",
        "",
        "candidates",
        "scoresNormalized",
        "norm",
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
.field public static final Companion:Lsweet/tts/NgramModel$Companion;

.field private static final MARKS:Lkotlin/text/Regex;

.field private static final SCRIPT_KEEP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITESPACE:Lkotlin/text/Regex;


# instance fields
.field private final cleanRegex:Lkotlin/text/Regex;

.field private final floor:[[S

.field private final grams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[S>;"
        }
    .end annotation
.end field

.field private final group:Ljava/lang/String;

.field private final index:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final langs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final orders:[I

.field private final scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsweet/tts/NgramModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/NgramModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/NgramModel;->Companion:Lsweet/tts/NgramModel$Companion;

    const/4 v0, 0x3

    .line 76
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "dev"

    const-string v2, "\\u0900-\\u097F"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    const-string v1, "perso"

    const-string v2, "\\u0600-\\u06FF\\u0750-\\u077F\\uFB50-\\uFDFF\\uFE70-\\uFEFF"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 78
    const-string v1, "beng"

    const-string v2, "\\u0980-\\u09FF"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsweet/tts/NgramModel;->SCRIPT_KEEP:Ljava/util/Map;

    .line 80
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\u0964\u0965\u06d4]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/NgramModel;->MARKS:Lkotlin/text/Regex;

    .line 81
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/NgramModel;->WHITESPACE:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;[II[[SLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[II[[S",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[S>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lsweet/tts/NgramModel;->group:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lsweet/tts/NgramModel;->langs:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lsweet/tts/NgramModel;->orders:[I

    .line 25
    iput p4, p0, Lsweet/tts/NgramModel;->scale:I

    .line 26
    iput-object p5, p0, Lsweet/tts/NgramModel;->floor:[[S

    .line 27
    iput-object p6, p0, Lsweet/tts/NgramModel;->grams:Ljava/util/HashMap;

    .line 31
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    const/16 p2, 0xa

    .line 105
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p2

    const/16 p3, 0x10

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 106
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    .line 107
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 108
    check-cast p2, Lkotlin/collections/IndexedValue;

    .line 31
    invoke-virtual {p2}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_0
    iput-object p3, p0, Lsweet/tts/NgramModel;->index:Ljava/util/Map;

    .line 32
    new-instance p1, Lkotlin/text/Regex;

    sget-object p2, Lsweet/tts/NgramModel;->SCRIPT_KEEP:Ljava/util/Map;

    iget-object p3, p0, Lsweet/tts/NgramModel;->group:Ljava/lang/String;

    invoke-static {p2, p3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[^"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\\s]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lsweet/tts/NgramModel;->cleanRegex:Lkotlin/text/Regex;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;[II[[SLjava/util/HashMap;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lsweet/tts/NgramModel;-><init>(Ljava/lang/String;Ljava/util/List;[II[[SLjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final getGramCount()I
    .locals 0

    .line 29
    iget-object p0, p0, Lsweet/tts/NgramModel;->grams:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public final getGroup()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lsweet/tts/NgramModel;->group:Ljava/lang/String;

    return-object p0
.end method

.method public final getLangs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lsweet/tts/NgramModel;->langs:Ljava/util/List;

    return-object p0
.end method

.method public final normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    check-cast p1, Ljava/lang/CharSequence;

    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "normalize(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\u200c"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "\u200d"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object p0, p0, Lsweet/tts/NgramModel;->cleanRegex:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, " "

    invoke-virtual {p0, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    sget-object p1, Lsweet/tts/NgramModel;->MARKS:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    sget-object p1, Lsweet/tts/NgramModel;->WHITESPACE:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final scores(Ljava/lang/String;Ljava/util/List;)[F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[F"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lsweet/tts/NgramModel;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lsweet/tts/NgramModel;->scoresNormalized(Ljava/lang/String;Ljava/util/List;)[F

    move-result-object p0

    return-object p0
.end method

.method public final scoresNormalized(Ljava/lang/String;Ljava/util/List;)[F
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "norm"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "candidates"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v3, :cond_1

    iget-object v8, v0, Lsweet/tts/NgramModel;->index:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v7

    :cond_1
    if-nez v3, :cond_2

    return-object v7

    .line 52
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    new-array v2, v3, [J

    .line 55
    iget-object v6, v0, Lsweet/tts/NgramModel;->orders:[I

    array-length v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    .line 56
    iget-object v9, v0, Lsweet/tts/NgramModel;->orders:[I

    aget v9, v9, v7

    .line 57
    iget-object v10, v0, Lsweet/tts/NgramModel;->floor:[[S

    aget-object v10, v10, v7

    const/4 v11, 0x0

    :goto_2
    add-int v12, v11, v9

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v12, v13, :cond_6

    .line 60
    iget-object v13, v0, Lsweet/tts/NgramModel;->grams:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v14, "substring(...)"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [S

    add-int/lit8 v8, v8, 0x1

    if-nez v12, :cond_4

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v3, :cond_3

    .line 63
    aget-wide v13, v2, v12

    aget v15, v4, v12

    aget-short v15, v10, v15

    move/from16 p1, v6

    int-to-long v5, v15

    add-long/2addr v13, v5

    aput-wide v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, p1

    goto :goto_3

    :cond_3
    move/from16 p1, v6

    goto :goto_5

    :cond_4
    move/from16 p1, v6

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_5

    .line 65
    aget-wide v13, v2, v5

    aget v6, v4, v5

    aget-short v6, v12, v6

    move-object/from16 p2, v1

    move-object v15, v2

    int-to-long v1, v6

    add-long/2addr v13, v1

    aput-wide v13, v15, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p2

    move-object v2, v15

    goto :goto_4

    :cond_5
    :goto_5
    move-object/from16 p2, v1

    move-object v15, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, p1

    move-object/from16 v1, p2

    move-object v2, v15

    goto :goto_2

    :cond_6
    move-object/from16 p2, v1

    move-object v15, v2

    move/from16 p1, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    move-object v15, v2

    .line 70
    iget v0, v0, Lsweet/tts/NgramModel;->scale:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 71
    new-array v1, v3, [F

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_8

    aget-wide v6, v15, v5

    long-to-float v2, v6

    div-float/2addr v2, v0

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    return-object v1
.end method
