.class public final Lsweet/tts/VoiceCatalog$sortedForDisplay$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 VoiceCatalog.kt\nsweet/tts/VoiceCatalog\n*L\n1#1,328:1\n167#2:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 329
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-static {p0, p1}, Lsweet/tts/VoiceCatalog;->access$displaySortKey(Lsweet/tts/VoiceCatalog;Lcom/nuance/android/vocalizer/VocalizerVoice;)Ljava/lang/String;

    move-result-object p0

    .line 102
    check-cast p0, Ljava/lang/Comparable;

    check-cast p2, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 329
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-static {p1, p2}, Lsweet/tts/VoiceCatalog;->access$displaySortKey(Lsweet/tts/VoiceCatalog;Lcom/nuance/android/vocalizer/VocalizerVoice;)Ljava/lang/String;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
