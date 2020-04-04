.class public Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppPermissionMonitorPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final APM_FLOATING_FEATURE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

.field private static final APM_PKGNAME:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final KEY_APP_PERMISSION_MONITOR:Ljava/lang/String; = "app_permission_monitor"

.field private static final START_APP_PERMISSION_MONITOR_ACTION:Ljava/lang/String; = "com.samsung.intent.action.APP_PERMISSION_MONITOR_START"

.field private static final START_APP_PERMISSION_MONITOR_CLASS:Ljava/lang/String; = "com.samsung.android.apppermissionmonitor.APMApplist"

.field private static final TAG:Ljava/lang/String; = "AppPermissionMonitor:Settings"


# instance fields
.field private mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V
    .locals 1

    const-string v0, "app_permission_monitor"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private startApppermissionmonitor()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.APP_PERMISSION_MONITOR_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "which_fragment"

    const-string v2, "APMApplist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    const-string v2, "com.samsung.android.apppermissionmonitor.APMApplist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "app_permission_monitor"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2347

    const/16 v1, 0x1ec3

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->startApppermissionmonitor()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2347

    const/16 v2, 0x1ebe

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    const v2, 0x7f1219b4

    goto :goto_0

    :cond_0
    const v2, 0x7f120175

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    const-string v1, "SEAMService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/knox/seams/ISEAMS;->APMSwitchChanged(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->startApppermissionmonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AppPermissionMonitor:Settings"

    const-string v4, "failed change apmstatus Throwable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "AppPermissionMonitor:Settings"

    const-string v4, "failed change apmstatus"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    nop

    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/seams/ISEAMS;->isAPMEnabled(I)Z

    move-result v3

    move v2, v3

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/knox/seams/ISEAMS;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v4

    if-lt v4, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AppPermissionMonitor:Settings"

    const-string v4, "failed set apmstatus Throwable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "AppPermissionMonitor:Settings"

    const-string v4, "failed get apmstatus"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    nop

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v2, :cond_1

    const v3, 0x7f1219b4

    goto :goto_2

    :cond_1
    const v3, 0x7f120175

    :goto_2
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    const/16 v1, 0x2347

    const/16 v3, 0x25d8

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x1

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x0

    :goto_3
    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
