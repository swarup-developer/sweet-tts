.class final synthetic Lsweet/tts/MainActivity$onCreate$8;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
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


# instance fields
.field final synthetic $levelLabels:[Ljava/lang/String;

.field final synthetic $levelValues:[Ljava/lang/String;

.field final synthetic $punctuationButton:Landroid/widget/Button;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 6

    iput-object p1, p0, Lsweet/tts/MainActivity$onCreate$8;->$levelLabels:[Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/MainActivity$onCreate$8;->$levelValues:[Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/MainActivity$onCreate$8;->$punctuationButton:Landroid/widget/Button;

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v4, "onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, "refreshPunctuationButton"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lsweet/tts/MainActivity$onCreate$8;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 57
    iget-object v0, p0, Lsweet/tts/MainActivity$onCreate$8;->$levelLabels:[Ljava/lang/String;

    iget-object v1, p0, Lsweet/tts/MainActivity$onCreate$8;->$levelValues:[Ljava/lang/String;

    iget-object p0, p0, Lsweet/tts/MainActivity$onCreate$8;->$punctuationButton:Landroid/widget/Button;

    invoke-static {v0, v1, p0}, Lsweet/tts/MainActivity;->access$onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V

    return-void
.end method
