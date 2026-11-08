.class final enum Lsweet/tts/Lang$Script;
.super Ljava/lang/Enum;
.source "Lang.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/Lang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Script"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsweet/tts/Lang$Script;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lsweet/tts/Lang$Script;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LATIN",
        "DEVANAGARI",
        "BENGALI",
        "TAMIL",
        "TELUGU",
        "GUJARATI",
        "MALAYALAM",
        "KANNADA",
        "PUNJABI",
        "ODIA",
        "MEETEI",
        "OLCHIKI",
        "ARABIC",
        "NUMBER",
        "EMOJI",
        "OTHER",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lsweet/tts/Lang$Script;

.field public static final enum ARABIC:Lsweet/tts/Lang$Script;

.field public static final enum BENGALI:Lsweet/tts/Lang$Script;

.field public static final enum DEVANAGARI:Lsweet/tts/Lang$Script;

.field public static final enum EMOJI:Lsweet/tts/Lang$Script;

.field public static final enum GUJARATI:Lsweet/tts/Lang$Script;

.field public static final enum KANNADA:Lsweet/tts/Lang$Script;

.field public static final enum LATIN:Lsweet/tts/Lang$Script;

.field public static final enum MALAYALAM:Lsweet/tts/Lang$Script;

.field public static final enum MEETEI:Lsweet/tts/Lang$Script;

.field public static final enum NUMBER:Lsweet/tts/Lang$Script;

.field public static final enum ODIA:Lsweet/tts/Lang$Script;

.field public static final enum OLCHIKI:Lsweet/tts/Lang$Script;

.field public static final enum OTHER:Lsweet/tts/Lang$Script;

.field public static final enum PUNJABI:Lsweet/tts/Lang$Script;

.field public static final enum TAMIL:Lsweet/tts/Lang$Script;

.field public static final enum TELUGU:Lsweet/tts/Lang$Script;


# direct methods
.method private static final synthetic $values()[Lsweet/tts/Lang$Script;
    .locals 17

    sget-object v1, Lsweet/tts/Lang$Script;->LATIN:Lsweet/tts/Lang$Script;

    sget-object v2, Lsweet/tts/Lang$Script;->DEVANAGARI:Lsweet/tts/Lang$Script;

    sget-object v3, Lsweet/tts/Lang$Script;->BENGALI:Lsweet/tts/Lang$Script;

    sget-object v4, Lsweet/tts/Lang$Script;->TAMIL:Lsweet/tts/Lang$Script;

    sget-object v5, Lsweet/tts/Lang$Script;->TELUGU:Lsweet/tts/Lang$Script;

    sget-object v6, Lsweet/tts/Lang$Script;->GUJARATI:Lsweet/tts/Lang$Script;

    sget-object v7, Lsweet/tts/Lang$Script;->MALAYALAM:Lsweet/tts/Lang$Script;

    sget-object v8, Lsweet/tts/Lang$Script;->KANNADA:Lsweet/tts/Lang$Script;

    sget-object v9, Lsweet/tts/Lang$Script;->PUNJABI:Lsweet/tts/Lang$Script;

    sget-object v10, Lsweet/tts/Lang$Script;->ODIA:Lsweet/tts/Lang$Script;

    sget-object v11, Lsweet/tts/Lang$Script;->MEETEI:Lsweet/tts/Lang$Script;

    sget-object v12, Lsweet/tts/Lang$Script;->OLCHIKI:Lsweet/tts/Lang$Script;

    sget-object v13, Lsweet/tts/Lang$Script;->ARABIC:Lsweet/tts/Lang$Script;

    sget-object v14, Lsweet/tts/Lang$Script;->NUMBER:Lsweet/tts/Lang$Script;

    sget-object v15, Lsweet/tts/Lang$Script;->EMOJI:Lsweet/tts/Lang$Script;

    sget-object v16, Lsweet/tts/Lang$Script;->OTHER:Lsweet/tts/Lang$Script;

    filled-new-array/range {v1 .. v16}, [Lsweet/tts/Lang$Script;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "LATIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->LATIN:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "DEVANAGARI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->DEVANAGARI:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "BENGALI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->BENGALI:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "TAMIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->TAMIL:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "TELUGU"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->TELUGU:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "GUJARATI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->GUJARATI:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "MALAYALAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->MALAYALAM:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "KANNADA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->KANNADA:Lsweet/tts/Lang$Script;

    .line 44
    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "PUNJABI"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->PUNJABI:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "ODIA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->ODIA:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "MEETEI"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->MEETEI:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "OLCHIKI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->OLCHIKI:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "ARABIC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->ARABIC:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "NUMBER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->NUMBER:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "EMOJI"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->EMOJI:Lsweet/tts/Lang$Script;

    new-instance v0, Lsweet/tts/Lang$Script;

    const-string v1, "OTHER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lsweet/tts/Lang$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsweet/tts/Lang$Script;->OTHER:Lsweet/tts/Lang$Script;

    invoke-static {}, Lsweet/tts/Lang$Script;->$values()[Lsweet/tts/Lang$Script;

    move-result-object v0

    sput-object v0, Lsweet/tts/Lang$Script;->$VALUES:[Lsweet/tts/Lang$Script;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lsweet/tts/Lang$Script;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lsweet/tts/Lang$Script;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsweet/tts/Lang$Script;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsweet/tts/Lang$Script;
    .locals 1

    const-class v0, Lsweet/tts/Lang$Script;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsweet/tts/Lang$Script;

    return-object p0
.end method

.method public static values()[Lsweet/tts/Lang$Script;
    .locals 1

    sget-object v0, Lsweet/tts/Lang$Script;->$VALUES:[Lsweet/tts/Lang$Script;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsweet/tts/Lang$Script;

    return-object v0
.end method
