.class public Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "IrisSettingsPreferenceController.java"


# static fields
.field private static final KEY_IRIS_SETTINGS:Ljava/lang/String; = "iris_settings"

.field private static final TAG:Ljava/lang/String; = "IrisSettingsPreferenceController"


# instance fields
.field private mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V
    .locals 1

    const-string v0, "iris_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    return-void
.end method

.method private isIrisPreferenceEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_3

    :cond_2
    const-string v2, "IrisSettingsPreferenceController"

    const-string v4, "Disabling Irises menu for SD in case of Pin/Pattern as locktype"

    invoke-static {v2, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eqz v1, :cond_4

    return v3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private startIrisSettings()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IrisSettingsPreferenceController"

    const-string v1, "isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1209d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

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

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->isIrisPreferenceEnabled()Z

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

    const-string v0, "iris_settings"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->startIrisSettings()V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f120be1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f120bcb

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

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
