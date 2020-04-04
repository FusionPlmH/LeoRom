.class public Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final selectionArgs:[Ljava/lang/String;


# instance fields
.field private isAirplaneModeAllowed:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCheck:Landroid/widget/CheckBox;

.field private mCheckECM:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsOnDisplay:Z

.field private mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->setupSwitchBar()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 11

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    if-nez v0, :cond_0

    const-string v0, "AirplaneModeSwitchEnabler"

    const-string v1, "onAirplaneModeChanged : Cannot update checked status because current Fragment is not a Airplane mode settings"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->getAirPlaneModeEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->hasAirPlaneModeRestriction(I)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isAirplaneModeAllowed"

    sget-object v8, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_4

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v8, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_6

    move v5, v8

    goto :goto_1

    :cond_6
    move v5, v7

    :goto_1
    move v4, v5

    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "airplane_mode_on"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_7

    move v5, v8

    goto :goto_2

    :cond_7
    move v5, v7

    :goto_2
    if-ne v4, v5, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v9, v6, :cond_8

    iget v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v6, v8, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "GATE"

    const-string v2, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "GATE"

    const-string v2, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    nop

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    :cond_7
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    const/16 v1, 0xce4

    const/16 v2, 0xce5

    if-eqz p1, :cond_8

    const-wide/16 v3, 0x3e8

    goto :goto_1

    :cond_8
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method


# virtual methods
.method public changeAirplaneMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    :cond_0
    return-void
.end method

.method public getAirPlaneModeEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "no_airplane_mode"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method public hasAirPlaneModeRestriction(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "no_airplane_mode"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    :cond_2
    nop

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    :goto_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v2, "isAirplaneModeAllowed"

    sget-object v3, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    iget v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->getIsInCallState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f1200de

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, p2

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    :cond_5
    nop

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ToggleImageView;->setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isAirplaneModeAllowed"

    sget-object v4, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method
