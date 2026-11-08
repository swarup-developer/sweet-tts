.class public final Lsweet/tts/DictionarySeeds;
.super Ljava/lang/Object;
.source "DictionarySeeds.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0002R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lsweet/tts/DictionarySeeds;",
        "",
        "<init>",
        "()V",
        "e",
        "Lsweet/tts/Dictionary$Entry;",
        "find",
        "",
        "replace",
        "cs",
        "",
        "ELOQUENCE_ENGLISH",
        "",
        "getELOQUENCE_ENGLISH",
        "()Ljava/util/List;",
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
.field private static final ELOQUENCE_ENGLISH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lsweet/tts/DictionarySeeds;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lsweet/tts/DictionarySeeds;

    invoke-direct {v0}, Lsweet/tts/DictionarySeeds;-><init>()V

    sput-object v0, Lsweet/tts/DictionarySeeds;->INSTANCE:Lsweet/tts/DictionarySeeds;

    const/16 v1, 0x4f

    .line 14
    new-array v6, v1, [Lsweet/tts/Dictionary$Entry;

    const-string v1, "Mar"

    const-string v2, "March"

    const/4 v7, 0x1

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 15
    const-string v1, "Tue"

    const-string v2, "Tuesday"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    aput-object v1, v6, v7

    const-string v1, "Tues"

    const-string v2, "Tuesday"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 16
    const-string v1, "Thu"

    const-string v2, "Thursday"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v6, v2

    const-string v1, "Thur"

    const-string v2, "Thursday"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v6, v2

    const-string v1, "Thurs"

    const-string v2, "Thursday"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v6, v2

    .line 18
    const-string v1, "omg"

    const-string v2, "oe em jee"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v6, v2

    const-string v1, "LOL"

    const-string v2, "ell oe ell"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v6, v2

    const-string v1, "lmao"

    const-string v2, "ell em ey oe"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v6, v2

    const-string v1, "lmfao"

    const-string v2, "ell em eff aigh oe"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v6, v2

    .line 19
    const-string v1, "rofl"

    const-string v2, "ar oe eff ell"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v6, v2

    const-string v1, "ROFLMAO"

    const-string v2, "ar oe eff ell em ey oe"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v6, v2

    const-string v1, "idk"

    const-string v2, "I don\'t know"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v6, v2

    .line 20
    const-string v1, "imo"

    const-string v2, "igh em oe"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v6, v2

    const-string v1, "IMHO"

    const-string v2, "igh em aitch oe"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v6, v2

    const-string v1, "ikr"

    const-string v2, "igh keigh ar"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v6, v2

    const-string v1, "stfu"

    const-string v2, "ess tea eff yue"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v6, v2

    .line 21
    const-string v1, "IYKYK"

    const-string v2, "igh wie keigh wie keigh"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v6, v2

    const-string v1, "IDGAF"

    const-string v2, "igh dee jee aigh eff"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v6, v2

    const-string v1, "ILY"

    const-string v2, "igh ell wie"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v6, v2

    .line 22
    const-string v1, "OTOH"

    const-string v2, "oe tea oe aitch"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v6, v2

    const-string v1, "AKA"

    const-string v2, "ey keigh ey"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v6, v2

    const-string v1, "FAQ"

    const-string v2, "eff ey kew"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v6, v2

    const-string v1, "FWIW"

    const-string v2, "for what it\'s worth"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v6, v2

    .line 23
    const-string v1, "AFAIK"

    const-string v2, "as far as I know"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v6, v2

    const-string v1, "AFAIC"

    const-string v2, "as far as I\'m concerned"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v6, v2

    const-string v1, "AFAICT"

    const-string v2, "as far as I can tell"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v6, v2

    .line 24
    const-string v1, "IIRC"

    const-string v2, "if I recall correctly"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v6, v2

    .line 26
    const-string v1, "ios"

    const-string v2, "igh oe ess"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v6, v2

    const-string v1, "OS"

    const-string v2, "oe ess"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v6, v2

    const-string v1, "AI"

    const-string v2, "aigh igh"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v6, v2

    const-string v1, "api"

    const-string v2, "aigh pee igh"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v6, v2

    .line 27
    const-string v1, "apk"

    const-string v2, "ey pee kay"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v6, v2

    const-string v1, "url"

    const-string v2, "yue ar ell"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v6, v2

    const-string v1, "urls"

    const-string v2, "yue ar ells"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v6, v2

    const-string v1, "usb"

    const-string v2, "yue ess bea"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v6, v2

    .line 28
    const-string v1, "GUI"

    const-string v2, "jee yue igh"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v6, v2

    const-string v1, "LED"

    const-string v2, "ell ee dee"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v6, v2

    const-string v1, "OLED"

    const-string v2, "oe ell ee dee"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v6, v2

    .line 29
    const-string v1, "JPEG"

    const-string v2, "jay peg"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v6, v2

    const-string v1, "MPEG"

    const-string v2, "em peg"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v6, v2

    const-string v1, "IP"

    const-string v2, "igh pea"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v6, v2

    const-string v1, "ISO"

    const-string v2, "igh ess oe"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v6, v2

    .line 30
    const-string v1, "IEEE"

    const-string v2, "I triple E"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v6, v2

    const-string v1, "ibm"

    const-string v2, "igh bea em"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v6, v2

    const-string v1, "SEO"

    const-string v2, "ess ee oe"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v6, v2

    const-string v1, "UX"

    const-string v2, "yue eks"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v6, v2

    .line 31
    const-string v1, "UI"

    const-string v2, "yue igh"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v6, v2

    const-string v1, "dpi"

    const-string v2, "dee pea igh"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v6, v2

    const-string v1, "ppi"

    const-string v2, "pea pea igh"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v6, v2

    const-string v1, "VGA"

    const-string v2, "vee jee ey"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v6, v2

    .line 32
    const-string v1, "IMEI"

    const-string v2, "igh em ee igh"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v6, v2

    const-string v1, "GUID"

    const-string v2, "jee yue igh dee"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v6, v2

    const-string v1, "UUID"

    const-string v2, "yue yue igh dee"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v6, v2

    .line 33
    const-string v1, "UEFI"

    const-string v2, "yue ee eff igh"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v6, v2

    const-string v1, "PWA"

    const-string v2, "pea doubleyou ey"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v6, v2

    const-string v1, "MySQL"

    const-string v2, "my ess kew l"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v6, v2

    .line 34
    const-string v1, "ffmpeg"

    const-string v2, "eff eff em peg"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v6, v2

    const-string v1, "SUV"

    const-string v2, "ess yue vee"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v6, v2

    const-string v1, "EV"

    const-string v2, "ee vee"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v6, v2

    .line 35
    const-string v1, "OTA"

    const-string v2, "oe tea ey"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v6, v2

    const-string v1, "BYOD"

    const-string v2, "bea wie oe dee"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v6, v2

    .line 37
    const-string v1, "nvda"

    const-string v2, "en vee dee ey"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v6, v2

    const-string v1, "nvaccess"

    const-string v2, "en vee access"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v6, v2

    const-string v1, "chatgpt"

    const-string v2, "chat gee pee tea"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v6, v2

    .line 38
    const-string v1, "gpay"

    const-string v2, "g pay"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v6, v2

    const-string v1, "gmail"

    const-string v2, "G mail"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v6, v2

    const-string v1, "imdb"

    const-string v2, "igh em dee bea"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v6, v2

    const-string v1, "airbnb"

    const-string v2, "Air bea en bea"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v6, v2

    .line 39
    const-string v1, "AQI"

    const-string v2, "aigh kew igh"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v6, v2

    const-string v1, "CAGR"

    const-string v2, "cea ey jee ar"

    invoke-direct {v0, v1, v2, v7}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v6, v2

    const-string v1, "kashmir"

    const-string v2, "kushmeer"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v6, v2

    const-string v1, "kashmiri"

    const-string v2, "kushmeeri"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v6, v2

    .line 41
    const-string v1, "Govt"

    const-string v2, "Government"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v6, v2

    const-string v1, "Avg"

    const-string v2, "average"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v6, v2

    const-string v1, "incl"

    const-string v2, "including"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v6, v2

    const-string v1, "Univ"

    const-string v2, "university"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v6, v2

    .line 42
    const-string v1, "Qty"

    const-string v2, "quantity"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v6, v2

    const-string v1, "esc"

    const-string v2, "escape"

    invoke-static/range {v0 .. v5}, Lsweet/tts/DictionarySeeds;->e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, v6, v1

    .line 12
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/DictionarySeeds;->ELOQUENCE_ENGLISH:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;
    .locals 0

    .line 10
    new-instance p0, Lsweet/tts/Dictionary$Entry;

    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/Dictionary$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method static synthetic e$default(Lsweet/tts/DictionarySeeds;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lsweet/tts/Dictionary$Entry;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/DictionarySeeds;->e(Ljava/lang/String;Ljava/lang/String;Z)Lsweet/tts/Dictionary$Entry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getELOQUENCE_ENGLISH()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Entry;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object p0, Lsweet/tts/DictionarySeeds;->ELOQUENCE_ENGLISH:Ljava/util/List;

    return-object p0
.end method
