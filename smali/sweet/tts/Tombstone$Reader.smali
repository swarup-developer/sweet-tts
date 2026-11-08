.class final Lsweet/tts/Tombstone$Reader;
.super Ljava/lang/Object;
.source "Tombstone.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/Tombstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Reader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lsweet/tts/Tombstone$Reader;",
        "",
        "b",
        "",
        "pos",
        "",
        "end",
        "<init>",
        "([BII)V",
        "getB",
        "()[B",
        "getPos",
        "()I",
        "setPos",
        "(I)V",
        "getEnd",
        "more",
        "",
        "varint",
        "",
        "length",
        "skip",
        "",
        "type",
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


# instance fields
.field private final b:[B

.field private final end:I

.field private pos:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/Tombstone$Reader;->b:[B

    iput p2, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    iput p3, p0, Lsweet/tts/Tombstone$Reader;->end:I

    return-void
.end method


# virtual methods
.method public final getB()[B
    .locals 0

    .line 58
    iget-object p0, p0, Lsweet/tts/Tombstone$Reader;->b:[B

    return-object p0
.end method

.method public final getEnd()I
    .locals 0

    .line 58
    iget p0, p0, Lsweet/tts/Tombstone$Reader;->end:I

    return p0
.end method

.method public final getPos()I
    .locals 0

    .line 58
    iget p0, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    return p0
.end method

.method public final length()I
    .locals 4

    .line 72
    invoke-virtual {p0}, Lsweet/tts/Tombstone$Reader;->varint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 73
    iget v2, p0, Lsweet/tts/Tombstone$Reader;->end:I

    iget p0, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "bad length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final more()Z
    .locals 1

    .line 59
    iget v0, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    iget p0, p0, Lsweet/tts/Tombstone$Reader;->end:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setPos(I)V
    .locals 0

    .line 58
    iput p1, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    return-void
.end method

.method public final skip(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 81
    iget p1, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wire type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lsweet/tts/Tombstone$Reader;->length()I

    move-result p1

    iget v0, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    goto :goto_0

    .line 79
    :cond_2
    iget p1, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0}, Lsweet/tts/Tombstone$Reader;->varint()J

    .line 84
    :goto_0
    iget p1, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    iget p0, p0, Lsweet/tts/Tombstone$Reader;->end:I

    if-gt p1, p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "past the end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varint()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 64
    :goto_0
    iget v3, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    iget v4, p0, Lsweet/tts/Tombstone$Reader;->end:I

    if-ge v3, v4, :cond_1

    const/16 v4, 0x3f

    if-gt v2, v4, :cond_1

    .line 65
    iget-object v4, p0, Lsweet/tts/Tombstone$Reader;->b:[B

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lsweet/tts/Tombstone$Reader;->pos:I

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "bad varint"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
