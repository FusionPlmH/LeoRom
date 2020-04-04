.class Lcom/android/server/SecExternalDisplayIntents$1;
.super Landroid/content/BroadcastReceiver;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayIntents;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayIntents;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-static {v2}, Lcom/android/server/SecExternalDisplayIntents;->access$000(Lcom/android/server/SecExternalDisplayIntents;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "SecExternalDisplayIntents_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent Recieved ..  -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "BroadCast Map value - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/server/SecExternalDisplayIntents$2;->$SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    invoke-static {v2}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v5, "Exited KNOX_DESKTOP_MODE"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v5, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v5}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v3

    if-ne v3, v4, :cond_14

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    goto/16 :goto_0

    :pswitch_1
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_2

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "Entered KNOX_DESKTOP_MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    goto/16 :goto_0

    :pswitch_2
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_3

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "Entered Kddi auShareLink disconnect case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v3, v5}, Lcom/android/server/SecExternalDisplayIntents;->handleKddiAuShareLink(Z)Z

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_4

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v5, "Entered Kddi auShareLink connect case"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayIntents;->handleKddiAuShareLink(Z)Z

    goto/16 :goto_0

    :pswitch_4
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_5

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered Presentation Stop Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v5}, Lcom/android/server/SecExternalDisplayService;->handlePresentation(Z)V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_6

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v5, "entered Presentation Start Case"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayService;->handlePresentation(Z)V

    goto/16 :goto_0

    :pswitch_6
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_7

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "Entered Video Stop Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v5}, Lcom/android/server/SecExternalDisplayService;->handleVideo(Z)Z

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_8

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v5, "Entered Video Start Case"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayService;->handleVideo(Z)Z

    goto/16 :goto_0

    :pswitch_8
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_14

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered Screen Unlocked Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_9
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_14

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered ScreenLock Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_a
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_9

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered SmartDock Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v3, "android.intent.extra.device_state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "sys.hmt.connected"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "SecExternalDisplayIntents_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " HMT Status :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_14

    iget-object v5, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v5, v5, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v5, v3}, Lcom/android/server/SecExternalDisplayService;->handleSmartDockConnection(I)Z

    goto/16 :goto_0

    :pswitch_b
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_a

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v6, "entered ScreenRecorder Case"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v3, 0x0

    const-string v6, "IsRunning"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    const-string v6, "SecExternalDisplayIntents_Java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ScreenRecorder State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "run"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v5, v5, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v6, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v6}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "stop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v4, v4, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v6, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v6}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_0

    :pswitch_c
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_c

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered SideSync DC Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v3, v5}, Lcom/android/server/SecExternalDisplayIntents;->handleSideSyncConnection(Z)Z

    goto/16 :goto_0

    :pswitch_d
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_d

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v5, "entered SideSync Connected Case"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayIntents;->handleSideSyncConnection(Z)Z

    goto/16 :goto_0

    :pswitch_e
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_e

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered Camera Stop Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v5}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto/16 :goto_0

    :pswitch_f
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_f

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v5, "entered Camera Start Case"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v3, v3, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto :goto_0

    :pswitch_10
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_10

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered WFD Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v4, v4, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v4, v3}, Lcom/android/server/SecExternalDisplayService;->handleWFDConnection(I)Z

    goto :goto_0

    :pswitch_11
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_11

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered RVF Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v3, "running"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v4, v3}, Lcom/android/server/SecExternalDisplayIntents;->handleRVFConnection(Z)Z

    goto :goto_0

    :pswitch_12
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_12

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered Camera Stop Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v4, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayIntents;->handleCameraConnection(I)Z

    goto :goto_0

    :pswitch_13
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_13

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered Camera Start Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v4, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->START:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayIntents;->handleCameraConnection(I)Z

    goto :goto_0

    :pswitch_14
    sget-boolean v3, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v3, :cond_14

    const-string v3, "SecExternalDisplayIntents_Java"

    const-string v4, "entered HDMI Case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SecExternalDisplayIntents_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
