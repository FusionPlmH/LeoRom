.class public Lcom/samsung/android/settings/development/GpuWatchPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "GpuWatchPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

.field private mGPUWatchApp:Ljava/lang/String;

.field private mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

.field private mGPUWatchGamePref:Landroid/support/v7/preference/Preference;

.field private mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

.field private mGpuWatchDiscoverTaps:I

.field private mGpuWatchModeTapTime:J

.field private mGpuWatchModeTaps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchGamePref:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchDiscoverTaps:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTapTime:J

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method

.method private disableGpuWatchMenu()V
    .locals 4

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "development"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "gpuwatch_show"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchGamePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    const/4 v2, 0x6

    iput v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchDiscoverTaps:I

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    const-string v0, "debug.gpuwatch.status"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "debug.gpuwatch.proc"

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "debug.gpuwatch.api"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "debug.gpuwatch.utmode"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "debug.gpuwatch.fcmode"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchRenderingAPI()V

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchApp()V

    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/development/GPUWatchService;->stop(Landroid/content/Context;)V

    return-void
.end method

.method private enableGpuWatchUTMode(Z)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x7

    if-nez v2, :cond_0

    const-wide v4, 0x165636fdc80L

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    iput v3, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    const-string v2, "debug.gpuwatch.utmode"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput v3, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    const-string v2, "debug.gpuwatch.utmode"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isGpuWatchMenuAvailable(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gpuwatch_show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGpuWatchSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private updateGPUWatchApp()V
    .locals 3

    const-string v0, "debug.gpuwatch.proc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ae6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private updateGPUWatchRenderingAPI()V
    .locals 5

    const-string v0, "debug.gpuwatch.api"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    const-string v3, "debug.gpuwatch.api"

    aget-object v4, v1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private writeGPUWatch(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->enableGpuWatchUTMode(Z)V

    const-string v1, "debug.gpuwatch.status"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "true"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "debug.gpuwatch.fcmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/development/GPUWatchService;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "debug.gpuwatch.fcmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/development/GPUWatchService;->stop(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private writeGPUWatchApp()V
    .locals 2

    const-string v0, "debug.gpuwatch.proc"

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeGPUWatchRenderingAPI(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTapTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    const/4 v3, 0x7

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    iget v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    if-nez v2, :cond_2

    const-string v2, "debug.gpuwatch.fcmode"

    const-string/jumbo v4, "true"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/development/GPUWatchService;->start(Landroid/content/Context;)V

    iput v3, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTaps:I

    :cond_2
    :goto_1
    iput-wide v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchModeTapTime:J

    const-string v2, "debug.gpuwatch.api"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchRenderingAPI()V

    return-void
.end method


# virtual methods
.method public decreaseGpuWatchDiscoverTaps()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchDiscoverTaps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchDiscoverTaps:I

    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "games_category"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchGamePref:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->isGpuWatchSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gpuwatch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "gpuwatch_app"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "gpuwatch_rendering_api"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->isGpuWatchMenuAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->enableGpuWatchMenu()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->disableGpuWatchMenu()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchGamePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public enableGpuWatchMenu()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "gpuwatch_show"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchGamePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchApp()V

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchRenderingAPI()V

    iput v2, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchDiscoverTaps:I

    const-string/jumbo v1, "true"

    const-string v3, "debug.gpuwatch.utmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->enableGpuWatchUTMode(Z)V

    :cond_0
    return-void
.end method

.method public getGpuWatchDiscoverTaps()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchDiscoverTaps:I

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gpuwatch"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchApp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->writeGPUWatchApp()V

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchApp()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    invoke-static {}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->isGpuWatchSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->disableGpuWatchMenu()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->writeGPUWatchRenderingAPI(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->writeGPUWatch(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.settings.extra.INSTALLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/16 v3, 0x3ea

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->isGpuWatchSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->isGpuWatchMenuAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGpuWatchDiscoverTaps:I

    :cond_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "debug.gpuwatch.status"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchRenderingAPI()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->updateGPUWatchApp()V

    :cond_2
    return-void
.end method
