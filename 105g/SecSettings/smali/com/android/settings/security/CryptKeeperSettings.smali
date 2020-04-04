.class public Lcom/android/settings/security/CryptKeeperSettings;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "CryptKeeperSettings.java"


# static fields
.field private static mDeviceType:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;


# instance fields
.field private mBatteryWarning:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mDem:Lcom/samsung/android/security/SemSdCardEncryption;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

.field private mParent:Landroid/app/Activity;

.field private mPowerWarning:Landroid/widget/TextView;

.field private mSDcardOngoingWarning:Landroid/view/View;

.field private mThis:Landroid/app/Fragment;

.field private mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/android/settings/security/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/settings/security/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    new-instance v0, Lcom/android/settings/security/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/security/CryptKeeperSettings$1;-><init>(Lcom/android/settings/security/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/security/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/security/CryptKeeperSettings$2;-><init>(Lcom/android/settings/security/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/security/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/security/CryptKeeperSettings;)Lcom/samsung/android/security/SemSdCardEncryption;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/security/CryptKeeperSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/security/CryptKeeperSettings;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/security/CryptKeeperSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/security/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private addEncryptionInfoToPreference(Landroid/support/v7/preference/Preference;ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "password"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hasTSafeLock()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.skt.t_smart_charge"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "com.skt.t_smart_charge"

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    move v1, v3

    :cond_1
    nop

    return v1

    :catch_0
    move-exception v4

    return v3
.end method

.method private isTSafeLock()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/security/CryptKeeperSettings;->hasTSafeLock()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "off_menu_setting"

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v2, v4

    nop

    :cond_1
    return v2
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-direct {p0, v3, v2}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    return v3

    :cond_0
    const v2, 0x7f120597

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v1, 0x7f120590

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/security/CryptKeeperSettings;->addEncryptionInfoToPreference(Landroid/support/v7/preference/Preference;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const v2, 0x7f120597

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v1, "type"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v2, v2, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUcsOdeEnabled in activity result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/security/CryptKeeperSettings;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v5, v5, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget v2, v2, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledWrap:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "ucs_savein_false"

    invoke-direct {p0, v4, v2}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "ucs_savein_true"

    invoke-direct {p0, v4, v2}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    iput-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mThis:Landroid/app/Fragment;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/security/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    const-string v0, ""

    sget-object v1, Lcom/android/settings/security/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    sget-object v1, Lcom/android/settings/security/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/security/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    :cond_1
    const v0, 0x7f0d0057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0402

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0a090e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0a090a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    const v3, 0x7f1205a3

    new-array v4, v2, [Ljava/lang/Object;

    const/16 v5, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/security/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_2
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mUserPolicies:Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a090c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a090d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/samsung/android/settings/ucm/EFSProperties;->loadODEConfig()Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mOdeProp:Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f12058f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
