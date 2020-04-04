.class public Lcom/samsung/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static hasCorrectMyAccount:Z

.field private static mIsSamsungBackupEnabled:Z

.field private static mIsSamsungStorageEnabled:Z


# instance fields
.field private final PWD_MGR_CLSNAME:Ljava/lang/String;

.field private accountManager:Landroid/accounts/AccountManager;

.field private categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mEnabled:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsConnected:Z

.field private mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSamsungBackup:Landroid/support/v7/preference/SecPreference;

.field private mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

.field private mSamsungRestore:Landroid/support/v7/preference/SecPreference;

.field private mSamsungStorage:Landroid/support/v7/preference/SecPreference;

.field private mSmartSwitch:Landroid/support/v7/preference/SecPreference;

.field private mWaitingForConfirmationDialog:Z

.field private preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private switchChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    const-string v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$1;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$2;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$3;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onStorageClicked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/PrivacySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onBackUpClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onRestoreClicked()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method private addSamsungAccount()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    const-string/jumbo v1, "tj9u972o46"

    const-string v2, "D234AE3C42F092D4334433173AE9E264"

    const-string v3, "com.samsung.android.scloud"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "client_id"

    const-string/jumbo v6, "tj9u972o46"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "client_secret"

    const-string v6, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "mypackage"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "OSP_VER"

    const-string v6, "OSP_02"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "MODE"

    const-string v6, "ADD_ACCOUNT"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x3e9

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "PrivacySettings"

    const-string v2, "Device owner case. Backup and Restore needs to be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.scloud"

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v0, v4

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    const-string v4, "DisablingSamsungBackup"

    invoke-static {v4}, Lcom/samsung/android/settings/account/AccountUtils;->isDisableSamsungCloudMenu(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sput-boolean v3, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    sput-boolean v1, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungCloudEnabler(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sput-boolean v3, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.scloud.quota"

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_2

    sput-boolean v3, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v2

    sput-boolean v1, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    :goto_1
    return-void
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "PrivacySettings"

    const-string v6, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.google.settings"

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    move v6, v0

    if-eqz v6, :cond_1

    const-string v0, "backup_category"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v6, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    const-string v0, "backup_inactive"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v6, :cond_4

    if-nez v4, :cond_5

    :cond_4
    const-string v0, "backup_data"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v0, "auto_restore"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v0, "configure_account"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move v8, v5

    :try_start_1
    const-string v0, "com.carrieriq.tmobile.IQToggle"

    const/16 v9, 0x80

    invoke-virtual {v7, v0, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    const-string v9, "PrivacySettings"

    const-string v10, "Package not found : IQToggle"

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v9, v3

    :try_start_2
    const-string v0, "com.tmobile.pr.mytmobile"

    invoke-virtual {v7, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const-string v13, "PrivacySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSkipMyAccount: rawVersion = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", stringVerson = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", numVersion = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v13, 0x40666666    # 3.6f

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_6

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    sput-boolean v5, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move v9, v5

    const-string v5, "PrivacySettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "hasMyAccountEnabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    sput-boolean v3, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string v3, "PrivacySettings"

    const-string v5, "NumberFormatException : MyAccount version"

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v0

    sput-boolean v3, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string v3, "PrivacySettings"

    const-string v5, "NameNotFoundException : MyAccount"

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    nop

    :goto_5
    if-nez v8, :cond_7

    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    if-eqz v0, :cond_8

    :cond_7
    if-nez v9, :cond_9

    :cond_8
    const-string v0, "collect_diagnostics"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v0, :cond_a

    const-string v0, "CHM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "pref_backUp"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v0, "pref_restore"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v0, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const-string v0, "samsung_backup_inactive"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v0, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const-string v0, "pref_storage"

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    nop

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    nop

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private onBackUpClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.android.scloud"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.scloud"

    const-string v3, "com.samsung.android.scloud.backup.SamsungBackup"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x34010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showDownloadSamsungCloudDialog()V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x122c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method private onRestoreClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.android.scloud"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.scloud"

    const-string v3, "com.samsung.android.scloud.backup.ManualRestoreActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.backup.START_RESTORE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x34010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showDownloadSamsungCloudDialog()V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x122d

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method private onStorageClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/PrivacySettings;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.scloud.quota"

    const-string v3, "com.samsung.android.scloud.quota.StorageList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private samsungAccountExists()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private setBackupEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrivacySettings"

    const-string v2, "Error communicating with BackupManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    const v1, 0x7f120217

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDownloadSamsungCloudDialog()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f1204db

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v6, 0x7f12079c

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const v5, 0x7f12079b

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/PrivacySettings$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/PrivacySettings$5;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    const v6, 0x7f120e74

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/PrivacySettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/PrivacySettings$4;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_full_data_backup_aware"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a76

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12021d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    return-void
.end method

.method private showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateToggles()V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    sget-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    const/4 v7, 0x0

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :goto_0
    sget-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_3
    :goto_1
    sget-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v6

    move v1, v6

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "config"

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v2, v8

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v6}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "management"

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v4, v8

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v6}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v8, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v6

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v8, 0x1

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v9, "backup_auto_restore"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v8, :cond_7

    move v9, v8

    goto :goto_3

    :cond_7
    move v9, v7

    :goto_3
    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_8
    const-string v6, "backup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configIntent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    move v6, v8

    goto :goto_4

    :cond_9
    move v6, v7

    :goto_4
    const-string v9, "backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    :cond_a
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    const-string v9, "backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "manageIntent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    move v7, v8

    nop

    :cond_b
    const-string v8, "backup_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v7, :cond_d

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    if-eqz v5, :cond_c

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v9, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_c
    if-eqz v8, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5

    :cond_d
    if-eqz v8, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_e
    :goto_5
    return-void
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    const-string v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " fails to resolve; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b0b

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_0

    const-string v0, "PrivacySettings"

    const-string v1, "Succeed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/android/settings/MasterClear;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const v5, 0x7f120e0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    :cond_0
    const-string v0, "PrivacySettings"

    const-string v1, "Failed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account added"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account Login : cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account Login : other reasons"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1500e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCMCCModel()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const v2, 0x7f12050f

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v2, "backup_data"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    const-string v2, "auto_restore"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v2, "configure_account"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_4
    const-string v2, "data_management"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v2, "category_samsungservices"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/SecPreferenceCategory;

    const v4, 0x7f12125d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "pref_backUp"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "pref_restore"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "pref_storage"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "samsung_backup_inactive"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

    const-string v3, "external_storage_transfer"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSdcard()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreference;

    const v4, 0x7f120934

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v3, "collect_diagnostics"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_9

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_6
    instance-of v7, v6, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    :goto_1
    if-ltz v9, :cond_8

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "menu"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v6, "backup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "collect_diagnostics"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)Z

    if-eqz v1, :cond_a

    const v6, 0x7f12125b

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const-string v0, "configure_account"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x122f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_2

    const-string v1, "false"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v4, "isBackupAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    nop

    :cond_1
    :goto_0
    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
