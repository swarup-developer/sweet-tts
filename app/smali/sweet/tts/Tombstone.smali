.class public final Lsweet/tts/Tombstone;
.super Ljava/lang/Object;
.source "Tombstone.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/Tombstone$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTombstone.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tombstone.kt\nsweet/tts/Tombstone\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1761#2,3:89\n*S KotlinDebug\n*F\n+ 1 Tombstone.kt\nsweet/tts/Tombstone\n*L\n18#1:89,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\nH\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lsweet/tts/Tombstone;",
        "",
        "<init>",
        "()V",
        "ELOQUENCE_MARKS",
        "",
        "",
        "crashedInEloquence",
        "",
        "tombstone",
        "",
        "([B)Ljava/lang/Boolean;",
        "crashingThread",
        "b",
        "Reader",
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
.field private static final ELOQUENCE_MARKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lsweet/tts/Tombstone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsweet/tts/Tombstone;

    invoke-direct {v0}, Lsweet/tts/Tombstone;-><init>()V

    sput-object v0, Lsweet/tts/Tombstone;->INSTANCE:Lsweet/tts/Tombstone;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libeloqiumjni"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "org.eloqium"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sweet.tts.Eloquence"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/Tombstone;->ELOQUENCE_MARKS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final crashingThread([B)[B
    .locals 19

    move-object/from16 v0, p1

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    new-instance v2, Lsweet/tts/Tombstone$Reader;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v2, v0, v3, v4}, Lsweet/tts/Tombstone$Reader;-><init>([BII)V

    const-wide/16 v5, -0x1

    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v2}, Lsweet/tts/Tombstone$Reader;->more()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 27
    invoke-virtual {v2}, Lsweet/tts/Tombstone$Reader;->varint()J

    move-result-wide v8

    const/4 v10, 0x3

    ushr-long v10, v8, v10

    long-to-int v10, v10

    const-wide/16 v11, 0x7

    and-long/2addr v8, v11

    long-to-int v8, v8

    const/4 v9, 0x6

    if-ne v10, v9, :cond_1

    if-nez v8, :cond_1

    .line 31
    invoke-virtual {v2}, Lsweet/tts/Tombstone$Reader;->varint()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    const/16 v9, 0x10

    if-ne v10, v9, :cond_5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 33
    invoke-virtual {v2}, Lsweet/tts/Tombstone$Reader;->length()I

    move-result v8

    .line 34
    new-instance v9, Lsweet/tts/Tombstone$Reader;

    invoke-virtual {v2}, Lsweet/tts/Tombstone$Reader;->getPos()I

    move-result v10

    invoke-virtual {v2}, Lsweet/tts/Tombstone$Reader;->getPos()I

    move-result v13

    add-int/2addr v13, v8

    invoke-direct {v9, v0, v10, v13}, Lsweet/tts/Tombstone$Reader;-><init>([BII)V

    .line 35
    invoke-virtual {v2}, Lsweet/tts/Tombstone$Reader;->getPos()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v10}, Lsweet/tts/Tombstone$Reader;->setPos(I)V

    move-object v8, v7

    const-wide/16 v13, -0x1

    .line 38
    :goto_1
    invoke-virtual {v9}, Lsweet/tts/Tombstone$Reader;->more()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 39
    invoke-virtual {v9}, Lsweet/tts/Tombstone$Reader;->varint()J

    move-result-wide v15

    const-wide/16 v17, 0x8

    cmp-long v10, v15, v17

    if-nez v10, :cond_2

    .line 41
    invoke-virtual {v9}, Lsweet/tts/Tombstone$Reader;->varint()J

    move-result-wide v13

    goto :goto_1

    :cond_2
    const-wide/16 v17, 0x12

    cmp-long v10, v15, v17

    if-nez v10, :cond_3

    .line 42
    invoke-virtual {v9}, Lsweet/tts/Tombstone$Reader;->length()I

    move-result v8

    invoke-virtual {v9}, Lsweet/tts/Tombstone$Reader;->getPos()I

    move-result v10

    invoke-virtual {v9}, Lsweet/tts/Tombstone$Reader;->getPos()I

    move-result v15

    add-int/2addr v15, v8

    invoke-static {v10, v15}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v10

    invoke-virtual {v9}, Lsweet/tts/Tombstone$Reader;->getPos()I

    move-result v15

    add-int/2addr v15, v8

    invoke-virtual {v9, v15}, Lsweet/tts/Tombstone$Reader;->setPos(I)V

    move-object v8, v10

    goto :goto_1

    :cond_3
    and-long v3, v15, v11

    long-to-int v3, v3

    .line 43
    invoke-virtual {v9, v3}, Lsweet/tts/Tombstone$Reader;->skip(I)V

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-ltz v3, :cond_0

    if-eqz v8, :cond_0

    .line 46
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 48
    :cond_5
    invoke-virtual {v2, v8}, Lsweet/tts/Tombstone$Reader;->skip(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 54
    :catch_0
    :cond_6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/ranges/IntRange;

    if-nez v1, :cond_7

    return-object v7

    .line 55
    :cond_7
    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final crashedInEloquence([B)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "tombstone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lsweet/tts/Tombstone;->crashingThread([B)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 17
    sget-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 18
    sget-object p0, Lsweet/tts/Tombstone;->ELOQUENCE_MARKS:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 89
    instance-of v1, p0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-static {v3, v1, v2, v4, p1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 91
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
