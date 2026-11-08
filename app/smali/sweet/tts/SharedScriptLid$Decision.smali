.class final Lsweet/tts/SharedScriptLid$Decision;
.super Ljava/lang/Object;
.source "SharedScriptLid.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/SharedScriptLid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Decision"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001f\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lsweet/tts/SharedScriptLid$Decision;",
        "",
        "lang",
        "",
        "note",
        "ambiguous",
        "",
        "words",
        "",
        "scores",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZILjava/util/Map;)V",
        "getLang",
        "()Ljava/lang/String;",
        "getNote",
        "getAmbiguous",
        "()Z",
        "getWords",
        "()I",
        "getScores",
        "()Ljava/util/Map;",
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
.field private final ambiguous:Z

.field private final lang:Ljava/lang/String;

.field private final note:Ljava/lang/String;

.field private final scores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final words:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "note"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/SharedScriptLid$Decision;->lang:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/SharedScriptLid$Decision;->note:Ljava/lang/String;

    iput-boolean p3, p0, Lsweet/tts/SharedScriptLid$Decision;->ambiguous:Z

    iput p4, p0, Lsweet/tts/SharedScriptLid$Decision;->words:I

    iput-object p5, p0, Lsweet/tts/SharedScriptLid$Decision;->scores:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAmbiguous()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lsweet/tts/SharedScriptLid$Decision;->ambiguous:Z

    return p0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lsweet/tts/SharedScriptLid$Decision;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lsweet/tts/SharedScriptLid$Decision;->note:Ljava/lang/String;

    return-object p0
.end method

.method public final getScores()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lsweet/tts/SharedScriptLid$Decision;->scores:Ljava/util/Map;

    return-object p0
.end method

.method public final getWords()I
    .locals 0

    .line 88
    iget p0, p0, Lsweet/tts/SharedScriptLid$Decision;->words:I

    return p0
.end method
