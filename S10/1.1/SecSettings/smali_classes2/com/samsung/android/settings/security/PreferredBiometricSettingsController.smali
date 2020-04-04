.class public Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreferredBiometricSettingsController.java"


# static fields
.field private static final KEY_PREFERRED_BIOMETRIC:Ljava/lang/String; = "preferred_biometric_type"

.field private static final PPP_CONFIRMATION_REQUEST:I = 0x4bd


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHost:Lcom/samsung/android/settings/security/BiometricsOptionSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsOptionSettings;)V
    .locals 1

    const-string v0, "preferred_biometric_type"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mHost:Lcom/samsung/android/settings/security/BiometricsOptionSettings;

    return-void
.end method

.method private launchBiometricsPromptTypeSettings()V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/security/ChooseBiometricPromptTypeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mHost:Lcom/samsung/android/settings/security/BiometricsOptionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/BiometricsOptionSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f1210e9

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;

    iget-object v3, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;

    iget-object v3, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;

    iget-object v3, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public handleActivityResult(II)Z
    .locals 1

    const/16 v0, 0x4bd

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->launchBiometricsPromptTypeSettings()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferred_biometric_type"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mHost:Lcom/samsung/android/settings/security/BiometricsOptionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/BiometricsOptionSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mHost:Lcom/samsung/android/settings/security/BiometricsOptionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/BiometricsOptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mHost:Lcom/samsung/android/settings/security/BiometricsOptionSettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v1, 0x4bd

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->launchBiometricsPromptTypeSettings()V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledIris(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_1
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->getBiometricPromptType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    const v3, 0x7f1210e8

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    const v3, 0x7f1202b1

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    :pswitch_1
    const v3, 0x7f1202b2

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_2
    const v3, 0x7f1202b4

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_3
    const v3, 0x7f1202b3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    nop

    :goto_2
    instance-of v3, p1, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
