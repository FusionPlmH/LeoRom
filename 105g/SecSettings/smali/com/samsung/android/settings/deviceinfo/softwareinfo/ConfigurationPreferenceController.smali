.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ConfigurationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mConfig:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDevHitCountdown:I

.field private mPreference:Landroid/support/v7/preference/Preference;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VERSION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "com.samsung.nsds.provider/device_config"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v2, "0"

    return-object v2
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "config"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "config"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    :cond_1
    return v1
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMB"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
