.class Lcom/samsung/android/settings/ConnectionsUtils$3;
.super Ljava/lang/Object;
.source "ConnectionsUtils.java"

# interfaces
.implements Lcom/sec/epdg/EpdgManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    const-string v0, "Connections_Utils"

    const-string v1, "mEpdgMgr is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->access$000()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "check_epdg_connect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->access$000()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    const-string v1, "WFCSETTINGSMENU"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/sec/epdg/EpdgManager;->checkEpdgExtraFeature(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->access$000()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    const-string v1, "WFCSETTINGSMENU"

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/EpdgManager;->checkEpdgExtraFeature(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    nop

    :cond_1
    :goto_0
    sput-boolean v2, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportWFCSETTINGSMENU:Z

    goto :goto_1

    :cond_2
    const-string v0, "Connections_Utils"

    const-string v1, "mEpdgMgr is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "Connections_Utils"

    const-string v1, "mEpdgMgr is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
