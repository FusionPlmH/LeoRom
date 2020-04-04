.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSetupVoiceGuideHelper"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

.field private mUseWlanSound:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->mListener:Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->mUseWlanSound:Z

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->playNetworkConnectedSound()V

    return-void
.end method

.method private playInternetAvailableSound()V
    .locals 2

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "VoiceGuider - internet service available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const-string v1, "2_wifi_3_S"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$2500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/String;)V

    return-void
.end method

.method private playNetworkConnectedSound()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->playInternetAvailableSound()V

    return-void
.end method


# virtual methods
.method public checkAndPlaySound()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getListener()Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->mListener:Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;

    return-object v0
.end method

.method public playChooseNetworkSound()V
    .locals 2

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "VoiceGuider - choose network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->mUseWlanSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const-string v1, "2_Wlan_start"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$2300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const-string v1, "2_Wi-Fi_start"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$2400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public playInitialSound()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1700(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "VoiceGuider - initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->playChooseNetworkSound()V

    goto :goto_0

    :cond_0
    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "VoiceGuider - network is connected, skip initial sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
