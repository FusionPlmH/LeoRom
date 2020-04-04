.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsDataRoleController.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mHostPref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsDataRoleController$cU-Vca-1LUjTmehDhPZv_qMdSP8;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsDataRoleController$cU-Vca-1LUjTmehDhPZv_qMdSP8;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkSmartSwtichTransfer()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.easyMover.statusProvider/isOtgTransferring"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UsbDetailsDataRoleController"

    const-string v2, "checkSmartSwtichTransfer - return true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const-string v0, "UsbDetailsDataRoleController"

    const-string v1, "checkSmartSwtichTransfer - return false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v1, 0x7f121b36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :cond_0
    return-void
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setTitle(I)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121b1c

    invoke-direct {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121b1b

    invoke-direct {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "usb_details_data_role"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result v0

    const-string v1, "UsbDetailsDataRoleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - click current mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->checkSmartSwtichTransfer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121aa7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDataRole(I)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v1, 0x7f121b35

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0xbb8

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x3a98

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 3

    const-string v0, "UsbDetailsDataRoleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh , connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsbDetailsDataRoleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh , functions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsbDetailsDataRoleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh , powerRole : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsbDetailsDataRoleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh , dataRole : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p5, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p5, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p5, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_5

    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p5, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v1, 0x7f121b36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(I)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
