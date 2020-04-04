.class public Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# instance fields
.field private CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

.field private mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field public mAVCDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private final mAdvancedDeltaTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAskToUsePreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mControlHistoryPreference:Landroid/support/v7/preference/SecPreference;

.field public mDualPlayDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field public mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mIsA2dpProfileReady:Z

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceivedFilesPreference:Landroid/support/v7/preference/SecPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRenamePreference:Landroid/support/v7/preference/SecPreference;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsA2dpProfileReady:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "SPR"

    const-string v2, "VMU"

    const-string v3, "BST"

    const-string v4, "XAS"

    const-string v5, "VZW"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settingslib/bluetooth/A2dpProfile;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->setCheckedWithoutCallback(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateDeviceName()V

    return-void
.end method

.method private isAVCAvailable()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isAudioPathBluetooth()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlDeviceActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    :cond_1
    const-string v1, "BluetoothAdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAVCAvailable :: available = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isAudioPathBluetooth()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v3, v2, 0x380

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v3, "BluetoothAdvancedSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAudioPathBluetooth :: sound path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "BluetoothAdvancedSettings"

    const-string v2, "Fragment not attached to activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private isInBandRingtoneEnabled()Z
    .locals 2

    const-string v0, "persist.bluetooth.disableinbandringing"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "BluetoothAdvancedSettings"

    const-string v4, "isPackageExists :: appInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    const-string v2, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageExists :: target package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", find = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isUseDeltaOptionMenu()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setCheckedWithoutCallback(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateDeviceName()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSwitch()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "BluetoothAdvancedSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume :: Bluetooth Dual Play Settings will finish, adapter state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1213ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1213b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1213bc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1213b9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1213b6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1213bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v3

    if-eq v3, v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v7}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1213bd

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v3

    if-ne v3, v4, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isAVCAvailable()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1213b4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :goto_3
    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :goto_4
    const-string v3, "com.google.android.projection.gearhead"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1213b5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "com.google.android.projection.gearhead"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :goto_5
    const-string v3, "ChinaNalSecurity"

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_security_on_check"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    :goto_6
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method public getPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "BluetoothAdvancedSettings"

    const-string v4, "getPackageName :: appInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    const-string v2, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageName :: target package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    const-string v0, "BluetoothAdvancedSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged :: state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsA2dpProfileReady:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsA2dpProfileReady:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "BluetoothAdvancedSettings"

    const-string v1, "onConfigurationChanged :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500a4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :cond_0
    const-string v0, "key_bluetooth_received_files"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroid/support/v7/preference/SecPreference;

    const-string v0, "key_bluetooth_rename"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroid/support/v7/preference/SecPreference;

    const-string v0, "key_bluetooth_dual_play"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string v0, "key_bluetooth_avc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string v0, "key_bluetooth_ibr"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string v0, "key_bluetooth_control_history"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroid/support/v7/preference/SecPreference;

    const-string v0, "key_bluetooth_ask_to_use"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string v0, "persist.bluetooth.enableinbandringing"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothAdvancedSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate:: isSupportIBR - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , isVoiceCapable - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , isSupportSoftphone - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v3, "Softphone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    const-string v3, "ChinaNalSecurity"

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isUseDeltaOptionMenu()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1212ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120866

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "BluetoothAdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() :: preference - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isChecked - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x772001a6

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    const v3, -0x10863c23

    if-eq v2, v3, :cond_2

    const v3, -0x10862078    # -7.7332E28f

    if-eq v2, v3, :cond_1

    const v3, 0x6376fae6

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "key_bluetooth_dual_play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_1

    :cond_1
    const-string v2, "key_bluetooth_ibr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_2
    const-string v2, "key_bluetooth_avc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v2, "key_bluetooth_ask_to_use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const v3, 0x7f1206bb

    const v7, 0x7f1206bc

    packed-switch v2, :pswitch_data_0

    const-string v2, "BluetoothAdvancedSettings"

    const-string v3, "Wrong preference key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_security_on_check"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_security_on_check"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f12087f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BluetoothAdvancedSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_ASK_TO_USE - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_security_on_check"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_1
    const-string v2, "com.google.android.projection.gearhead"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    const-string v3, "BluetoothAdvancedSettings"

    const-string/jumbo v4, "switchStateChange :: It is not user interaction"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v8

    if-eq v8, v4, :cond_d

    if-ne v8, v5, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12086a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "persist.bluetooth.disableinbandringing"

    if-nez v0, :cond_c

    const-string/jumbo v6, "true"

    goto :goto_5

    :cond_c
    const-string v6, "false"

    :goto_5
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d
    :goto_6
    const-string v3, "key_bluetooth_ibr"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->showAskDialog(Ljava/lang/String;)V

    return v6

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v2, :cond_e

    const-string v2, "BluetoothAdvancedSettings"

    const-string v3, "onPreferenceChange :: a2dpProfile is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e
    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    if-nez v0, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    const-string v2, "BluetoothAdvancedSettings"

    const-string v3, "onPreferenceChange :: AbsoluteVolumeControl not user action"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_11
    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "key_bluetooth_avc"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->showAskDialog(Ljava/lang/String;)V

    return v6

    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f120865

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setAbsoluteVolumeControlMode(Z)Z

    goto :goto_9

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v2, :cond_14

    const-string v2, "BluetoothAdvancedSettings"

    const-string v3, "onPreferenceChange :: a2dpProfile is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_14
    if-eqz v0, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    if-nez v0, :cond_17

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    const-string v2, "BluetoothAdvancedSettings"

    const-string v3, "onPreferenceChange :: DualPlay not user action"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_17
    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    const-string v2, "key_bluetooth_dual_play"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->showAskDialog(Ljava/lang/String;)V

    return v6

    :cond_18
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f120863

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setDualPlayMode(Z)Z

    nop

    :goto_9
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "key_bluetooth_dual_play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "key_bluetooth_rename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "key_bluetooth_control_history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "key_bluetooth_ibr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "key_bluetooth_avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "key_bluetooth_received_files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120861

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120869

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120864

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120862

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120868

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f1210ba

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120867

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7128ddd6 -> :sswitch_5
        -0x10863c23 -> :sswitch_4
        -0x10862078 -> :sswitch_3
        0x42e6e41 -> :sswitch_2
        0x27091fcf -> :sswitch_1
        0x6376fae6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_a2dp_dual_play_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bluetooth_avc_mode"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isUseDeltaOptionMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateDeviceName()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.bluetooth.a2dp.intent.action.AVRCP_CONNECTED_WITH_AVC"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAdvancedSettings"

    const-string v1, "onServiceConnected :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsA2dpProfileReady:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsA2dpProfileReady:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothAdvancedSettings"

    const-string v3, "onServiceConnected :: a2dpProfile is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "BluetoothAdvancedSettings"

    const-string v2, "onServiceConnected :: mLocalProfileManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayPreference:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsA2dpProfileReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsA2dpProfileReady:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method showAskDialog(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x10863c23

    if-eq v0, v1, :cond_2

    const v1, -0x10862078    # -7.7332E28f

    if-eq v0, v1, :cond_1

    const v1, 0x6376fae6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_bluetooth_dual_play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "key_bluetooth_ibr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "key_bluetooth_avc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f121ac2

    const v2, 0x7f120510

    packed-switch v0, :pswitch_data_0

    const-string v0, "BluetoothAdvancedSettings"

    const-string v1, "Wrong preference key!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1213d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1213d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120517

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1213c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1213c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAVCDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_2

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1213d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1213d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mDualPlayDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAlertDialog:Landroid/app/AlertDialog;

    nop

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
