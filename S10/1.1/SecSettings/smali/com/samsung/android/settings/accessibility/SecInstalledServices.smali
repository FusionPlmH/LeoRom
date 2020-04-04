.class public Lcom/samsung/android/settings/accessibility/SecInstalledServices;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecInstalledServices.java"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field mPackageMonitorReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;-><init>(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mPackageMonitorReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices$2;-><init>(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$3;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/SecInstalledServices$3;-><init>(Lcom/samsung/android/settings/accessibility/SecInstalledServices;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAppLable(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "Galaxy Apps"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.sec.android.app.samsungappss"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const v0, 0x7f1500d0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mPackageMonitorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->updateServicePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mPackageMonitorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_10

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v16, v2

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v14, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v15

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v17, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v19, v3

    const v3, 0x7f120057

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_1

    :cond_2
    move-object/from16 v19, v3

    :goto_1
    if-eqz v15, :cond_3

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v14, v3, v4}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->hasServiceCrashed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f120061

    invoke-virtual {v11, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(I)V

    const v3, 0x7f120030

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v3, v19

    goto :goto_4

    :cond_3
    if-eqz v15, :cond_4

    const v3, 0x7f1219df

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    const v3, 0x7f1219de

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v11, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :goto_4
    move-object/from16 v20, v4

    const-string v4, "com.samsung.accessibility"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    nop

    :goto_5
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    goto/16 :goto_b

    :cond_5
    const-string v4, "com.sec.android.app.camera"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    const-string v4, "com.sec.android.app.camera.plb"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    const-string v4, "com.samsung.android.aremoji"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const-string v4, "com.samsung.android.bixby.agent"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    const-string v4, "com.samsung.android.bixby.bridge"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_c

    invoke-interface {v6, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    goto :goto_6

    :cond_b
    const/16 v18, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/16 v18, 0x1

    :goto_7
    if-nez v18, :cond_e

    if-nez v15, :cond_e

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v21, v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v4, v14, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v11, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    :goto_8
    nop

    const/4 v4, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v21, v5

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    :goto_9
    invoke-virtual {v11, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-class v5, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setPersistent(Z)V

    invoke-virtual {v11}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "preference_key"

    move-object/from16 v22, v6

    invoke-virtual {v11}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "checked"

    invoke-virtual {v4, v5, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "resolve_info"

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v5, "summary"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "settings_title"

    move-object/from16 v23, v3

    const v3, 0x7f120044

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "settings_component_name"

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v14, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    move-object/from16 v23, v3

    :goto_a
    const-string v3, "component_name"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v11}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_0

    :cond_10
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0208

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/SecNoItemView;

    const v4, 0x7f121332

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getAppLable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/widget/SecNoItemView;->setSubText(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a04ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_11

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0601b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_11
    return-void
.end method
