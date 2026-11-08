.class public final synthetic Lsweet/tts/LongPressPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/LongPressPreference;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/LongPressPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/LongPressPreference$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/LongPressPreference;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/LongPressPreference$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/LongPressPreference;

    invoke-static {p0, p1}, Lsweet/tts/LongPressPreference;->onBindViewHolder$lambda$0(Lsweet/tts/LongPressPreference;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
