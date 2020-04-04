.class public final Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private final mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mToddlerModeObserver:Landroid/database/ContentObserver;

.field private mUrspManager:Landroid/net/UrspManager;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mUrspManager:Landroid/net/UrspManager;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_FEATURE_DATA_USAGE_MOBILE_DATA_ONLY_APPS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "urspservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrspManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mUrspManager:Landroid/net/UrspManager;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mUrspManager:Landroid/net/UrspManager;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_FEATURE_DATA_USAGE_MOBILE_DATA_ONLY_APPS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "urspservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrspManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mUrspManager:Landroid/net/UrspManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isMenuDIM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/net/UrspManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mUrspManager:Landroid/net/UrspManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    const v0, 0x104000a

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f121854

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f12184b

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x7f121852

    :cond_2
    :goto_0
    return v0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 3

    const v0, 0x7f121849

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f121850

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f12184f

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f121855

    goto :goto_0

    :cond_2
    const v0, 0x7f121853

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f12184c

    goto :goto_0

    :cond_4
    const v0, 0x7f12184a

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f121856

    goto :goto_0

    :cond_6
    const v0, 0x7f121851

    :cond_7
    :goto_0
    return v0
.end method

.method private isMDOEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mUrspManager:Landroid/net/UrspManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mUrspManager:Landroid/net/UrspManager;

    invoke-virtual {v0, v1}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v0

    return v0
.end method

.method private isMenuDIM()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportWFCSETTINGSMENU:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isTMOSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWifiAndMobileNetworkEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerForToddlerStatus()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mptcp_start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showNotificationDialog()Z
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f121858

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v3, :cond_2

    return v2

    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    const v3, 0x104000a

    const v4, 0x7f121845

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f12184f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$5;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_9

    return v2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12184d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f12184e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$6;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_9

    return v2

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isMDOEnabled()Z

    move-result v0

    const/high16 v3, 0x1040000

    if-eqz v0, :cond_8

    const-string v0, ""

    const-string v5, ""

    iget-object v6, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f1213d3

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f1213d9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f1213d1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f121a63

    new-instance v7, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$7;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$8;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v1

    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getTextIdUnderNetworkStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f121857

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getBtnIdUnderNetworkStatus()I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_9
    :goto_0
    return v1
.end method

.method private unregisterForToddlerStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getmNofiticationDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    move-result v0

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    return-void
.end method

.method public onWidgetChanged(Z)Z
    .locals 9

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0xe88

    const/16 v3, 0xe89

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z

    move-result v1

    return v1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mptcp_value"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p1, :cond_7

    if-nez v0, :cond_7

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121845

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f120aa4

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_3

    const v4, 0x7f120228

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f1200e2

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_5
    :goto_2
    const v4, 0x7f120e89

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_6
    :goto_3
    const v4, 0x104000a

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$12;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$12;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$13;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$13;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v1

    :cond_7
    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isWifiAndMobileNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isMDOEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z

    move-result v1

    return v1

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    return v1
.end method

.method public pause()V
    .locals 2

    const-string v0, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->unregisterForToddlerStatus()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->unregisterForWfcAndAirPlaneStatus()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    return-void
.end method

.method public resume()V
    .locals 6

    const-string v0, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "toddler_mode_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->registerForToddlerStatus()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "smart_bonding"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->registerForWfcAndAirPlaneStatus()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "smart_bonding"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const-string v3, "SmartBondingEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() smartBondingState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SmartBondingEnabler"

    const-string v4, "onResume() No sim status so, disable"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v4, 0x7f1219b4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v4, 0x7f1219b3

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_8
    return-void
.end method

.method public updateSmartBondingState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_1
    return-void
.end method
