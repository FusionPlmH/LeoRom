.class public Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseBiometricPromptTypeFragment.java"


# instance fields
.field private mFaceRecognition:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mFingerprint:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mIntelligentScan:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mIrisScanner:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initBiometricPreferenceState(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mFaceRecognition:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mFingerprint:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mIntelligentScan:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mIrisScanner:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removePreference()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledIris(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mIntelligentScan:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mIntelligentScan:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mIrisScanner:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mFaceRecognition:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mFingerprint:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private setDefaultPromptTypeByPriority()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->getBiometricPromptType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "ChooseBiometricPromptTypeFragment"

    const-string v1, "BIOMETRICS_PROMPT_TYPE value was already existed"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledIris(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/16 v5, 0x8

    :cond_1
    if-ne v5, v1, :cond_4

    if-eqz v2, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    const/4 v5, 0x2

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    return-void
.end method

.method private updatePrefState(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :cond_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x5761a0ea

    if-eq v6, v7, :cond_7

    const v7, 0x4ac03ae

    if-eq v6, v7, :cond_6

    const v7, 0x4ada164

    if-eq v6, v7, :cond_5

    const v5, 0x59234e73

    if-eq v6, v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v5, "bp_fingerprint"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    goto :goto_3

    :cond_5
    const-string v6, "bp_iris"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_3

    :cond_6
    const-string v5, "bp_face"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_3

    :cond_7
    const-string v5, "bp_intelligent_scan"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v4

    :goto_3
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_3
    const/16 v0, 0x8

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2139

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15009f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->addPreferencesFromResource(I)V

    const-string v0, "bp_intelligent_scan"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mIntelligentScan:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "bp_iris"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mIrisScanner:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "bp_face"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mFaceRecognition:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "bp_fingerprint"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->mFingerprint:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->setDefaultPromptTypeByPriority()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->getBiometricPromptType(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->initBiometricPreferenceState(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const-string v0, "ChooseBiometricPromptTypeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->updatePrefState(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;->removePreference()V

    return-void
.end method
