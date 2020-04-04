.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceGuideButtonClicked(Z)V
    .locals 0

    return-void
.end method

.method public onVoicePlayerConnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiSetupVoiceGuideHelper;->playInitialSound()V

    return-void
.end method

.method public onVoicePlayerDisconnected()V
    .locals 0

    return-void
.end method
