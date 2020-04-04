.class Lcom/samsung/android/settings/wifi/ListAnimationController$3;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->access$100(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings.VI"

    const-string v1, "show refresh UI. force start scan manually"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->access$200(Lcom/samsung/android/settings/wifi/ListAnimationController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1212c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->access$200(Lcom/samsung/android/settings/wifi/ListAnimationController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12092f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->access$100(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settingslib/wifi/WifiTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->forceScan()V

    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->semWifiApBleClientRole(Z)Z

    :cond_0
    return-void
.end method
