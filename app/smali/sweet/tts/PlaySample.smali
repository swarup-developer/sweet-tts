.class public final Lsweet/tts/PlaySample;
.super Ljava/lang/Object;
.source "PlaySample.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/PlaySample$AudioTrackCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaySample.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaySample.kt\nsweet/tts/PlaySample\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,189:1\n1#2:190\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lsweet/tts/PlaySample;",
        "",
        "<init>",
        "()V",
        "TEST_TEXT",
        "",
        "TEST_TEXT_BY_LANG",
        "",
        "textFor",
        "lang",
        "backend",
        "Lsweet/tts/RoutingVoiceBackend;",
        "lastCallerRate",
        "",
        "getLastCallerRate",
        "()I",
        "setLastCallerRate",
        "(I)V",
        "lastCallerPitch",
        "getLastCallerPitch",
        "setLastCallerPitch",
        "resolveVoiceName",
        "context",
        "Landroid/content/Context;",
        "refreshEngines",
        "",
        "timeoutMs",
        "",
        "play",
        "",
        "AudioTrackCallback",
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
.field public static final INSTANCE:Lsweet/tts/PlaySample;

.field public static final TEST_TEXT:Ljava/lang/String; = "This is a test message of Sweet TTS."

.field private static final TEST_TEXT_BY_LANG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile backend:Lsweet/tts/RoutingVoiceBackend;

.field private static volatile lastCallerPitch:I

.field private static volatile lastCallerRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsweet/tts/PlaySample;

    invoke-direct {v0}, Lsweet/tts/PlaySample;-><init>()V

    sput-object v0, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    const/16 v0, 0x17

    .line 32
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "hi"

    const-string v2, "\u092f\u0939 \u0911\u0932 \u0907\u0928 \u0935\u0928 \u091f\u0940\u091f\u0940\u090f\u0938 \u0915\u093e \u090f\u0915 \u092a\u0930\u0940\u0915\u094d\u0937\u0923 \u0938\u0902\u0926\u0947\u0936 \u0939\u0948\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    const-string v1, "mr"

    const-string v2, "\u0939\u093e \u0911\u0932 \u0907\u0928 \u0935\u0928 \u091f\u0940\u091f\u0940\u090f\u0938\u091a\u093e \u090f\u0915 \u091a\u093e\u091a\u0923\u0940 \u0938\u0902\u0926\u0947\u0936 \u0906\u0939\u0947."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 34
    const-string v1, "bn"

    const-string v2, "\u098f\u099f\u09bf \u0985\u09b2 \u0987\u09a8 \u0993\u09af\u09bc\u09be\u09a8 \u099f\u09bf\u099f\u09bf\u098f\u09b8-\u098f\u09b0 \u098f\u0995\u099f\u09bf \u09aa\u09b0\u09c0\u0995\u09cd\u09b7\u09be\u09ae\u09c2\u09b2\u0995 \u09ac\u09be\u09b0\u09cd\u09a4\u09be\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    const-string v1, "gu"

    const-string v2, "\u0a86 \u0a93\u0ab2 \u0a87\u0aa8 \u0ab5\u0aa8 \u0a9f\u0ac0\u0a9f\u0ac0\u0a8f\u0ab8\u0aa8\u0acb \u0a8f\u0a95 \u0aaa\u0ab0\u0ac0\u0a95\u0acd\u0ab7\u0aa3 \u0ab8\u0a82\u0aa6\u0ac7\u0ab6 \u0a9b\u0ac7."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 36
    const-string v1, "pa"

    const-string v2, "\u0a07\u0a39 \u0a06\u0a32 \u0a07\u0a28 \u0a35\u0a28 \u0a1f\u0a40\u0a1f\u0a40\u0a10\u0a38 \u0a26\u0a3e \u0a07\u0a71\u0a15 \u0a1f\u0a48\u0a38\u0a1f \u0a38\u0a41\u0a28\u0a47\u0a39\u0a3e \u0a39\u0a48\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 37
    const-string v1, "ur"

    const-string v2, "\u06cc\u06c1 \u0622\u0644 \u0627\u0646 \u0648\u0646 \u0679\u06cc \u0679\u06cc \u0627\u06cc\u0633 \u06a9\u0627 \u0627\u06cc\u06a9 \u0679\u06cc\u0633\u0679 \u067e\u06cc\u063a\u0627\u0645 \u06c1\u06d2\u06d4"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 38
    const-string v1, "ar"

    const-string v2, "\u0647\u0630\u0647 \u0631\u0633\u0627\u0644\u0629 \u0627\u062e\u062a\u0628\u0627\u0631 \u0645\u0646 Sweet TTS."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 39
    const-string v1, "ne"

    const-string v2, "\u092f\u094b \u0905\u0932 \u0907\u0928 \u0935\u093e\u0928 \u091f\u093f\u091f\u093f\u090f\u0938\u0915\u094b \u090f\u0909\u091f\u093e \u092a\u0930\u0940\u0915\u094d\u0937\u0923 \u0938\u0928\u094d\u0926\u0947\u0936 \u0939\u094b\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 40
    const-string v1, "or"

    const-string v2, "\u0b0f\u0b39\u0b3e \u0b05\u0b32 \u0b07\u0b28 \u0b71\u0b3e\u0b28 \u0b1f\u0b3f\u0b1f\u0b3f\u0b0f\u0b38\u0b30 \u0b0f\u0b15 \u0b2a\u0b30\u0b40\u0b15\u0b4d\u0b37\u0b23 \u0b2c\u0b3e\u0b30\u0b4d\u0b24\u0b4d\u0b24\u0b3e\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 41
    const-string v1, "kn"

    const-string v2, "\u0c87\u0ca6\u0cc1 \u0c86\u0cb2\u0ccd \u0c87\u0ca8\u0ccd \u0cb5\u0ca8\u0ccd \u0c9f\u0cbf\u0c9f\u0cbf\u0c8e\u0cb8\u0ccd\u200c\u0ca8 \u0c92\u0c82\u0ca6\u0cc1 \u0caa\u0cb0\u0cc0\u0c95\u0ccd\u0cb7\u0cbe \u0cb8\u0c82\u0ca6\u0cc7\u0cb6."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 42
    const-string v1, "ta"

    const-string v2, "\u0b87\u0ba4\u0bc1 \u0b86\u0bb2\u0bcd \u0b87\u0ba9\u0bcd \u0b92\u0ba9\u0bcd \u0b9f\u0bbf\u0b9f\u0bbf\u0b8e\u0bb8\u0bcd \u0b87\u0ba9\u0bcd \u0b92\u0bb0\u0bc1 \u0b9a\u0bcb\u0ba4\u0ba9\u0bc8\u0b9a\u0bcd \u0b9a\u0bc6\u0baf\u0bcd\u0ba4\u0bbf."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 43
    const-string v1, "te"

    const-string v2, "\u0c07\u0c26\u0c3f \u0c06\u0c32\u0c4d \u0c07\u0c28\u0c4d \u0c35\u0c28\u0c4d \u0c1f\u0c3f\u0c1f\u0c3f\u0c0e\u0c38\u0c4d \u0c2f\u0c4a\u0c15\u0c4d\u0c15 \u0c2a\u0c30\u0c40\u0c15\u0c4d\u0c37\u0c3e \u0c38\u0c02\u0c26\u0c47\u0c36\u0c02."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 44
    const-string v1, "ml"

    const-string v2, "\u0d07\u0d24\u0d4d \u0d13\u0d7e \u0d07\u0d7b \u0d35\u0d7a \u0d1f\u0d3f\u0d1f\u0d3f\u0d0e\u0d38\u0d3f\u0d28\u0d4d\u0d31\u0d46 \u0d12\u0d30\u0d41 \u0d1f\u0d46\u0d38\u0d4d\u0d31\u0d4d\u0d31\u0d4d \u0d38\u0d28\u0d4d\u0d26\u0d47\u0d36\u0d2e\u0d3e\u0d23\u0d4d."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 45
    const-string v1, "as"

    const-string v2, "\u098f\u0987\u099f\u09cb \u0985\u09b2 \u0987\u09a8 \u09f1\u09be\u09a8 \u099f\u09bf\u099f\u09bf\u098f\u099b\u09f0 \u098f\u099f\u09be \u09aa\u09f0\u09c0\u0995\u09cd\u09b7\u09be\u09ae\u09c2\u09b2\u0995 \u09ac\u09be\u09f0\u09cd\u09a4\u09be\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 46
    const-string v1, "sa"

    const-string v2, "\u0907\u092f\u092e\u094d Sweet TTS \u0907\u0924\u094d\u092f\u0938\u094d\u092f \u092a\u0930\u0940\u0915\u094d\u0937\u093e\u0938\u0928\u094d\u0926\u0947\u0936\u0903 \u0905\u0938\u094d\u0924\u093f\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 49
    const-string v1, "bho"

    const-string v2, "\u0908 \u0911\u0932 \u0907\u0928 \u0935\u0928 \u091f\u0940\u091f\u0940\u090f\u0938 \u0915\u0947 \u090f\u0917\u094b \u092a\u0930\u0940\u0915\u094d\u0937\u0923 \u0938\u0902\u0926\u0947\u0936 \u092c\u093e\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 50
    const-string v1, "mai"

    const-string v2, "\u0908 \u0911\u0932 \u0907\u0928 \u0935\u0928 \u091f\u0940\u091f\u0940\u090f\u0938 \u0915\u0947\u0930 \u090f\u0915\u091f\u093e \u092a\u0930\u0940\u0915\u094d\u0937\u0923 \u0938\u0902\u0926\u0947\u0936 \u0905\u091b\u093f\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 51
    const-string v1, "brx"

    const-string v2, "\u092e\u093f\u092f\u093e \u091c\u093e\u092c\u093e\u092f \u0905\u0932 \u0907\u0928 \u0935\u093e\u0928 \u091f\u093f.\u091f\u093f.\u090f\u0938. \u0928\u093f \u092e\u094b\u0928\u0938\u0947 \u0906\u0928\u091c\u093e\u0926 \u0916\u094c\u0930\u093e\u0902\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 52
    const-string v1, "doi"

    const-string v2, "\u090f\u0939 \u0911\u0932 \u0907\u0928 \u0935\u0928 \u091f\u0940\u091f\u0940\u090f\u0938 \u0926\u093e \u090f\u0915 \u091f\u0947\u0938\u094d\u091f \u0938\u0902\u0926\u0947\u0936 \u0910\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 53
    const-string v1, "kok"

    const-string v2, "\u0939\u094b \u0911\u0932 \u0907\u0928 \u0935\u0928 \u091f\u0940\u091f\u0940\u090f\u0938 \u091a\u094b \u090f\u0915 \u092a\u0930\u093f\u0915\u094d\u0936\u093e \u0938\u0902\u0926\u0947\u0936 \u0906\u0938\u093e\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 54
    const-string v1, "ks"

    const-string v2, "\u092f\u0939 \u091b\u0941 \u0905\u0916 \u0911\u0932 \u0907\u0928 \u0935\u0928 \u091f\u0940\u091f\u0940\u090f\u0938 \u0938\u0902\u0926\u094d\u092f \u091f\u0947\u0938\u094d\u091f \u092a\u0947\u0917\u093e\u092e\u0964"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 55
    const-string v1, "sd"

    const-string v2, "\u0647\u064a \u0622\u0644 \u0627\u0646 \u0648\u0646 \u067d\u064a \u067d\u064a \u0627\u064a\u0633 \u062c\u0648 \u0647\u06aa \u067d\u064a\u0633\u067d \u067e\u064a\u063a\u0627\u0645 \u0622\u0647\u064a."

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 56
    const-string v1, "mni"

    const-string v2, "\uabc0\uabc5\uabe5 \uabd1\uabe3\uabdc \uabcf\uabdf \uabcb\uabe5\uabdf \uabc7\uabe4.\uabc7\uabe4.\uabd1\uabe6\uabc1.\uabc0\uabe4 \uabc7\uabe6\uabc1\uabed\uabe0 \uabc3\uabe6\uabc1\uabe6\uabd6 \uabd1\uabc3\uabc5\uabe4\uabeb"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsweet/tts/PlaySample;->TEST_TEXT_BY_LANG:Ljava/util/Map;

    const/16 v0, 0x64

    .line 69
    sput v0, Lsweet/tts/PlaySample;->lastCallerRate:I

    .line 70
    sput v0, Lsweet/tts/PlaySample;->lastCallerPitch:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final play$lambda$6(Lsweet/tts/RoutingVoiceBackend;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    .line 110
    :try_start_0
    move-object v0, p0

    check-cast v0, Lsweet/tts/VoiceBackend;

    new-instance p0, Lsweet/tts/PlaySample$AudioTrackCallback;

    invoke-direct {p0}, Lsweet/tts/PlaySample$AudioTrackCallback;-><init>()V

    move-object v3, p0

    check-cast v3, Landroid/speech/tts/SynthesisCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    :try_start_1
    invoke-static/range {v0 .. v8}, Lsweet/tts/VoiceBackend;->speak$default(Lsweet/tts/VoiceBackend;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, p2

    :goto_0
    move-object p0, v0

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PlaySample: speak failed for lang="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllInOneTTS"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic refreshEngines$default(Lsweet/tts/PlaySample;Landroid/content/Context;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x1770

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsweet/tts/PlaySample;->refreshEngines(Landroid/content/Context;J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getLastCallerPitch()I
    .locals 0

    .line 70
    sget p0, Lsweet/tts/PlaySample;->lastCallerPitch:I

    return p0
.end method

.method public final getLastCallerRate()I
    .locals 0

    .line 69
    sget p0, Lsweet/tts/PlaySample;->lastCallerRate:I

    return p0
.end method

.method public final play(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 102
    sget-object v0, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;

    if-nez v0, :cond_1

    monitor-enter p0

    .line 103
    :try_start_0
    sget-object v0, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;

    if-nez v0, :cond_0

    sget-object v0, Lsweet/tts/RoutingVoiceBackend;->Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lsweet/tts/RoutingVoiceBackend$Companion;->shared(Landroid/content/Context;)Lsweet/tts/RoutingVoiceBackend;

    move-result-object p1

    sput-object p1, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 102
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    move-object v1, v0

    .line 105
    invoke-virtual {p0, p2}, Lsweet/tts/PlaySample;->textFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    sget v4, Lsweet/tts/PlaySample;->lastCallerRate:I

    .line 107
    sget v5, Lsweet/tts/PlaySample;->lastCallerPitch:I

    .line 108
    new-instance p0, Ljava/lang/Thread;

    .line 114
    new-instance v0, Lsweet/tts/PlaySample$$ExternalSyntheticLambda0;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lsweet/tts/PlaySample$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/RoutingVoiceBackend;Ljava/lang/String;Ljava/lang/String;II)V

    .line 108
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final refreshEngines(Landroid/content/Context;J)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 94
    sget-object v0, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;

    if-nez v0, :cond_1

    monitor-enter p0

    .line 95
    :try_start_0
    sget-object v0, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;

    if-nez v0, :cond_0

    sget-object v0, Lsweet/tts/RoutingVoiceBackend;->Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lsweet/tts/RoutingVoiceBackend$Companion;->shared(Landroid/content/Context;)Lsweet/tts/RoutingVoiceBackend;

    move-result-object p1

    sput-object p1, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 94
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {v0, p2, p3}, Lsweet/tts/RoutingVoiceBackend;->refreshGoogle(J)Z

    move-result p0

    return p0
.end method

.method public final resolveVoiceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 82
    sget-object v0, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;

    if-nez v0, :cond_1

    monitor-enter p0

    .line 83
    :try_start_0
    sget-object v0, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;

    if-nez v0, :cond_0

    sget-object v0, Lsweet/tts/RoutingVoiceBackend;->Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lsweet/tts/RoutingVoiceBackend$Companion;->shared(Landroid/content/Context;)Lsweet/tts/RoutingVoiceBackend;

    move-result-object p1

    sput-object p1, Lsweet/tts/PlaySample;->backend:Lsweet/tts/RoutingVoiceBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 82
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 85
    invoke-virtual {v0, p2, p0}, Lsweet/tts/RoutingVoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setLastCallerPitch(I)V
    .locals 0

    .line 70
    sput p1, Lsweet/tts/PlaySample;->lastCallerPitch:I

    return-void
.end method

.method public final setLastCallerRate(I)V
    .locals 0

    .line 69
    sput p1, Lsweet/tts/PlaySample;->lastCallerRate:I

    return-void
.end method

.method public final textFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p0, Lsweet/tts/PlaySample;->TEST_TEXT_BY_LANG:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "This is a test message of Sweet TTS."

    :cond_0
    return-object p0
.end method
