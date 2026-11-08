.class Lsweet/tts/SpeakerRoute$1;
.super Ljava/lang/Object;
.source "SpeakerRoute.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/SpeakerRoute;->makeToggle(Landroid/content/Context;)Landroid/widget/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 132
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lsweet/tts/SpeakerRoute;->setEnabled(Landroid/content/Context;Z)V

    .line 133
    return-void
.end method
