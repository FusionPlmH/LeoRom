.class public Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BiometricsSecurityUpdatePreferenceController.java"


# static fields
.field public static final REQEUST_BIOMETRICS_UPDATE_DIALOG:I = 0xff5

.field public static final RESULT_CANCEL:I = 0x1

.field public static final RESULT_UPDATE:I = 0x2

.field private static final STATUS_AVAILABLE:I = 0x1

.field private static final STATUS_LASTEST:I = 0x3

.field private static final STATUS_UPDATING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BiometricsSecurityUpdatePreferenceController"

.field private static final TA_DIALOG_ACTION:Ljava/lang/String; = "com.samsung.android.tadownloader.SHOW_UPDATE_DIALOG"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V
    .locals 1

    const-string v0, "biometrics_security_patch"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    return-void
.end method

.method private isBiometricsPatchEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "biometrics_security_patch_status"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x20000

    if-eq v0, v4, :cond_1

    const/high16 v4, 0x30000

    if-eq v0, v4, :cond_1

    const/high16 v4, 0x10000

    if-ne v0, v4, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    if-eqz v1, :cond_5

    return v3

    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method private showLatestAlert()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1202ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120301

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController$1;-><init>(Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsSecurityPatch()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.tadownloader.SHOW_UPDATE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    const/16 v2, 0xff5

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportSecurityPatchUpdate()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->isBiometricsPatchEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x4

    return v2

    :cond_4
    const/4 v2, 0x2

    return v2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "biometrics_security_patch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mHost:Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "biometrics_security_patch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "biometrics_security_patch_status"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "BiometricsSecurityUpdatePreferenceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreferenceTreeClick status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2347

    const/16 v3, 0x2135

    invoke-static {v1, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v2, 0x2141

    invoke-static {v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->startBiometricsSecurityPatch()V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/16 v2, 0x2144

    invoke-static {v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->showLatestAlert()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "biometrics_security_patch_status"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "BiometricsSecurityUpdatePreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string v1, "BiometricsSecurityUpdatePreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState unexpected db value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const v2, 0x7f120301

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f120302

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    const v2, 0x7f120300

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
