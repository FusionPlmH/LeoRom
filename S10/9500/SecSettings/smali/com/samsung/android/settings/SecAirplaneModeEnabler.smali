.class public Lcom/samsung/android/settings/SecAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "SecAirplaneModeEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNumSlot:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mServiceState:[I

.field private mSimCount:I

.field private mSupportCellularVoice:Z

.field private final mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecAirplaneModeEnabler"

    sput-object v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    new-instance v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;-><init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;-><init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setPersistent(Z)V

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/SecAirplaneModeEnabler;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/SecAirplaneModeEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneId(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler$3;-><init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public static getSimSettingState(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v4, v5

    iget-object v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "airplane_mode_on"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const/4 v7, 0x2

    if-eqz v5, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    move v9, v8

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    if-eqz v10, :cond_2

    aget v11, v10, v2

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v12

    if-ltz v11, :cond_2

    if-ne v8, v12, :cond_2

    iget-object v13, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v13, v8}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->getSimSettingState(Landroid/content/Context;I)I

    move-result v13

    if-ne v13, v3, :cond_2

    iget-object v13, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    aget v13, v13, v8

    if-ne v13, v6, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsUtils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-ne v9, v6, :cond_4

    sget-object v6, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# of poweroff( in servicestate) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    aget v6, v6, v2

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    if-nez v6, :cond_5

    sget-object v6, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    const-string v7, "in-service but, mSupportCellularVoice false "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_5
    :goto_3
    goto :goto_5

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    move v9, v8

    move v8, v2

    :goto_4
    if-ge v8, v7, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    if-eqz v10, :cond_7

    aget v11, v10, v2

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v12

    if-ltz v11, :cond_7

    if-ne v8, v12, :cond_7

    iget-object v13, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v13, v8}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->getSimSettingState(Landroid/content/Context;I)I

    move-result v13

    if-ne v13, v3, :cond_7

    iget-object v13, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    aget v13, v13, v8

    if-eq v13, v6, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsUtils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-ne v9, v6, :cond_9

    sget-object v6, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# of NON-poweroff( in servicestate) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_6

    :cond_a
    move v1, v0

    :goto_6
    move v0, v1

    const-string v1, "SecAirPlaneModeEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAirplaneModeChanged= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v2, 0x7f1219b4

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_8

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v3, 0x7f1200dc

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v3, 0x7f1200db

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_d
    :goto_8
    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 10

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mTM:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    iget v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iput-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " registerPhoneStateListener: ActiveSimCnt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_3

    aget v5, v4, v0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v6

    if-ltz v5, :cond_2

    if-ne v1, v6, :cond_2

    sget-object v7, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerPhoneStateListener subId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " phoneId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v7, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v3, v7, v6

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    aput v0, v7, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "GATE"

    const-string v1, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "GATE"

    const-string v1, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    const/16 v1, 0xce4

    const/16 v2, 0xce5

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x3e8

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterPhoneStateListener  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isAirplaneModeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const/16 v5, 0xb1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    :goto_0
    return v2
.end method

.method public pause()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->unregisterPhoneStateListener()V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const-string v1, "no_airplane_mode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    return-void
.end method
