.class public Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "BiometricsAndSecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private isKioskContainer:Z

.field private final mBiometricsBackupObserver:Landroid/database/ContentObserver;

.field private final mBiometricsPatchStatusObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mIsKeeperLaunched:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private mLocationPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->isKioskContainer:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mKnoxCustomIsProKioskMode:Z

    new-instance v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$1;-><init>(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$2;-><init>(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsPatchStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/settings/security/EncryptionStatusPreferenceController;

    const-string v4, "encryption_and_credentials_encryption_status"

    invoke-direct {v3, v0, v4}, Lcom/android/settings/security/EncryptionStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;

    const-string v5, "sdcard_encrypt_status"

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;

    invoke-direct {v5, v0, v1}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v6, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;

    invoke-direct {v6, v0, v1}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v7, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;

    invoke-direct {v7, v0, v1}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v8, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;

    invoke-direct {v8, v0, v1}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v9, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;

    invoke-direct {v9, v0}, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;

    invoke-direct {v10, v0, v1}, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v11, Lcom/samsung/android/settings/security/SamsungPassPreferenceController;

    invoke-direct {v11, v0}, Lcom/samsung/android/settings/security/SamsungPassPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;

    invoke-direct {v12, v0}, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;

    invoke-direct {v13, v0, v1}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v14, Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;

    move-object/from16 v15, p1

    invoke-direct {v14, v0, v15, v1}, Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v15, Lcom/samsung/android/settings/security/MarketingInfoPreferenceController;

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/settings/security/MarketingInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    new-instance v1, Lcom/samsung/android/settings/security/SecurityAppPermissionPreferenceController;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/security/SecurityAppPermissionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private initPreference()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "encryption"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private removeSecurityMenusFromLDU()V
    .locals 1

    const-string v0, "encryption_and_credentials_encryption_status"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "sdcard_encrypt_status"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method private setLinkedDataView()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v3, :cond_7

    new-instance v3, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, ":settings:show_fragment_title_resid"

    const v6, 0x7f121aae

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "flowId"

    const/16 v7, 0x2338

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iput v6, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCMCCModel()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    move-object v5, v6

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "menu"

    const-string v8, "backup"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "flowId"

    const/16 v8, 0x233f

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v7, 0x7f12125b

    iput v7, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.sm.ACTION_DASHBOARD"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v10}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    move-object v6, v10

    const/high16 v10, 0x10200000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v10, "flowId"

    const/16 v11, 0x2339

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v8, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    sget-boolean v10, Lcom/samsung/android/settings/Rune;->SUPPORT_NOTI_CHN_SMART_MANAGER:Z

    if-eqz v10, :cond_2

    const v10, 0x7f121863

    iput v10, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    :cond_2
    const v10, 0x7f120119

    iput v10, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_4
    if-eqz v5, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_5
    if-eqz v6, :cond_6

    iget-object v10, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mKnoxCustomIsProKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mUm:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3b3f5804

    if-eq v4, v5, :cond_4

    const v5, -0x1bad31d2

    if-eq v4, v5, :cond_3

    const v5, 0x7fb0496f

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "key_find_my_mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_3
    const-string v1, "security_status_find_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "security_status_security_patch_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    return v1

    :pswitch_1
    xor-int/lit8 v1, v2, 0x1

    return v1

    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BiometricsAndSecuritySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2347

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15009f

    return v0
.end method

.method protected launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2

    const-string v0, "security_status_security_patch_level"

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mKnoxCustomIsProKioskMode:Z

    if-nez v0, :cond_0

    const-string v0, "BiometricsAndSecuritySettings"

    const-string v1, "start to check software update"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SoftwareUpdateUtils;->launchSoftwareUpdateForSecurityUpdateMenu(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "BiometricsAndSecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff5

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0x2141

    if-ne p2, v0, :cond_0

    const/16 v0, 0x2142

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/16 v0, 0x2143

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    const-string v0, "location_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mLocationPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mLocationPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;-><init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mKnoxCustomIsProKioskMode:Z

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->checkForKnoxCustomProKioskEnabledItems()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsPatchStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mIsKeeperLaunched:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mIsKeeperLaunched:Z

    :cond_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->initPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "biometrics_backup_type"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "biometrics_security_patch_status"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsPatchStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->setLinkedDataView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->buildPreferenceForCOM()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mIsKeeperLaunched:Z

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->resume()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->removeSecurityMenusFromLDU()V

    :cond_1
    return-void
.end method

.method protected refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2

    const-string v0, "security_status_security_patch_level"

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SoftwareUpdateUtils;->isOTAUpgradeAllowed(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    return v0
.end method
