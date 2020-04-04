.class public Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BiometricsOptionPreferenceController.java"


# static fields
.field private static final KEY_BIOMETRICS_OPTION:Ljava/lang/String; = "biometrics_option"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "biometrics_option"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;

    iget-object v3, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;

    iget-object v3, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;

    iget-object v3, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledIris(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;)Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method
