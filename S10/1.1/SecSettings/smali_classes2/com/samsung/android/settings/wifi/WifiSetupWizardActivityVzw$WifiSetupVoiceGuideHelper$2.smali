.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$2;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiSettings$WifiSettingsListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->checkAndPlaySound()V

    :cond_0
    return-void
.end method
