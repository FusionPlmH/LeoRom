.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$1;
.super Landroid/os/Handler;
.source "WifiSetupWizardActivityVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1700(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->access$2200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;)V

    :cond_1
    :goto_0
    return-void
.end method
