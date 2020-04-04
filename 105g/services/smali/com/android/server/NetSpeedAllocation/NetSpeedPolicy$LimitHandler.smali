.class public Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;
.super Landroid/os/Handler;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitHandler"
.end annotation


# instance fields
.field speed:I

.field final synthetic this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private resetMessage(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->removeMessages(I)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const-string v0, "NetSpeedPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_10

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-wide/16 v4, 0x2710

    const/4 v6, -0x1

    const-wide/16 v7, 0xbb8

    const-wide/16 v9, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->updateSCPMParametersFromDB()V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->setWhiteListLimitRule()V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, v11, v9, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    invoke-direct {p0, v12, v9, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const-string v1, "LCD off or VPN_CON or REMOVE ALL"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->cscEnableDNBA:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->refreshTraffic()V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveAllAppsNetTraf()V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, v11, v7, v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :cond_1
    :goto_0
    const-string v0, "NetSpeedPolicy"

    const-string/jumbo v1, "wifi not connect or vpn connect"

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->checkFGBGAppChange()I

    move-result v0

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->cscEnableDNBA:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "NetSpeedPolicy"

    const-string v2, "Limit BG app to FG,release limit"

    invoke-static {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->refreshTraffic()V

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isControlBgTotalSpeed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$100(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$202(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;I)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveAllAppsNetTraf()V

    invoke-direct {p0, v12, v9, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    invoke-direct {p0, v11, v7, v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    goto/16 :goto_3

    :cond_6
    :goto_1
    const-string v0, "NetSpeedPolicy"

    const-string v1, " Screen off,wifi not connect or vpn connect "

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->refreshTraffic()V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, v12, v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    invoke-virtual {v0, v3, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateFGBGAppsNetSpeed(IZ)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Z

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isControlBgTotalSpeed:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->refreshTraffic()V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    invoke-virtual {v0, v12, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateFGBGAppsNetSpeed(IZ)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, v11, v7, v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFGAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NetSpeedPolicy"

    const-string/jumbo v1, "fg app list size is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const-string/jumbo v1, "fg app list is NULL"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, v12, v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v11, v9, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$200(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)I

    move-result v0

    if-ne v0, v6, :cond_a

    const-string v0, "NetSpeedPolicy"

    const-string/jumbo v1, "mLastFGTotalSpeed is 0."

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFgTotalSpeed()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$202(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;I)I

    :cond_a
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getExtraspeed()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getAvgPhySpeed()I

    move-result v1

    div-int/2addr v1, v12

    if-le v0, v1, :cond_b

    const-string v0, "NetSpeedPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reFillBGAppList(),FG total net speed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFgTotalSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "BG total net speed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBgTotalSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " real total speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getAvgPhySpeed  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getAvgPhySpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->reFillBGAppList()V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "BGAppListEmpty"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBGAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "NetSpeedPolicy"

    const-string v1, "bg app size is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "BGAppListEmpty"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$100(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Z)V

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->cscEnableDNBA:Z

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    iput v2, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->refreshTraffic()V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveAllAppsNetTraf()V

    invoke-direct {p0, v12, v9, v10}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    invoke-direct {p0, v11, v7, v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    goto :goto_3

    :cond_f
    :goto_2
    const-string v0, "NetSpeedPolicy"

    const-string v1, "Screen off!"

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->uid:I

    const-string v2, "MSG_REMOVE_BG_SPEED_LIMIT"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAppLimit(ILjava/lang/String;)V

    nop

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method