.class public Lcom/samsung/android/settings/bixby/actions/DualMessengerAction;
.super Ljava/lang/Object;
.source "DualMessengerAction.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/DualMessengerAction;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/DualMessengerAction;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    const-string v0, "not_supported_device"

    goto :goto_0

    :cond_2
    const-string v0, "on"

    :goto_0
    return-object v0
.end method
