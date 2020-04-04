.class public Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BiometricsUnlockType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/BiometricsUnlockType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiometricsUnlockTypeFragment"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mFaceButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mIntelligentScanButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mIrisButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mIsFingerprintLockEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRequestLockType:I

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mFaceButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIrisButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIntelligentScanButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object v0
.end method

.method private addBottomButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d012e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x800005

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f1500a2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->setBiometricsPreference()V

    return-object v0
.end method

.method private setBiometricsPreference()V
    .locals 4

    const-string v0, "BiometricsUnlockTYpe"

    const-string v1, "addBiometricsPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "biometrics_lock_setting_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const-string v0, "face_unlock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mFaceButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "iris_unlock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIrisButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "intelligent_scan_unlock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIntelligentScanButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mRequestLockType:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getBiometricsLockDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mFaceButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIsFingerprintLockEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mFaceButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v2, 0x7f1202ce

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mFaceButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIrisButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIsFingerprintLockEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIrisButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v2, 0x7f1202d2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIrisButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIntelligentScanButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIsFingerprintLockEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIntelligentScanButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v2, 0x7f1202d0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getIntelligentScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIntelligentScanButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method private updatePrefState(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :cond_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "BiometricsUnlockTYpe"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mUserId:I

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mRequestLockType:I

    const-string v1, "BiometricsUnlockTYpe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BiometricsUnlockTYpe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mRequestLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mRequestLockType:I

    if-nez v1, :cond_1

    const-string v1, "BiometricsUnlockTYpe"

    const-string v2, "Wrong request lock type!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mRequestLockType:I

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAppId(I)I

    move-result v2

    const-string v3, "BiometricsUnlockTYpe"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->finish()V

    return-void

    :cond_2
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_3

    const-string v1, "BiometricsUnlockTYpe"

    const-string v2, "LockPatternUtils is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->finish()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFingerprintUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->mIsFingerprintLockEnabled:Z

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const-string v0, "BiometricsUnlockTYpe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->updatePrefState(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "BiometricsUnlockTYpe"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->addBottomButton()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsUnlockType$BiometricsUnlockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
