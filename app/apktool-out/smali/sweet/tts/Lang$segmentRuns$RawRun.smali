.class public final Lsweet/tts/Lang$segmentRuns$RawRun;
.super Ljava/lang/Object;
.source "Lang.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/Lang;->segmentRuns(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawRun"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\u000f\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J&\u0010\u0011\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "sweet/tts/Lang$segmentRuns$RawRun",
        "",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "script",
        "Lsweet/tts/Lang$Script;",
        "<init>",
        "(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)V",
        "getSb",
        "()Ljava/lang/StringBuilder;",
        "getScript",
        "()Lsweet/tts/Lang$Script;",
        "setScript",
        "(Lsweet/tts/Lang$Script;)V",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)Lsweet/tts/Lang$segmentRuns$RawRun;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final sb:Ljava/lang/StringBuilder;

.field private script:Lsweet/tts/Lang$Script;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)V
    .locals 1

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "script"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    return-void
.end method

.method public static synthetic copy$default(Lsweet/tts/Lang$segmentRuns$RawRun;Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;ILjava/lang/Object;)Lsweet/tts/Lang$segmentRuns$RawRun;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lsweet/tts/Lang$segmentRuns$RawRun;->copy(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)Lsweet/tts/Lang$segmentRuns$RawRun;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final component2()Lsweet/tts/Lang$Script;
    .locals 0

    iget-object p0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    return-object p0
.end method

.method public final copy(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)Lsweet/tts/Lang$segmentRuns$RawRun;
    .locals 0

    const-string p0, "sb"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "script"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lsweet/tts/Lang$segmentRuns$RawRun;

    invoke-direct {p0, p1, p2}, Lsweet/tts/Lang$segmentRuns$RawRun;-><init>(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsweet/tts/Lang$segmentRuns$RawRun;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsweet/tts/Lang$segmentRuns$RawRun;

    iget-object v1, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    iget-object p1, p1, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSb()Ljava/lang/StringBuilder;
    .locals 0

    .line 134
    iget-object p0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final getScript()Lsweet/tts/Lang$Script;
    .locals 0

    .line 134
    iget-object p0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    invoke-virtual {p0}, Lsweet/tts/Lang$Script;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setScript(Lsweet/tts/Lang$Script;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->sb:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsweet/tts/Lang$segmentRuns$RawRun;->script:Lsweet/tts/Lang$Script;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RawRun(sb="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", script="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
