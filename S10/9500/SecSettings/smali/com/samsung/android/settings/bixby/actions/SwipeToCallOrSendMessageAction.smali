.class public Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;
.super Ljava/lang/Object;
.source "SwipeToCallOrSendMessageAction.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isCMCAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "not_supported_device"

    goto :goto_0

    :cond_1
    const-string v0, "on"

    :goto_0
    return-object v0
.end method
