.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;
.super Ljava/lang/Object;
.source "DeviceVisibilityEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceVisibilityObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$2;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$3;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v1, 0x7f1206f5

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setTitle(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->updateSwitchPreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method private updateSwitchPreference()V
    .locals 5

    const-string v0, "DeviceVisibilityEnabler"

    const-string/jumbo v1, "updateSwitchPreference"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-ne v0, v3, :cond_1

    const v4, 0x7f121a13

    goto :goto_1

    :cond_1
    const v4, 0x7f1206f3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne v0, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const-string v0, "DeviceVisibilityEnabler"

    const-string v1, "onPreferenceChange"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    const-string v2, "Settings"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0xbbd

    const/16 v4, 0xc8a

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->hasPermissions(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->isQcFirstLaunched(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "DEVICE_VISIBILITY_STATE_VALUE"

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    nop

    move v4, v7

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.samsung.android.oneconnect"

    const-string v6, "com.samsung.android.oneconnect.ui.SettingsPermissionActivity"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v6, "DeviceVisibilityEnabler"

    const-string v8, "ActivityNotFoundException - SettingsPermissionActivity"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v7

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    const-string v6, "Settings"

    invoke-static {v5, v0, v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;ILjava/lang/String;)V

    return v4
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DeviceVisibilityEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
