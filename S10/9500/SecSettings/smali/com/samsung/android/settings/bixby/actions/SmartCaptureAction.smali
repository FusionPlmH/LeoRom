.class public Lcom/samsung/android/settings/bixby/actions/SmartCaptureAction;
.super Ljava/lang/Object;
.source "SmartCaptureAction.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/SmartCaptureAction;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/SmartCaptureAction;->context:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.scrollcapture"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/SmartCaptureAction;->context:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.smartcapture"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "not_supported_device"

    goto :goto_0

    :cond_0
    const-string v0, "on"

    :goto_0
    return-object v0
.end method
