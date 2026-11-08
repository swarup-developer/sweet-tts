.class final Lsweet/tts/EnglishHomographs$Rule;
.super Ljava/lang/Object;
.source "EnglishHomographs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/EnglishHomographs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rule"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lsweet/tts/EnglishHomographs$Rule;",
        "",
        "pattern",
        "",
        "group",
        "",
        "say",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getGroup",
        "()I",
        "getSay",
        "()Ljava/lang/String;",
        "re",
        "Lkotlin/text/Regex;",
        "getRe",
        "()Lkotlin/text/Regex;",
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
.field private final group:I

.field private final re:Lkotlin/text/Regex;

.field private final say:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "say"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lsweet/tts/EnglishHomographs$Rule;->group:I

    iput-object p3, p0, Lsweet/tts/EnglishHomographs$Rule;->say:Ljava/lang/String;

    new-instance p2, Lkotlin/text/Regex;

    invoke-direct {p2, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lsweet/tts/EnglishHomographs$Rule;->re:Lkotlin/text/Regex;

    return-void
.end method


# virtual methods
.method public final getGroup()I
    .locals 0

    .line 15
    iget p0, p0, Lsweet/tts/EnglishHomographs$Rule;->group:I

    return p0
.end method

.method public final getRe()Lkotlin/text/Regex;
    .locals 0

    .line 15
    iget-object p0, p0, Lsweet/tts/EnglishHomographs$Rule;->re:Lkotlin/text/Regex;

    return-object p0
.end method

.method public final getSay()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lsweet/tts/EnglishHomographs$Rule;->say:Ljava/lang/String;

    return-object p0
.end method
