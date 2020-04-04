.class public Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecDeviceInfoHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

.field private final mDeviceNameObserver:Landroid/database/ContentObserver;

.field private mDeviceNameView:Landroid/widget/TextView;

.field private mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$2;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mFragment:Landroid/app/Fragment;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->showDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method private createDeviceInfoHeader()Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getDeviceInfoHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getDeviceNameView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getDeviceNameEditButton()Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private showDialog()V
    .locals 4

    const v0, 0x7f121077

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x12c3

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->setConfirmationDialogFragmentListener(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/settings/applications/LayoutPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->createDeviceInfoHeader()Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x40000

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sec_device_info_header"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    return-void
.end method

.method public onNegativeClick()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    return-void
.end method

.method public onPositiveClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    return-void
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->mDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
