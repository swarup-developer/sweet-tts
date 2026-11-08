.class public final Lsweet/tts/NumberProcessing;
.super Ljava/lang/Object;
.source "NumberProcessing.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNumberProcessing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NumberProcessing.kt\nsweet/tts/NumberProcessing\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,388:1\n434#2:389\n507#2,5:390\n434#2:408\n507#2,5:409\n975#2:421\n1046#2,3:422\n975#2:425\n1046#2,3:426\n1761#3,3:395\n1761#3,3:398\n1761#3,3:401\n1761#3,3:404\n1563#3:414\n1634#3,3:415\n1761#3,3:418\n1#4:407\n*S KotlinDebug\n*F\n+ 1 NumberProcessing.kt\nsweet/tts/NumberProcessing\n*L\n52#1:389\n52#1:390,5\n102#1:408\n102#1:409,5\n341#1:421\n341#1:422,3\n349#1:425\n349#1:426,3\n206#1:395,3\n207#1:398,3\n356#1:401,3\n357#1:404,3\n108#1:414\n108#1:415,3\n329#1:418,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0016\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002J\u000e\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ$\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u000e\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ%\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\"J%\u0010$\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008%J%\u0010&\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\'J\u0018\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u000bH\u0002J\u0018\u00100\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u0011H\u0002J\u0018\u00101\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0011H\u0002J\u001a\u00108\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010;\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000b0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000b0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082T\u00a2\u0006\u0002\n\u0000R*\u00105\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020406j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u000204`7X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lsweet/tts/NumberProcessing;",
        "",
        "<init>",
        "()V",
        "mobileRegex",
        "Lkotlin/text/Regex;",
        "numberRegex",
        "MOBILE_MARKER",
        "",
        "reservedMobileRegex",
        "onlyDigits",
        "",
        "text",
        "groupFromRight",
        "",
        "digits",
        "size",
        "",
        "digitByDigitGroups",
        "groups",
        "reserveMobile",
        "expandReservedMobile",
        "rewriteLongNumbers",
        "rewriteDeferredLongNumbers",
        "groupLongNumbers",
        "accept",
        "Lkotlin/Function1;",
        "",
        "rewriteCroreLakh",
        "otpKeywords",
        "otpKeywordsCapitals",
        "otpKeywordNear",
        "start",
        "endExclusive",
        "otpKeywordNear$app",
        "monthBefore",
        "isYearAfterMonth",
        "isYearAfterMonth$app",
        "isGlued",
        "isGlued$app",
        "containsWholeWord",
        "haystack",
        "needle",
        "otpDurationWords",
        "",
        "otpCandidateRegex",
        "otpBoundaryChars",
        "",
        "otpWindowBefore",
        "otpWindowAfter",
        "crossMessageApps",
        "CROSS_MESSAGE_WINDOW_MS",
        "",
        "pendingOtpContext",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "rewriteOtp",
        "appPackage",
        "indianLabels",
        "formatIndianInteger",
        "intPartRaw",
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
.field private static final CROSS_MESSAGE_WINDOW_MS:J = 0xea60L

.field public static final INSTANCE:Lsweet/tts/NumberProcessing;

.field public static final MOBILE_MARKER:C = '\ue000'

.field private static final crossMessageApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final indianLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mobileRegex:Lkotlin/text/Regex;

.field private static final monthBefore:Lkotlin/text/Regex;

.field private static final numberRegex:Lkotlin/text/Regex;

.field private static final otpBoundaryChars:[C

.field private static final otpCandidateRegex:Lkotlin/text/Regex;

.field private static final otpDurationWords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final otpKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final otpKeywordsCapitals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pendingOtpContext:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final reservedMobileRegex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lsweet/tts/NumberProcessing;

    invoke-direct {v0}, Lsweet/tts/NumberProcessing;-><init>()V

    sput-object v0, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    .line 36
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\+(\\d{1,3}) ?(\\d(?: ?\\d){9})(?!\\d)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/NumberProcessing;->mobileRegex:Lkotlin/text/Regex;

    .line 42
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(\\d+(?:,\\d+)*)(\\.\\d+)?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/NumberProcessing;->numberRegex:Lkotlin/text/Regex;

    .line 50
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\ue000(\\d(?: \\d){10,12})"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/NumberProcessing;->reservedMobileRegex:Lkotlin/text/Regex;

    const/16 v0, 0xf

    .line 191
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "verification code"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "verify code"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "security code"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "access code"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 192
    const-string v1, "login code"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "authentication code"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "passcode"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "one time password"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "pin"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    .line 193
    const-string v1, "delivery authentication code"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    .line 194
    const-string v1, "\u0913\u091f\u0940\u092a\u0940"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "\u0938\u0924\u094d\u092f\u093e\u092a\u0928 \u0915\u094b\u0921"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const/16 v1, 0xd

    const-string v15, "\u0938\u0941\u0930\u0915\u094d\u0937\u093e \u0915\u094b\u0921"

    aput-object v15, v0, v1

    const/16 v1, 0xe

    const-string v15, "\u092a\u093f\u0928"

    aput-object v15, v0, v1

    .line 190
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/NumberProcessing;->otpKeywords:Ljava/util/List;

    .line 198
    const-string v0, "DAC"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/NumberProcessing;->otpKeywordsCapitals:Ljava/util/List;

    .line 210
    new-instance v0, Lkotlin/text/Regex;

    .line 211
    const-string v1, "(?i)(?:jan|feb|mar|apr|may|jun|jul|aug|sep|sept|oct|nov|dec)[a-z]*\\.?,?\\s*$|(?:\u091c\u0928\u0935\u0930\u0940|\u092b\u093c\u0930\u0935\u0930\u0940|\u092b\u0930\u0935\u0930\u0940|\u092e\u093e\u0930\u094d\u091a|\u0905\u092a\u094d\u0930\u0948\u0932|\u092e\u0908|\u091c\u0942\u0928|\u091c\u0941\u0932\u093e\u0908|\u0905\u0917\u0938\u094d\u0924|\u0938\u093f\u0924\u0902\u092c\u0930|\u0938\u093f\u0924\u092e\u094d\u092c\u0930|\u0905\u0915\u094d\u091f\u0942\u092c\u0930|\u0905\u0915\u094d\u0924\u0942\u092c\u0930|\u0928\u0935\u0902\u092c\u0930|\u0928\u0935\u092e\u094d\u092c\u0930|\u0926\u093f\u0938\u0902\u092c\u0930|\u0926\u093f\u0938\u092e\u094d\u092c\u0930),?\\s*$"

    .line 210
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/NumberProcessing;->monthBefore:Lkotlin/text/Regex;

    .line 249
    new-array v0, v14, [Ljava/lang/String;

    const-string v1, "minute"

    aput-object v1, v0, v2

    const-string v1, "minutes"

    aput-object v1, v0, v3

    const-string v1, "min"

    aput-object v1, v0, v4

    const-string v1, "mins"

    aput-object v1, v0, v5

    const-string v1, "second"

    aput-object v1, v0, v6

    const-string v1, "seconds"

    aput-object v1, v0, v7

    const-string v1, "sec"

    aput-object v1, v0, v8

    const-string v1, "secs"

    aput-object v1, v0, v9

    const-string v1, "hour"

    aput-object v1, v0, v10

    const-string v1, "hours"

    aput-object v1, v0, v11

    const-string v1, "hr"

    aput-object v1, v0, v12

    const-string v1, "hrs"

    aput-object v1, v0, v13

    .line 248
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsweet/tts/NumberProcessing;->otpDurationWords:Ljava/util/Set;

    .line 255
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?<!\\d)\\d{4,8}(?!\\d)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/NumberProcessing;->otpCandidateRegex:Lkotlin/text/Regex;

    .line 268
    new-array v0, v8, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsweet/tts/NumberProcessing;->otpBoundaryChars:[C

    .line 313
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.whatsapp"

    aput-object v1, v0, v2

    const-string v1, "com.whatsapp.w4b"

    aput-object v1, v0, v3

    const-string v1, "org.telegram.messenger"

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsweet/tts/NumberProcessing;->crossMessageApps:Ljava/util/Set;

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsweet/tts/NumberProcessing;->pendingOtpContext:Ljava/util/HashMap;

    .line 363
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "thousand"

    aput-object v1, v0, v2

    const-string v1, "lakh"

    aput-object v1, v0, v3

    const-string v1, "crore"

    aput-object v1, v0, v4

    const-string v1, "arab"

    aput-object v1, v0, v5

    const-string v1, "kharab"

    aput-object v1, v0, v6

    const-string v1, "neel"

    aput-object v1, v0, v7

    const-string v1, "padma"

    aput-object v1, v0, v8

    const-string v1, "shankh"

    aput-object v1, v0, v9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/NumberProcessing;->indianLabels:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x3as
        0x21s
        0x3fs
        0xas
        0x3bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final containsWholeWord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 236
    move-object p0, p2

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 237
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    :goto_0
    if-ltz p0, :cond_6

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    add-int/lit8 v3, p0, -0x1

    .line 239
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, p2

    .line 240
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p0

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v0

    goto :goto_4

    :cond_4
    :goto_3
    move v4, p2

    :goto_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    return p2

    :cond_5
    add-int/lit8 v3, p0, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 243
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_6
    return v0
.end method

.method private final digitByDigitGroups(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p0, ", "

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda0;-><init>()V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final digitByDigitGroups$lambda$1(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string p0, "toCharArray(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, " "

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([CLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final expandReservedMobile$lambda$5(Ljava/lang/String;Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 408
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Ljava/lang/Appendable;

    .line 409
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 410
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-gt v6, v5, :cond_0

    const/16 v6, 0x3a

    if-ge v5, v6, :cond_0

    .line 411
    invoke-interface {v1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 413
    :cond_1
    check-cast v1, Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    const/4 v4, 0x3

    invoke-static {v1, v0, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    .line 106
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 108
    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    new-array v6, v0, [Ljava/lang/String;

    const-string p0, "-"

    aput-object p0, v6, v3

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 415
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 416
    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 416
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 109
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 114
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    goto :goto_2

    .line 117
    :cond_4
    sget-object p1, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lsweet/tts/NumberProcessing;->digitByDigitGroups(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "plus "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final formatIndianInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    const/4 v0, 0x1

    .line 366
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x30

    aput-char v3, v1, v2

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "0"

    if-nez v3, :cond_0

    move-object v1, v4

    :cond_0
    check-cast v1, Ljava/lang/String;

    .line 367
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-gt v3, v5, :cond_1

    return-object v1

    .line 368
    :cond_1
    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 371
    :goto_0
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 372
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v0

    .line 373
    :goto_1
    invoke-static {v1, v7}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 374
    invoke-static {v1, v7}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 376
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 377
    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, " "

    if-eqz v8, :cond_7

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 378
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v0

    sub-int/2addr v11, v7

    .line 379
    sget-object v7, Lsweet/tts/NumberProcessing;->indianLabels:Ljava/util/List;

    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_4

    goto :goto_4

    .line 380
    :cond_4
    invoke-static {v10}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_3

    :cond_5
    move v10, v2

    :goto_3
    if-eqz v10, :cond_6

    .line 381
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    move v7, v8

    goto :goto_2

    .line 383
    :cond_7
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_8
    if-eqz v2, :cond_9

    .line 384
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return-object v4

    :cond_a
    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final groupFromRight(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    rem-int/2addr p0, p2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    if-lez p0, :cond_0

    .line 60
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_1

    add-int v1, p0, p2

    .line 63
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, "substring(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final groupLongNumbers(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 150
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->longNumberReadingMode()Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 153
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    .line 156
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 151
    :sswitch_0
    const-string v0, "hundreds"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 155
    :cond_0
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto/16 :goto_0

    .line 151
    :sswitch_1
    const-string v0, "group_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 p0, 0x5

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 151
    :sswitch_2
    const-string v0, "group_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 p0, 0x4

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 151
    :sswitch_3
    const-string v0, "group_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 151
    :sswitch_4
    const-string v0, "group_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 156
    :cond_4
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 151
    :sswitch_5
    const-string v0, "tens"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    .line 154
    :cond_5
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 151
    :sswitch_6
    const-string v0, "ones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    .line 153
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 151
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 162
    sget-object v1, Lsweet/tts/NumberProcessing;->numberRegex:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v2, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, v0, p0}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;IZ)V

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :sswitch_7
    const-string p2, "none"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x33af38 -> :sswitch_7
        0x341ecd -> :sswitch_6
        0x3643f6 -> :sswitch_5
        0x117d5e72 -> :sswitch_4
        0x117d5e73 -> :sswitch_3
        0x117d5e74 -> :sswitch_2
        0x117d5e75 -> :sswitch_1
        0x221eec05 -> :sswitch_0
    .end sparse-switch
.end method

.method static final groupLongNumbers$lambda$8(Lkotlin/jvm/functions/Function1;IZLkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "m"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-interface {p3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-interface {p3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    sget-object v2, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-direct {v2, v0}, Lsweet/tts/NumberProcessing;->onlyDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p3}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 167
    :cond_0
    invoke-direct {v2, v0, p1}, Lsweet/tts/NumberProcessing;->groupFromRight(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 168
    invoke-direct {v2, p0}, Lsweet/tts/NumberProcessing;->digitByDigitGroups(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, " "

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 169
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final isGlued$glue(C)Z
    .locals 4

    .line 225
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-_/."

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final onlyDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 389
    check-cast p1, Ljava/lang/CharSequence;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/Appendable;

    .line 390
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 391
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-gt v3, v2, :cond_0

    const/16 v3, 0x3a

    if-ge v2, v3, :cond_0

    .line 392
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_1
    check-cast p0, Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final otpWindowAfter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v0, p2, 0x28

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    move v2, p2

    .line 296
    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lsweet/tts/NumberProcessing;->otpBoundaryChars:[C

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOfAny$default(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 298
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final otpWindowBefore(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    add-int/lit8 p0, p2, -0x28

    const/4 v0, 0x0

    .line 279
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 282
    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lsweet/tts/NumberProcessing;->otpBoundaryChars:[C

    add-int/lit8 v2, p2, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOfAny$default(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_0

    return-object p0

    .line 284
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 288
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method static final reserveMobile$lambda$2(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 9

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lsweet/tts/NumberProcessing;->onlyDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string p0, "toCharArray(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, " "

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([CLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ue000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final rewriteCroreLakh$lambda$9(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    sget-object v2, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-direct {v2, v0}, Lsweet/tts/NumberProcessing;->onlyDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v4, v3, :cond_0

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 182
    invoke-direct {v2, v0}, Lsweet/tts/NumberProcessing;->formatIndianInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 181
    :cond_0
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final rewriteDeferredLongNumbers$lambda$7(I)Z
    .locals 1

    const/4 v0, 0x6

    if-gt v0, p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 146
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->longNumberMinDigits()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final rewriteLongNumbers$lambda$6(I)Z
    .locals 1

    .line 137
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->longNumberMinDigits()I

    move-result v0

    if-lt p0, v0, :cond_1

    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->croreLakhEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-gt v0, p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic rewriteOtp$default(Lsweet/tts/NumberProcessing;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 317
    :cond_0
    invoke-virtual {p0, p1, p2}, Lsweet/tts/NumberProcessing;->rewriteOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final rewriteOtp$lambda$15(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 10

    const-string v0, "m"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-interface {p4}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    .line 323
    invoke-interface {p4}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    if-lez v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 324
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    add-int/lit8 v3, v0, -0xf

    const/4 v4, 0x0

    .line 325
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "substring(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "toLowerCase(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    const-string v7, "rs"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v3, v7, v4, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "rs."

    invoke-static {v3, v7, v4, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "rupees"

    invoke-static {v3, v7, v4, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    if-lez v0, :cond_1

    .line 327
    const-string v3, "\u20b9$\u20ac\u00a3"

    check-cast v3, Ljava/lang/CharSequence;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v3, v7, v4, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 328
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0x10

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sget-object v3, Lsweet/tts/NumberProcessing;->otpDurationWords:Ljava/util/Set;

    check-cast v3, Ljava/lang/Iterable;

    .line 418
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 419
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 329
    invoke-static {v1, v5, v4, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 330
    :cond_4
    :goto_0
    sget-object v1, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v3}, Lsweet/tts/NumberProcessing;->isYearAfterMonth$app(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 331
    :cond_5
    invoke-virtual {v1, p0, v0, v2}, Lsweet/tts/NumberProcessing;->otpKeywordNear$app(Ljava/lang/String;II)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_8

    if-eqz p1, :cond_7

    .line 336
    invoke-virtual {v1, p0, v0, v2}, Lsweet/tts/NumberProcessing;->isGlued$app(Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_7

    .line 337
    sget-object p0, Lsweet/tts/NumberProcessing;->pendingOtpContext:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_7

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/32 v6, 0xea60

    cmp-long p1, v2, v6

    if-gtz p1, :cond_7

    .line 339
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iput-boolean v5, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 341
    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 422
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v4, p2, :cond_6

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 341
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    .line 423
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 424
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 341
    invoke-direct {v1, p1}, Lsweet/tts/NumberProcessing;->digitByDigitGroups(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 342
    sget-object p1, Lsweet/tts/OtpRepeat;->INSTANCE:Lsweet/tts/OtpRepeat;

    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lsweet/tts/OtpRepeat;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 346
    :cond_7
    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 348
    :cond_8
    iput-boolean v5, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 349
    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 426
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v4, p2, :cond_9

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 349
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    .line 427
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 428
    :cond_9
    check-cast p1, Ljava/util/List;

    .line 349
    invoke-direct {v1, p1}, Lsweet/tts/NumberProcessing;->digitByDigitGroups(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 353
    sget-object p1, Lsweet/tts/OtpRepeat;->INSTANCE:Lsweet/tts/OtpRepeat;

    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lsweet/tts/OtpRepeat;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 327
    :cond_a
    :goto_3
    invoke-interface {p4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final expandReservedMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->mobile13DigitPattern()Ljava/lang/String;

    move-result-object p0

    .line 101
    sget-object v0, Lsweet/tts/NumberProcessing;->reservedMobileRegex:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v1, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isGlued$app(Ljava/lang/String;II)Z
    .locals 0

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-lez p2, :cond_0

    sub-int/2addr p2, p0

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lsweet/tts/NumberProcessing;->isGlued$glue(C)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lsweet/tts/NumberProcessing;->isGlued$glue(C)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isYearAfterMonth$app(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "digits"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    .line 218
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p3, 0x76c

    if-lt p0, p3, :cond_2

    const/16 p3, 0x833

    if-le p0, p3, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    sget-object p0, Lsweet/tts/NumberProcessing;->monthBefore:Lkotlin/text/Regex;

    add-int/lit8 p3, p2, -0xe

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "substring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final otpKeywordNear$app(Ljava/lang/String;II)Z
    .locals 4

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1, p2}, Lsweet/tts/NumberProcessing;->otpWindowBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-direct {p0, p1, p3}, Lsweet/tts/NumberProcessing;->otpWindowAfter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 204
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "toLowerCase(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object p3, Lsweet/tts/NumberProcessing;->otpKeywords:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    .line 395
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    sget-object v2, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-direct {v2, p1, v1}, Lsweet/tts/NumberProcessing;->containsWholeWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {v2, v0, v1}, Lsweet/tts/NumberProcessing;->containsWholeWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 207
    :cond_2
    :goto_0
    sget-object p1, Lsweet/tts/NumberProcessing;->otpKeywordsCapitals:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 398
    instance-of p3, p1, Ljava/util/Collection;

    if-eqz p3, :cond_3

    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 399
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 207
    sget-object v0, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-direct {v0, p2, p3}, Lsweet/tts/NumberProcessing;->containsWholeWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {v0, p0, p3}, Lsweet/tts/NumberProcessing;->containsWholeWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final reserveMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->mobile13DigitPattern()Ljava/lang/String;

    move-result-object p0

    .line 88
    const-string v0, "none"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 89
    :cond_0
    sget-object p0, Lsweet/tts/NumberProcessing;->mobileRegex:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rewriteCroreLakh(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object p0, Lsweet/tts/NumberProcessing;->numberRegex:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rewriteDeferredLongNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lsweet/tts/NumberProcessing;->groupLongNumbers(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rewriteLongNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p1, v0}, Lsweet/tts/NumberProcessing;->groupLongNumbers(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rewriteOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->otpReadingEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 319
    sget-object p0, Lsweet/tts/NumberProcessing;->crossMessageApps:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 320
    :goto_0
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 321
    sget-object v1, Lsweet/tts/NumberProcessing;->otpCandidateRegex:Lkotlin/text/Regex;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1, p0, p2, v0}, Lsweet/tts/NumberProcessing$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_7

    .line 356
    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_7

    sget-object p0, Lsweet/tts/NumberProcessing;->otpKeywords:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 401
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 402
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    sget-object v2, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lsweet/tts/NumberProcessing;->containsWholeWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 357
    :cond_4
    :goto_1
    sget-object p0, Lsweet/tts/NumberProcessing;->otpKeywordsCapitals:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 404
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 405
    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    sget-object v2, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-direct {v2, p1, v0}, Lsweet/tts/NumberProcessing;->containsWholeWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 358
    :goto_2
    sget-object p0, Lsweet/tts/NumberProcessing;->pendingOtpContext:Ljava/util/HashMap;

    check-cast p0, Ljava/util/Map;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v1
.end method
