.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;
.implements Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;
.implements Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;
    }
.end annotation


# instance fields
.field protected mCancelButton:Landroid/widget/Button;

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected mEffectiveUserId:I

.field protected mErrorTextView:Landroid/widget/TextView;

.field protected mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field protected mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;

.field protected mFrp:Z

.field private mFrpAlternateButtonText:Ljava/lang/CharSequence;

.field protected final mHandler:Landroid/os/Handler;

.field private mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

.field protected mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field protected mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field protected mIrisPreviewLayout:Landroid/widget/LinearLayout;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field protected mReturnCredentials:Z

.field private mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

.field protected mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field protected mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$4;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getUserTypeForWipe()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_1
    const/4 v1, 0x3

    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private getWipeMessage(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized user type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f12153a

    return v0

    :pswitch_1
    const v0, 0x7f121539

    return v0

    :pswitch_2
    const v0, 0x7f121537

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFingerprintAllowed()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isFingerprintAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private isFingerprintAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isIntelligentScanAllowed()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.settings.ConfirmCredentials.allowIntelligentScanAuthentication"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isIBLockDisabled(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    return v2
.end method

.method private isInternalActivity()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isIrisAllowed()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.settings.ConfirmCredentials.allowIrisAuthentication"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private setWorkChallengeBackground(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, p2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a00b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract applyWorkProfileStyle()V
.end method

.method protected abstract authenticationSucceeded()V
.end method

.method protected checkForPendingIntent()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TASK_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract getLastTryErrorMessage(I)I
.end method

.method protected isStrongAuthRequired()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAuthenticated()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->checkForPendingIntent()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "return_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isInternalActivity()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    const/16 v3, -0x270f

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIrisVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->stopListening()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    return-void
.end method

.method protected abstract onShowDefault()V
.end method

.method protected abstract onShowError()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a041c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0421

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v0, 0x7f0a078b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0791

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v0, 0x7f0a0158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    const v0, 0x7f0a0301

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintUiHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a02d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/settings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    nop

    :cond_2
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    move-object v3, v2

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/iris/IrisUiHelper;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;I)V

    iput-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    move-object v3, v2

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;I)V

    iput-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    nop

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isInternalActivity()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->setWorkChallengeBackground(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->applyWorkProfileStyle()V

    :cond_6
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    return-void
.end method

.method protected refreshIrisAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->stopListening()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->startListening()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected refreshLockScreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isIrisAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->startListening()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->stopListening()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isIntelligentScanAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->startListening()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->stopListening()V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    return-void
.end method

.method protected refreshSmartScanAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->stopListening()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->startListening()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected reportFailedAttempt()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    return-void
.end method

.method protected reportSuccessfulAttempt()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_0
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v2, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a086b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AppCompatTextView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected showError(IJ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method protected showError(Ljava/lang/CharSequence;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onShowError()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    return-void
.end method

.method protected updateErrorMessage(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    if-lez v0, :cond_4

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f120d36

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    :cond_1
    sub-int v1, v0, p1

    if-le v1, v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getUserTypeForWipe()I

    move-result v5

    const/4 v6, 0x0

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f120d3d

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getLastTryErrorMessage(I)I

    move-result v8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-virtual {p0, v8, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v9, 0x104000a

    invoke-static {v4, v6, v3, v9, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getWipeMessage(I)I

    move-result v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v8, 0x7f121538

    invoke-static {v4, v6, v2, v8, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZ)Z

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
