.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiActionButtonUpdater"
.end annotation


# instance fields
.field private final mDebugSkipDialog:Z

.field private mIsNorthAmericaOperator:I

.field private mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

.field private final mSetupWizardForSamsungAccount:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/content/Intent;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    const-string v0, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "WifiSetupWizardVzw"

    const-string v2, "Wi-Fi setup wizard for samsung account"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;->mSetupWizardForSamsungAccount:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;->mSetupWizardForSamsungAccount:Z

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    const-string v1, "wifi.test.skip"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;->mDebugSkipDialog:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;->mDebugSkipDialog:Z

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    return-void
.end method
