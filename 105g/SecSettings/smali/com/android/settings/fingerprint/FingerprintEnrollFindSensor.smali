.class public Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# instance fields
.field private mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

.field private mLaunchedConfirmLock:Z

.field private mNextClicked:Z

.field private mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 12

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v10

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    const v3, 0x7f121751

    const/16 v4, -0x2710

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    move-object v2, v1

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    :goto_1
    return-void
.end method

.method private proceedToEnrolling(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const-string/jumbo v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    const v0, 0x7f0d0081

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    const v0, 0x7f01004e

    const v1, 0x7f01004f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    :cond_2
    if-ne p2, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    :goto_0
    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0775

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->onSkipButtonClick()V

    nop

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    const v0, 0x7f0a0775

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f12173c

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    if-eqz p1, :cond_0

    const-string v1, "launched_confirm_lock"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    :cond_2
    :goto_0
    const v1, 0x7f0a030f

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method protected onSkipButtonClick()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStart()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStop()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    :cond_0
    return-void
.end method
