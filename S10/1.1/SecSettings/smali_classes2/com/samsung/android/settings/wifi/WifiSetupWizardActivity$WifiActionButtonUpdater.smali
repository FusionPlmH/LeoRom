.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
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

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/content/Intent;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    const-string v0, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "WifiSetupWizard"

    const-string v2, "Wi-Fi setup wizard for samsung account"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mSetupWizardForSamsungAccount:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mSetupWizardForSamsungAccount:Z

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    const-string v1, "wifi.test.skip"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mDebugSkipDialog:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mDebugSkipDialog:Z

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    return-void
.end method

.method private isNetworkRequired()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->isNetworkRequired()Z

    move-result v0

    const-string v1, "WifiSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isNorthAmericaOperator()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "US"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    return v1

    :cond_0
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mDebugSkipDialog:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    nop

    :cond_3
    :goto_0
    return v1
.end method

.method private needToCheckInternetAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCheckingOnGoing:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiInternetAvailable:Z

    return v0
.end method

.method private updateButton(ZZ)V
    .locals 3

    const-string v0, "WifiSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButton isNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", viewEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const v1, 0x7f120f15

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const v1, 0x7f121f18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndShowNetworkRestrictionDialog()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->showFRPWarningDialog()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndUpdateButton(Z)V

    :cond_0
    return-void
.end method

.method public checkAndUpdateButton(Z)V
    .locals 5

    const-string v0, "WifiSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndUpdateButton isNetworkAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->needToCheckInternetAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "WifiSetupWizard"

    const-string v4, "check internet service available or not"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mSetupWizardForSamsungAccount:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    :goto_1
    goto :goto_3

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mSetupWizardForSamsungAccount:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNorthAmericaOperator()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    :goto_3
    return-void
.end method

.method public enforceConnectivity()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mSetupWizardForSamsungAccount:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public possibleGoToNextStep()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNorthAmericaOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->showSkipDialog()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
