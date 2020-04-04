.class Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public LeoAction(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x58

    if-eq p1, v0, :cond_4

    const/16 v0, 0x63

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x104

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2c6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "bGVvLmFjdGlvbi5TeXN0ZW1TaHV0ZG93bg=="

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fusionleo/LeoX/server/RebootUtil;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "bGVvLmFjdGlvbi5ob3RSZWJvb3Q="

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fusionleo/LeoX/server/RebootUtil;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "bGVvLmFjdGlvbi5SZWNvdmVyeQ=="

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fusionleo/LeoX/server/RebootUtil;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "bGVvLmFjdGlvbi5Eb3dubG9hZA=="

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fusionleo/LeoX/server/RebootUtil;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "bGVvLmFjdGlvbi5yZWJvb3RTeXN0ZW0="

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fusionleo/LeoX/server/RebootUtil;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "bGVvLmFjdGlvbi5TeXN0ZW1VaQ=="

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/fusionleo/LeoX/server/RebootUtil;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleWifiAP(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "hotspot_state"

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoConfig;->mAppsManager:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->LeoComponetURL(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleclearAllNotifications(Landroid/content/Context;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->volumePanel(Landroid/content/Context;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleMobile(Landroid/content/Context;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->KillRecentAppsAll(Landroid/content/Context;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoConfig;->CleanProcesse(Landroid/content/Context;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleLastApp(Landroid/content/Context;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->launchBixbyVoice(Landroid/content/Context;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchBixbyHome()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleRingerVIBRATESoundModes(Landroid/content/Context;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleRingerSoundModes(Landroid/content/Context;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleRingerModes(Landroid/content/Context;)V

    return-void

    :pswitch_13
    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->playPause()V

    return-void

    :pswitch_14
    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->PreviousPiece()V

    return-void

    :pswitch_15
    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->NextTrack()V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "policy_control"

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleExpandedDesktop(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->openCamera(Landroid/content/Context;)V

    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleMipopModel(Landroid/content/Context;)V

    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->isOutdoorModel(Landroid/content/Context;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleFloatingModel(Landroid/content/Context;)V

    return-void

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleAirplane(Landroid/content/Context;)V

    return-void

    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleWifi(Landroid/content/Context;)V

    return-void

    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleFlashlight(Landroid/content/Context;)V

    return-void

    :pswitch_1e
    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleSettingsPanel()V

    return-void

    :pswitch_1f
    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleNotificationPanel()V

    return-void

    :pswitch_20
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoConfig;->mLeoManager:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->LeoManagerService(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_21
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoConfig;->mWIFIManager:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->LeoComponetURL(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "partial_screenshot"

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_23
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    return-void

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoConfig;->mVideoManager:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->LeoComponetURL(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_25
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoX/server/LeoConfig;->mSearch:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->LeoComponetURL(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    return-void

    :pswitch_27
    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->toggleSPlitScreens()V

    return-void

    :pswitch_28
    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->getRecentKeyEvent()V

    return-void

    :pswitch_29
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->screenOff(Landroid/content/Context;)V

    return-void

    :pswitch_2a
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->triggerVirtualKeypress(I)V

    return-void

    :pswitch_2b
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->triggerVirtualKeypress(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->ClearMemory(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->WeChatScan(Landroid/content/Context;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->wakeUpDevice(Landroid/content/Context;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->startAppsActivity(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/fusionleo/LeoX/server/LeoGlobalAction;->startAppsActivity(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoGlobalSetting;->mLeoGlobalService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bGVvX2FjdGlvbg=="

    invoke-static {v0}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "bGVvX2FwcA=="

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bGVvX3Byb2Nlc3NOYW1l"

    invoke-static {v2}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$ActionReceiver;->LeoAction(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
