.class public Lcom/samsung/android/settings/bixby/actions/ScreenModeAction;
.super Ljava/lang/Object;
.source "ScreenModeAction.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/ScreenModeAction;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "not_supported_device"

    :goto_0
    return-object v0
.end method
