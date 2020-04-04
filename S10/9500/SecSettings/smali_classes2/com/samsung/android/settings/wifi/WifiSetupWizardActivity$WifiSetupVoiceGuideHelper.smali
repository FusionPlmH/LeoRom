.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSetupVoiceGuideHelper"
.end annotation


# instance fields
.field private mUseWlanSound:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;->mUseWlanSound:Z

    return-void
.end method


# virtual methods
.method public playChooseNetworkSound()V
    .locals 2

    const-string v0, "WifiSetupWizard"

    const-string v1, "VoiceGuider - choose network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;->mUseWlanSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const-string v1, "SE10_0_wlan"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const-string v1, "SE10_0_wifi"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1700(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public playInitialSound()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiSetupWizard"

    const-string v1, "VoiceGuider - initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiSetupVoiceGuideHelper;->playChooseNetworkSound()V

    goto :goto_0

    :cond_0
    const-string v0, "WifiSetupWizard"

    const-string v1, "VoiceGuider - network is connected, skip initial sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
