.class public final synthetic Lsweet/tts/LoggingKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/LoggingKt$$ExternalSyntheticLambda7;->f$0:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/LoggingKt$$ExternalSyntheticLambda7;->f$0:Landroid/content/pm/PackageManager;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p0, p1}, Lsweet/tts/LoggingKt;->deviceReportLines$lambda$16$lambda$14(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
