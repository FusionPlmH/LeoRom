.class public Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "IntelligentScanSettingsPreferenceController.java"


# static fields
.field private static final KEY_SMART_SCAN:Ljava/lang/String; = "smart_scan"

.field private static final TAG:Ljava/lang/String; = "IntelligentScanSettingsPreferenceController"


# instance fields
.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V
    .locals 1

    const-string v0, "smart_scan"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object p2, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    return-void
.end method

.method private isIntelligentScanPreferenceEnabled()Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private startSmartScanSettings()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IntelligentScanSettingsPreferenceController"

    const-string v1, "isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1209de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.smartscan.SmartScanEntry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

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
.method public getAvailabilityStatus()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->isIntelligentScanPreferenceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x4

    return v1

    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "smart_scan"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->startSmartScanSettings()V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f1218da

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f1218d9

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    instance-of v1, p1, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    return-void
.end method