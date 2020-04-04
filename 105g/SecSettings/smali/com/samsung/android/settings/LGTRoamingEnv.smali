.class public Lcom/samsung/android/settings/LGTRoamingEnv;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LGTRoamingEnv.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private curSimVer:Ljava/lang/String;

.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAirplanemodeoff:Z

.field private mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

.field private mButtonReset:Landroid/support/v7/preference/Preference;

.field private mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsRoamingNetworkInit:Z

.field private mIsSupportBIPduringDataOff:Z

.field private mIsSupportVolte:Z

.field private mIsWaitRadioPowerOff:Z

.field private mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportVolte:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportBIPduringDataOff:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplanemodeoff:Z

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$1;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$2;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$3;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$4;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/LGTRoamingEnv$5;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$6;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$7;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/LGTRoamingEnv;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getLteRoamingState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/LGTRoamingEnv;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/LGTRoamingEnv;->toggleLteRoaming(Z)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getSIMVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/LGTRoamingEnv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/LGTRoamingEnv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/LGTRoamingEnv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplanemodeoff:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplanemodeoff:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private getLteRoamingState()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_roaming_mode_on"

    iget-boolean v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportVolte:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getRejectValue()I
    .locals 5

    const-string v0, "ril.skt.network_regist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTSValues="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ";"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    const-string v4, "Idle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_1
    :goto_0
    const-string v1, "LGTRoamingEnv"

    const-string v2, "ril is empty or error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private getSIMVersion()Ljava/lang/String;
    .locals 5

    const-string v0, "gsm.sim.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "LGTRoamingEnv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private resetSettings()V
    .locals 3

    const-string v0, "LGTRoamingEnv"

    const-string v1, "resetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12126a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121265

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private toggleLteRoaming(Z)V
    .locals 3

    const-string v0, "LGTRoamingEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleLteRoaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.SET_LTE_ROAMING_IMSI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lte_roaming"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateCountryInfo()V
    .locals 11

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getRejectValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v4, 0x7f120cf5

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v4, 0x7f120cf6

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    sget-object v3, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v3

    const v4, 0x1040013

    if-eqz v3, :cond_2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040014

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f120add

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportBIPduringDataOff:Z

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12126b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f121262

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    iget-object v4, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "kr.co.uplus.UPDATE_COUNTRY_INFO"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.sec.MDM_ROAMING"

    iget-object v6, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/app/ProgressDialog;

    sget-object v4, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v3, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v4, 0x7f1207a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/samsung/android/settings/LGTRoamingEnv$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$9;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    const-string v2, "gsm.sim.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/32 v4, 0x186a0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v2, "LGTRoamingEnv"

    const-string v3, "send ADD_NATION_POPUP_TIME_EXPIRED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->finish()V

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v0, 0x7f1500d3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->addPreferencesFromResource(I)V

    const-string v0, "button_country_update"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

    const-string v0, "button_reset_setting"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/support/v7/preference/Preference;

    const-string v0, "button_lte_roaming"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/LGTRoamingEnv$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$8;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    const-string v0, "LGTRoamingEnv"

    const-string v1, "onPause: unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->updateCountryInfo()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->resetSettings()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lte_roaming_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isExceptionalUSIM()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getLteRoamingState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
