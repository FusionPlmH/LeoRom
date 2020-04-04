.class public Lcom/samsung/android/settings/wifi/WifiWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiWarning.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DBG:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field private extra_type:I

.field private isAirplaneMode:Z

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field private mWifiEnableCheck:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private req_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isAirplaneMode:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiWarning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$1;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->disableTetheringAndEnableWiFi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastToLaunchMHS()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastCancelEnablingWifi()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiWarning;->handleWifiApStateChangedForP2p(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/wifi/WifiWarning;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/WifiWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiWarning;->handleWifiP2pStateChanged(I)V

    return-void
.end method

.method static synthetic access$600()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/WifiWarning;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiWarning;->putIntSharedPref(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->showProgressDialog()V

    return-void
.end method

.method private disableTetheringAndEnableWiFi()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_0
    const-wide/16 v0, 0x258

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWarning"

    const-string v1, "dismissProgressDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void
.end method

.method private getBoolSharedPref(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string v2, "SAMSUNG_WIFIENABLEWARNING"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3

    const-string v0, "WifiWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received MHS state changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->dismissProgressDialog()V

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiWarning;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v1, 0x7f120e5a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isAirplaneMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method private handleWifiApStateChangedForP2p(I)V
    .locals 3

    const-string v0, "WifiWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received MHS state changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :cond_0
    return-void
.end method

.method private handleWifiP2pStateChanged(I)V
    .locals 3

    const-string v0, "WifiWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received P2p state changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method private putIntSharedPref(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string v1, "SAMSUNG_WIFIENABLEWARNING"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private sendBroadcastCancelEnablingWifi()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWarning"

    const-string v1, "sendBroadcastCancelEnablingWifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendBroadcastToLaunchMHS()V
    .locals 3

    const-string v0, "WifiWarning"

    const-string v1, "startActivity for WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v2, 0x7f121d21

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a0177

    if-ne v0, v1, :cond_0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    const-string v0, "WifiWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "WifiWarning"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v2, "wifip2p"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v2, :cond_1

    const-string v2, "WifiWarning"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    :cond_0
    const-string v2, "WifiWarning"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->setupAlert()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    const v2, 0x7f1301b9

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->setTheme(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "req_type"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    const-string v5, "extra_type"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const-string v5, "WifiWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try to enable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is enabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiWarning;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ne v5, v6, :cond_6

    iget v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v5, v9, :cond_3

    const-string v5, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/wifi/WifiWarning;->getBoolSharedPref(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->showProgressDialog()V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v4}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    const-string v3, "WifiWarning"

    const-string v4, "Finish dialog because do not show again option is checked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v5, v7, :cond_5

    const-string v5, "HOTSPOT_P2P_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/wifi/WifiWarning;->getBoolSharedPref(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->showProgressDialog()V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v4}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_4
    const-string v3, "WifiWarning"

    const-string v4, "Finish dialog because do not show again option is checked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v5, v8, :cond_6

    const-string v5, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/wifi/WifiWarning;->getBoolSharedPref(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->disableTetheringAndEnableWiFi()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    const-string v3, "WifiWarning"

    const-string v4, "Finish dialog because do not show again option is checked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-eqz v1, :cond_7

    const-string v5, "wifi_enablewarning_check_mode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x20

    if-ne v5, v6, :cond_8

    move v4, v9

    nop

    :cond_8
    const/4 v5, 0x5

    if-eqz v4, :cond_9

    iput v8, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogTheme:I

    goto :goto_1

    :cond_9
    iput v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogTheme:I

    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget v10, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogTheme:I

    invoke-direct {v6, v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-object v10, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v11, Lcom/samsung/android/settings/wifi/WifiWarning;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const v13, 0x7f121e52

    const v14, 0x7f121e53

    const v15, 0x7f121dd3

    const v5, 0x7f121dd4

    if-ne v10, v11, :cond_d

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v11, 0x7f0d02ac

    invoke-static {v10, v11, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v10, 0x7f0a0861

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a01c4

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget v12, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v12, v9, :cond_a

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_a
    iget v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v5, v7, :cond_b

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_b
    iget v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v5, v8, :cond_c

    const v5, 0x7f121dd5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f121e46

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    :goto_2
    const v5, 0x7f0a0177

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_d
    iget v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v3, v9, :cond_e

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_e
    iget v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v3, v7, :cond_f

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_f
    iget v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v3, v8, :cond_10

    const v3, 0x7f121dd5

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f121d33

    invoke-static {v3, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_10
    iget v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_11

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f121d56

    invoke-static {v3, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f121d58

    invoke-static {v3, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_11
    :goto_3
    const v3, 0x104000a

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiWarning$2;

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/wifi/WifiWarning$2;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    invoke-virtual {v6, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_12

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiWarning$3;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/wifi/WifiWarning$3;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f12178b

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiWarning$4;

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/wifi/WifiWarning$4;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    invoke-virtual {v6, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_12
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiWarning$5;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/wifi/WifiWarning$5;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiWarning$6;

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/wifi/WifiWarning$6;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    invoke-virtual {v6, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_4
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_14

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "WifiWarning"

    const-string v5, "show dialog"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_14
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    const-string v0, "WifiWarning"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->closeChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string v0, "WifiWarning"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiWarning;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v0, v1, :cond_0

    const-string v0, "WifiWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifi_enablewarning_check_mode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWarning"

    const-string v1, "Home key is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastCancelEnablingWifi()V

    return-void
.end method
