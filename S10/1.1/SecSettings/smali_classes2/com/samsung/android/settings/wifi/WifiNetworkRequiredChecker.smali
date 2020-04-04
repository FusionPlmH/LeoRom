.class Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;
.super Ljava/lang/Object;
.source "WifiNetworkRequiredChecker.java"


# static fields
.field private static final DEV:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mFlagWarningDialog:Z

.field private final mIsDebugState:Z

.field private final mIsNetworkRequiredByGoogle:Z

.field private final mIsNetworkRequiredByKme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->DEV:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->isActivatedGoogleFRP()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsNetworkRequiredByGoogle:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_network_required_by_kme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsNetworkRequiredByKme:Z

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->DEV:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    const-string v1, "wifi.test.frp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsDebugState:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsDebugState:Z

    :goto_0
    return-void
.end method

.method private isActivatedGoogleFRP()Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WifiSetupWizard"

    const-string v3, "isActivatedGoogleFRP - service is not Connected!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v2

    const-string v3, "WifiSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isActivatedGoogleFRP - getServiceSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_1

    const-string v3, "WifiSetupWizard"

    const-string v4, "Google FRP is activated"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    const-string v3, "WifiSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isActivatedGoogleFRP - isActivated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isNetworkRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsDebugState:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsNetworkRequiredByGoogle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsNetworkRequiredByKme:Z

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

.method public showFRPWarningDialog()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mFlagWarningDialog:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSetupWizard"

    const-string v1, "already showing FRP dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsNetworkRequiredByKme:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c63

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Knox Cloud Service"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f121e28

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->newInstance(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mFlagWarningDialog:Z

    const-string v1, "WifiSetupWizard"

    const-string v2, "show FRP popup"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showSkipDialog()V
    .locals 3

    const v0, 0x7f121c73

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
