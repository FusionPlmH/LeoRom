.class public Lcom/samsung/android/settings/GigaMultiPath;
.super Landroid/app/Fragment;
.source "GigaMultiPath.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;
    }
.end annotation


# instance fields
.field private isMobileDataEnabling:Z

.field private isNetworkEnabling:Z

.field private isWiFiEnabling:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mHoldingHandler:Landroid/os/Handler;

.field private mIsSupport5G:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMptcpStateReceiver:Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mIsSupport5G:Z

    new-instance v0, Lcom/samsung/android/settings/GigaMultiPath$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaMultiPath$1;-><init>(Lcom/samsung/android/settings/GigaMultiPath;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/GigaMultiPath$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaMultiPath$2;-><init>(Lcom/samsung/android/settings/GigaMultiPath;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/GigaMultiPath;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->isSimValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/GigaMultiPath;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/GigaMultiPath;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaMultiPath;->getWiFiState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/GigaMultiPath;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->isNetworkEnabling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/GigaMultiPath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaMultiPath;->isNetworkEnabling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/GigaMultiPath;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->isMobileDataEnabling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/GigaMultiPath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaMultiPath;->isMobileDataEnabling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/GigaMultiPath;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->isWiFiEnabling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/GigaMultiPath;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaMultiPath;->isWiFiEnabling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/GigaMultiPath;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaMultiPath;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private closeProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private getWiFiState(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSimPresent()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private isSimValid()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->isSimPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "45006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerReceivers()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/GigaMultiPath;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mptcp_start"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "GigaMultiPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private unRegisterReceivers()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120ec8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->isSimPresent()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f120ec4

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->isSimValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f120ec3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f120ec6

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f120ebe

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f120ec1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/samsung/android/settings/GigaMultiPath;->mIsSupport5G:Z

    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0d011e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120ebf

    iget-boolean v3, p0, Lcom/samsung/android/settings/GigaMultiPath;->mIsSupport5G:Z

    if-eqz v3, :cond_0

    const v2, 0x7f120ec0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->unRegisterReceivers()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->registerReceivers()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mptcp_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    nop

    :cond_2
    move v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaMultiPath;->closeProgressDialog()V

    :cond_4
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x1040000

    const v5, 0x104000a

    const v6, 0x7f120ec8

    if-eqz v3, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120ec7

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/GigaMultiPath$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/GigaMultiPath$3;-><init>(Lcom/samsung/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/GigaMultiPath$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/GigaMultiPath$4;-><init>(Lcom/samsung/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120ec9

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120ecb

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/GigaMultiPath$5;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/settings/GigaMultiPath$5;-><init>(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/GigaMultiPath$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/GigaMultiPath$6;-><init>(Lcom/samsung/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120ec2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/GigaMultiPath$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/GigaMultiPath$7;-><init>(Lcom/samsung/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/GigaMultiPath$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/GigaMultiPath$8;-><init>(Lcom/samsung/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaMultiPath;->showProgressDialog()V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/GigaMultiPath;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method public showProgressDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f120ebc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/settings/GigaMultiPath$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaMultiPath$9;-><init>(Lcom/samsung/android/settings/GigaMultiPath;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
