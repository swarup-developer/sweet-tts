.class public final Lsweet/tts/PunctuationReader;
.super Ljava/lang/Object;
.source "PunctuationReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/PunctuationReader$Keep;,
        Lsweet/tts/PunctuationReader$Sym;,
        Lsweet/tts/PunctuationReader$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPunctuationReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PunctuationReader.kt\nsweet/tts/PunctuationReader\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,246:1\n1855#2,2:247\n*S KotlinDebug\n*F\n+ 1 PunctuationReader.kt\nsweet/tts/PunctuationReader\n*L\n191#1:247,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002-.B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0002J*\u0010\u001d\u001a\u00020\u00052\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J \u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005J\u001a\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0002J/\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0002\u0008&J\u0010\u0010\'\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u0018H\u0002J\u0015\u0010*\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008+J*\u0010,\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000f0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lsweet/tts/PunctuationReader;",
        "",
        "<init>",
        "()V",
        "RAW",
        "",
        "NONE",
        "SOME",
        "MOST",
        "ALL",
        "table",
        "",
        "",
        "Lsweet/tts/PunctuationReader$Sym;",
        "keepAtNone",
        "Lsweet/tts/PunctuationReader$Keep;",
        "NONE_DROP",
        "isWordChar",
        "",
        "c",
        "PAUSE_MARKS",
        "DOT_NAME",
        "Lkotlin/Triple;",
        "rank",
        "",
        "level",
        "nameLanguage",
        "lang",
        "resolvedVoice",
        "pick",
        "names",
        "nl",
        "s",
        "rewrite",
        "text",
        "stripForNone",
        "rewriteAt",
        "levelName",
        "rewriteAt$app",
        "isComma",
        "isCjk",
        "cp",
        "tidyCommas",
        "tidyCommas$app",
        "rewriteNamed",
        "Sym",
        "Keep",
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
.field public static final ALL:Ljava/lang/String; = "all"

.field private static final DOT_NAME:Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lsweet/tts/PunctuationReader;

.field public static final MOST:Ljava/lang/String; = "most"

.field public static final NONE:Ljava/lang/String; = "none"

.field private static final NONE_DROP:Ljava/lang/String; = "()[]{}\"\u201c\u201d`*#_^~|\\/<>=\u00a9\u00ae\u2122\u00a7\u00b6\u2022"

.field private static final PAUSE_MARKS:Ljava/lang/String; = "()[]{}\"\u201c\u201d;:"

.field public static final RAW:Ljava/lang/String; = "raw"

.field public static final SOME:Ljava/lang/String; = "some"

.field private static final keepAtNone:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lsweet/tts/PunctuationReader$Keep;",
            ">;"
        }
    .end annotation
.end field

.field private static final table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lsweet/tts/PunctuationReader$Sym;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lsweet/tts/PunctuationReader;

    invoke-direct {v0}, Lsweet/tts/PunctuationReader;-><init>()V

    sput-object v0, Lsweet/tts/PunctuationReader;->INSTANCE:Lsweet/tts/PunctuationReader;

    const/16 v0, 0x2f

    .line 46
    new-array v1, v0, [Lkotlin/Pair;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const/4 v4, 0x1

    const-string v5, "at"

    const-string v6, "\u090f\u091f \u0926 \u0930\u0947\u091f"

    const-string v7, "\u0627\u06cc\u0679"

    invoke-direct {v3, v4, v5, v6, v7}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v1, v6

    const/16 v3, 0x23

    .line 47
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    new-instance v9, Lsweet/tts/PunctuationReader$Sym;

    const-string v10, "\u0939\u0948\u0936"

    const-string v11, "\u06c1\u06cc\u0634"

    const-string v12, "hash"

    invoke-direct {v9, v4, v12, v10, v11}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v1, v4

    const/16 v8, 0x25

    .line 48
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    new-instance v10, Lsweet/tts/PunctuationReader$Sym;

    const-string v11, "\u0641\u06cc\u0635\u062f"

    const-string v12, "percent"

    const-string v13, "\u092a\u094d\u0930\u0924\u093f\u0936\u0924"

    invoke-direct {v10, v4, v12, v13, v11}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v1, v11

    const/16 v10, 0x26

    .line 49
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    new-instance v15, Lsweet/tts/PunctuationReader$Sym;

    move/from16 v16, v0

    const-string v0, "\u090f\u0902\u0921"

    move/from16 v17, v3

    const-string v3, "\u0627\u06cc\u0646\u0688"

    move/from16 v18, v6

    const-string v6, "and"

    invoke-direct {v15, v4, v6, v0, v3}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const/16 v0, 0x2a

    .line 50
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v6, Lsweet/tts/PunctuationReader$Sym;

    const-string v15, "\u0938\u094d\u091f\u093e\u0930"

    move/from16 v19, v8

    const-string v8, "\u0627\u0633\u0679\u0627\u0631"

    move/from16 v20, v10

    const-string v10, "star"

    invoke-direct {v6, v4, v10, v15, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v6, 0x4

    aput-object v0, v1, v6

    const/16 v0, 0x2b

    .line 51
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    new-instance v8, Lsweet/tts/PunctuationReader$Sym;

    const-string v10, "\u092a\u094d\u0932\u0938"

    const-string v15, "\u067e\u0644\u0633"

    move/from16 v21, v0

    const-string v0, "plus"

    invoke-direct {v8, v4, v0, v10, v15}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v8, 0x5

    aput-object v0, v1, v8

    const/16 v0, 0x3d

    .line 52
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v8, Lsweet/tts/PunctuationReader$Sym;

    const-string v10, "\u092c\u0930\u093e\u092c\u0930"

    const-string v15, "\u0628\u0631\u0627\u0628\u0631"

    const-string v3, "equals"

    invoke-direct {v8, v4, v3, v10, v15}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v1, v3

    .line 53
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u0938\u094d\u0932\u0948\u0936"

    const-string v10, "\u0633\u0644\u06cc\u0634"

    const-string v15, "slash"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const/16 v0, 0x5c

    .line 54
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u092c\u0948\u0915\u0938\u094d\u0932\u0948\u0936"

    const-string v10, "\u0628\u06cc\u06a9 \u0633\u0644\u06cc\u0634"

    const-string v15, "backslash"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const/16 v0, 0x3c

    .line 55
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u091b\u094b\u091f\u093e \u091a\u093f\u0939\u094d\u0928"

    const-string v10, "\u0686\u06be\u0648\u0679\u0627 \u0646\u0634\u0627\u0646"

    const-string v15, "less than"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const/16 v0, 0x3e

    .line 56
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u092c\u0921\u093c\u093e \u091a\u093f\u0939\u094d\u0928"

    const-string v10, "\u0628\u0691\u0627 \u0646\u0634\u0627\u0646"

    const-string v15, "greater than"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v1, v3

    const/16 v0, 0x5f

    .line 57
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u0905\u0902\u0921\u0930\u0938\u094d\u0915\u094b\u0930"

    const-string v10, "\u0627\u0646\u0688\u0631 \u0627\u0633\u06a9\u0648\u0631"

    const-string v15, "underscore"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v1, v3

    const/16 v0, 0x5e

    .line 58
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u0915\u0948\u0930\u0947\u091f"

    const-string v10, "\u06a9\u06cc\u0631\u0679"

    const-string v15, "caret"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v1, v3

    const/16 v0, 0x7e

    .line 59
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u091f\u093f\u0932\u094d\u0921\u0947"

    const-string v10, "\u0679\u0650\u0644\u0688\u06d2"

    const-string v15, "tilde"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v1, v3

    const/16 v0, 0x7c

    .line 60
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "\u092a\u093e\u0907\u092a"

    const-string v10, "\u067e\u0627\u0626\u067e"

    const-string v15, "bar"

    invoke-direct {v3, v4, v15, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xe

    aput-object v0, v1, v3

    const/16 v0, 0x28

    .line 62
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "open bracket"

    const-string v10, "\u092c\u094d\u0930\u0948\u0915\u0947\u091f \u0916\u0941\u0932\u093e"

    const-string v15, "\u0628\u0631\u06cc\u06a9\u0679 \u06a9\u06be\u0644\u0627"

    invoke-direct {v3, v11, v8, v10, v15}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v1, v3

    const/16 v0, 0x29

    .line 63
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "close bracket"

    const-string v10, "\u092c\u094d\u0930\u0948\u0915\u0947\u091f \u092c\u0902\u0926"

    move/from16 v16, v4

    const-string v4, "\u0628\u0631\u06cc\u06a9\u0679 \u0628\u0646\u062f"

    invoke-direct {v3, v11, v8, v10, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x10

    aput-object v0, v1, v3

    const/16 v0, 0x5b

    .line 64
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "open square bracket"

    const-string v10, "\u0938\u094d\u0915\u094d\u0935\u093e\u092f\u0930 \u092c\u094d\u0930\u0948\u0915\u0947\u091f \u0916\u0941\u0932\u093e"

    invoke-direct {v3, v11, v8, v10, v15}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x11

    aput-object v0, v1, v3

    const/16 v0, 0x5d

    .line 65
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "close square bracket"

    const-string v10, "\u0938\u094d\u0915\u094d\u0935\u093e\u092f\u0930 \u092c\u094d\u0930\u0948\u0915\u0947\u091f \u092c\u0902\u0926"

    invoke-direct {v3, v11, v8, v10, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v1, v3

    const/16 v0, 0x7b

    .line 66
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "open brace"

    const-string v10, "\u0915\u0930\u094d\u0932\u0940 \u092c\u094d\u0930\u0948\u0915\u0947\u091f \u0916\u0941\u0932\u093e"

    invoke-direct {v3, v11, v8, v10, v15}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x13

    aput-object v0, v1, v3

    const/16 v0, 0x7d

    .line 67
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v8, "close brace"

    const-string v10, "\u0915\u0930\u094d\u0932\u0940 \u092c\u094d\u0930\u0948\u0915\u0947\u091f \u092c\u0902\u0926"

    invoke-direct {v3, v11, v8, v10, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v1, v3

    const/16 v0, 0x22

    .line 68
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "quote"

    const-string v8, "\u0915\u094b\u091f"

    const-string v10, "\u0627\u0642\u062a\u0628\u0627\u0633"

    invoke-direct {v3, v11, v4, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x15

    aput-object v0, v1, v3

    const/16 v0, 0x201c

    .line 69
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "open quote"

    const-string v8, "\u0915\u094b\u091f \u0916\u0941\u0932\u093e"

    invoke-direct {v3, v11, v4, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v1, v3

    const/16 v0, 0x201d

    .line 70
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "close quote"

    const-string v8, "\u0915\u094b\u091f \u092c\u0902\u0926"

    invoke-direct {v3, v11, v4, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x17

    aput-object v0, v1, v3

    const/16 v0, 0x60

    .line 71
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u092c\u0948\u0915\u091f\u093f\u0915"

    const-string v8, "\u0628\u06cc\u06a9 \u0679\u06a9"

    const-string v10, "backtick"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v1, v3

    const/16 v0, 0x3b

    .line 72
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u0938\u0947\u092e\u0940\u0915\u094b\u0932\u0928"

    const-string v8, "\u0633\u06cc\u0645\u06cc \u06a9\u0648\u0644\u0646"

    const-string v10, "semicolon"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x19

    aput-object v0, v1, v3

    const/16 v0, 0x3a

    .line 73
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u0915\u094b\u0932\u0928"

    const-string v8, "\u06a9\u0648\u0644\u0646"

    const-string v10, "colon"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    const/16 v0, 0xa9

    .line 74
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u0915\u0949\u092a\u0940\u0930\u093e\u0907\u091f"

    const-string v8, "\u06a9\u0627\u067e\u06cc \u0631\u0627\u0626\u0679"

    const-string v10, "copyright"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    const/16 v0, 0xae

    .line 75
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u0930\u091c\u093f\u0938\u094d\u091f\u0930\u094d\u0921"

    const-string v8, "\u0631\u062c\u0633\u0679\u0631\u0688"

    const-string v10, "registered"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v1, v3

    const/16 v0, 0x2122

    .line 76
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u091f\u094d\u0930\u0947\u0921\u092e\u093e\u0930\u094d\u0915"

    const-string v8, "\u0679\u0631\u06cc\u0688 \u0645\u0627\u0631\u06a9"

    const-string v10, "trademark"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1d

    aput-object v0, v1, v3

    const/16 v0, 0xb0

    .line 77
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u0921\u093f\u0917\u094d\u0930\u0940"

    const-string v8, "\u0688\u06af\u0631\u06cc"

    const-string v10, "degrees"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1e

    aput-object v0, v1, v3

    const/16 v0, 0xa7

    .line 78
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u0938\u0947\u0915\u094d\u0936\u0928"

    const-string v8, "\u0633\u06cc\u06a9\u0634\u0646"

    const-string v10, "section"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1f

    aput-object v0, v1, v3

    const/16 v0, 0xb6

    .line 79
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u092a\u0948\u0930\u093e\u0917\u094d\u0930\u093e\u092b"

    const-string v8, "\u067e\u06cc\u0631\u0627\u06af\u0631\u0627\u0641"

    const-string v10, "paragraph"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x20

    aput-object v0, v1, v3

    const/16 v0, 0x2022

    .line 80
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u092c\u0941\u0932\u0947\u091f"

    const-string v8, "\u0628\u0644\u0679"

    const-string v10, "bullet"

    invoke-direct {v3, v11, v10, v4, v8}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x21

    aput-object v0, v1, v3

    const/16 v0, 0x2e

    .line 83
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "period"

    const-string v8, "\u092a\u0942\u0930\u094d\u0923 \u0935\u093f\u0930\u093e\u092e"

    const-string v10, "\u062e\u062a\u0645"

    const/4 v15, 0x3

    invoke-direct {v3, v15, v4, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x22

    aput-object v0, v1, v3

    const/16 v0, 0x2c

    .line 84
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lsweet/tts/PunctuationReader$Sym;

    const-string v4, "\u0915\u0949\u092e\u093e"

    move/from16 v23, v11

    const-string v11, "\u06a9\u0627\u0645\u0627"

    move-object/from16 v24, v1

    const-string v1, "comma"

    invoke-direct {v3, v15, v1, v4, v11}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v24, v17

    const/16 v0, 0x60c

    .line 85
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "\u0915\u0949\u092e\u093e"

    const-string v4, "\u06a9\u0627\u0645\u0627"

    const-string v11, "comma"

    invoke-direct {v1, v15, v11, v3, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v24, v1

    const/16 v0, 0x21

    .line 86
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "\u0935\u093f\u0938\u094d\u092e\u092f\u093e\u0926\u093f\u092c\u094b\u0927\u0915 \u091a\u093f\u0939\u094d\u0928"

    const-string v4, "\u0641\u062c\u0627\u0626\u06cc\u06c1 \u0646\u0634\u0627\u0646"

    const-string v11, "exclamation mark"

    invoke-direct {v1, v15, v11, v3, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v24, v19

    const/16 v0, 0x3f

    .line 87
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "\u092a\u094d\u0930\u0936\u094d\u0928 \u091a\u093f\u0939\u094d\u0928"

    const-string v4, "\u0633\u0648\u0627\u0644\u06cc\u06c1 \u0646\u0634\u0627\u0646"

    const-string v11, "question mark"

    invoke-direct {v1, v15, v11, v3, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v24, v20

    const/16 v0, 0x61f

    .line 88
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "\u092a\u094d\u0930\u0936\u094d\u0928 \u091a\u093f\u0939\u094d\u0928"

    const-string v4, "\u0633\u0648\u0627\u0644\u06cc\u06c1 \u0646\u0634\u0627\u0646"

    const-string v11, "question mark"

    invoke-direct {v1, v15, v11, v3, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, v24, v1

    const/16 v0, 0x2d

    .line 89
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "dash"

    const-string v4, "\u0921\u0948\u0936"

    const-string v11, "\u0688\u06cc\u0634"

    invoke-direct {v1, v15, v3, v4, v11}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v24, v1

    const/16 v0, 0x2013

    .line 90
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    invoke-direct {v1, v15, v3, v4, v11}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, v24, v1

    const/16 v0, 0x2014

    .line 91
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    invoke-direct {v1, v15, v3, v4, v11}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v24, v1

    const/16 v0, 0x2026

    .line 92
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "\u0924\u0940\u0928 \u092c\u093f\u0902\u0926\u0941"

    const-string v4, "\u062a\u06cc\u0646 \u0646\u0642\u0637\u06d2"

    const-string v11, "ellipsis"

    invoke-direct {v1, v15, v11, v3, v4}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v24, v21

    const/16 v0, 0x964

    .line 93
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "full stop"

    invoke-direct {v1, v15, v3, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v24, v1

    const/16 v0, 0x965

    .line 94
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "double full stop"

    const-string v4, "\u0926\u094b\u0939\u0930\u093e \u092a\u0942\u0930\u094d\u0923 \u0935\u093f\u0930\u093e\u092e"

    invoke-direct {v1, v15, v3, v4, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, v24, v1

    const/16 v0, 0x6d4

    .line 95
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lsweet/tts/PunctuationReader$Sym;

    const-string v3, "full stop"

    invoke-direct {v1, v15, v3, v8, v10}, Lsweet/tts/PunctuationReader$Sym;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, v24, v1

    .line 44
    invoke-static/range {v24 .. v24}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsweet/tts/PunctuationReader;->table:Ljava/util/Map;

    const/4 v0, 0x5

    .line 101
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lsweet/tts/PunctuationReader$Keep;

    const-string v3, "\u0641\u06cc\u0635\u062f"

    invoke-direct {v1, v12, v13, v3}, Lsweet/tts/PunctuationReader$Keep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v18

    .line 102
    new-instance v1, Lsweet/tts/PunctuationReader$Keep;

    const-string v3, "\u090f\u091f"

    invoke-direct {v1, v5, v3, v7}, Lsweet/tts/PunctuationReader$Keep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v16

    .line 103
    new-instance v1, Lsweet/tts/PunctuationReader$Keep;

    const-string v2, "\u090f\u0902\u0921"

    const-string v3, "\u0627\u06cc\u0646\u0688"

    const-string v4, "and"

    invoke-direct {v1, v4, v2, v3}, Lsweet/tts/PunctuationReader$Keep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v23

    .line 104
    new-instance v1, Lsweet/tts/PunctuationReader$Keep;

    const-string v2, "\u092a\u094d\u0932\u0938"

    const-string v3, "\u067e\u0644\u0633"

    const-string v4, "plus"

    invoke-direct {v1, v4, v2, v3}, Lsweet/tts/PunctuationReader$Keep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v22, 0x3

    aput-object v1, v0, v22

    const/16 v1, 0xb0

    .line 105
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v2, Lsweet/tts/PunctuationReader$Keep;

    const-string v3, "\u0921\u093f\u0917\u094d\u0930\u0940"

    const-string v4, "\u0688\u06af\u0631\u06cc"

    const-string v5, "degrees"

    invoke-direct {v2, v5, v3, v4}, Lsweet/tts/PunctuationReader$Keep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 100
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsweet/tts/PunctuationReader;->keepAtNone:Ljava/util/Map;

    .line 114
    new-instance v0, Lkotlin/Triple;

    const-string v1, "\u0921\u0949\u091f"

    const-string v2, "\u0688\u0627\u0679"

    const-string v3, "dot"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lsweet/tts/PunctuationReader;->DOT_NAME:Lkotlin/Triple;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isCjk(I)Z
    .locals 1

    .line 182
    invoke-static {p1}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lsweet/tts/PunctuationReader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Character$UnicodeScript;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method

.method private final isComma(C)Z
    .locals 0

    const/16 p0, 0x2c

    if-eq p1, p0, :cond_1

    const/16 p0, 0x60c

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final isWordChar(C)Z
    .locals 0

    .line 109
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final nameLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    const-string p0, "emoji"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "number"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 127
    :cond_0
    sget-object p0, Lsweet/tts/EmojiDictionary;->INSTANCE:Lsweet/tts/EmojiDictionary;

    invoke-virtual {p0, p1, p2}, Lsweet/tts/EmojiDictionary;->dictionaryLanguageFor$app(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string p2, "hi"

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "mai"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "kok"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_2
    const-string p0, "doi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_3
    const-string p0, "brx"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_4
    const-string p0, "bho"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_5
    const-string p0, "ur"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :sswitch_6
    const-string p0, "sa"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_7
    const-string p0, "ne"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_8
    const-string p0, "mr"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_9
    const-string p0, "ks"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return-object p2

    :sswitch_b
    const-string p0, "en"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xca9 -> :sswitch_b
        0xd01 -> :sswitch_a
        0xd68 -> :sswitch_9
        0xda5 -> :sswitch_8
        0xdb7 -> :sswitch_7
        0xe4e -> :sswitch_6
        0xe9d -> :sswitch_5
        0x17ce9 -> :sswitch_4
        0x17e28 -> :sswitch_3
        0x1853e -> :sswitch_2
        0x19f87 -> :sswitch_1
        0x1a555 -> :sswitch_0
    .end sparse-switch
.end method

.method private final pick(Lsweet/tts/PunctuationReader$Sym;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 141
    const-string p0, "hi"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lsweet/tts/PunctuationReader$Sym;->getHi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ur"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lsweet/tts/PunctuationReader$Sym;->getUr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lsweet/tts/PunctuationReader$Sym;->getEn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final pick(Lkotlin/Triple;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 138
    const-string p0, "hi"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "ur"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private final rank(Ljava/lang/String;)I
    .locals 1

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x179a1

    if-eq p0, v0, :cond_3

    const v0, 0x333b83

    if-eq p0, v0, :cond_1

    const v0, 0x35f4f4

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "some"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "most"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const-string p0, "all"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x3

    return p0
.end method

.method private final rewriteNamed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 211
    invoke-direct {v0, v2, v3}, Lsweet/tts/PunctuationReader;->nameLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 212
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_e

    .line 214
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 215
    sget-object v8, Lsweet/tts/PunctuationReader;->table:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsweet/tts/PunctuationReader$Sym;

    if-nez v8, :cond_1

    .line 216
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move/from16 v8, p1

    goto/16 :goto_8

    :cond_1
    if-lez v6, :cond_2

    add-int/lit8 v10, v6, -0x1

    .line 217
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_2

    :cond_2
    const/16 v10, 0x20

    :goto_2
    add-int/lit8 v11, v6, 0x1

    .line 218
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_3

    :cond_3
    const/16 v11, 0x20

    .line 219
    :goto_3
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    move v12, v5

    .line 220
    :goto_4
    invoke-virtual {v8}, Lsweet/tts/PunctuationReader$Sym;->getLevel()I

    move-result v14

    .line 221
    invoke-direct {v0, v8, v2}, Lsweet/tts/PunctuationReader;->pick(Lsweet/tts/PunctuationReader$Sym;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 227
    invoke-virtual {v8}, Lsweet/tts/PunctuationReader$Sym;->getLevel()I

    move-result v8

    const/4 v13, 0x3

    const/4 v9, 0x2

    if-eq v8, v13, :cond_6

    const-string v8, "()[]{}\"\u201c\u201d;:"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    invoke-static {v8, v7, v5, v9, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move v13, v5

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v13, 0x1

    :goto_6
    const/16 v8, 0x2c

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_9

    goto :goto_7

    :cond_7
    if-eqz v12, :cond_8

    .line 230
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 231
    :cond_8
    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 232
    sget-object v8, Lsweet/tts/PunctuationReader;->DOT_NAME:Lkotlin/Triple;

    invoke-direct {v0, v8, v2}, Lsweet/tts/PunctuationReader;->pick(Lkotlin/Triple;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move v13, v5

    move v14, v9

    goto :goto_7

    :cond_9
    if-eqz v12, :cond_a

    .line 235
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    :goto_7
    move/from16 v8, p1

    if-le v14, v8, :cond_b

    .line 237
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 239
    :cond_b
    invoke-direct {v0, v7}, Lsweet/tts/PunctuationReader;->isComma(C)Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0x20

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    const/16 v9, 0x20

    .line 240
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_d

    .line 241
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 243
    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final stripForNone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 151
    sget-object v5, Lsweet/tts/PunctuationReader;->keepAtNone:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsweet/tts/PunctuationReader$Keep;

    const/16 v6, 0x20

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "hi"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lsweet/tts/PunctuationReader$Keep;->getHi()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string v7, "ur"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lsweet/tts/PunctuationReader$Keep;->getUr()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lsweet/tts/PunctuationReader$Keep;->getEn()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 155
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 156
    :cond_3
    const-string v5, "()[]{}\"\u201c\u201d`*#_^~|\\/<>=\u00a9\u00ae\u2122\u00a7\u00b6\u2022"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v4, v2, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    if-lez v3, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lsweet/tts/PunctuationReader;->isWordChar(C)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lsweet/tts/PunctuationReader;->isWordChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/16 v5, 0x964

    if-eq v4, v5, :cond_a

    const/16 v5, 0x965

    if-eq v4, v5, :cond_a

    const/16 v5, 0x6d4

    if-ne v4, v5, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0x61f

    if-ne v4, v5, :cond_7

    const/16 v4, 0x3f

    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/16 v5, 0x60c

    const/16 v6, 0x2c

    if-ne v4, v5, :cond_8

    .line 161
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const/16 v5, 0x2026

    if-ne v4, v5, :cond_9

    .line 162
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 163
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    :goto_2
    const/16 v4, 0x2e

    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 166
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final rewrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->punctuationLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lsweet/tts/PunctuationReader;->rewriteAt$app(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rewriteAt$app(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "levelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    const-string v0, "raw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 172
    :cond_0
    const-string v0, "none"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p4}, Lsweet/tts/PunctuationReader;->nameLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lsweet/tts/PunctuationReader;->stripForNone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsweet/tts/PunctuationReader;->tidyCommas$app(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Lsweet/tts/PunctuationReader;->rank(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    .line 175
    invoke-direct {p0, p1, p2, p3, p4}, Lsweet/tts/PunctuationReader;->rewriteNamed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsweet/tts/PunctuationReader;->tidyCommas$app(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lsweet/tts/PunctuationReader;->rewriteNamed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object p2
.end method

.method public final tidyCommas$app(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    move v2, v1

    .line 247
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 191
    sget-object v4, Lsweet/tts/PunctuationReader;->INSTANCE:Lsweet/tts/PunctuationReader;

    invoke-direct {v4, v3}, Lsweet/tts/PunctuationReader;->isComma(C)Z

    move-result v3

    if-eqz v3, :cond_9

    move v2, v1

    .line 247
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 191
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 195
    invoke-direct {p0, v3}, Lsweet/tts/PunctuationReader;->isComma(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v4, v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_1
    move v4, v6

    :goto_3
    if-lez v1, :cond_2

    add-int/lit8 v5, v1, -0x1

    .line 197
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 198
    :cond_2
    :goto_4
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-static {v5}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v7

    invoke-static {v7}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    .line 199
    :cond_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v5}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v7

    invoke-direct {p0, v7}, Lsweet/tts/PunctuationReader;->isComma(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-direct {p0, v7}, Lsweet/tts/PunctuationReader;->isCjk(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 203
    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_5

    .line 204
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 207
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    return-object p1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-object p1
.end method
