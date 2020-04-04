.class public Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;
.super Landroid/app/Activity;
.source "KnoxDedicatedFingerPrintDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static mAuthenticationResult:I

.field private static mPrefType:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fingerId:I

.field private mAlert:Landroid/app/AlertDialog;

.field private mAnimationBox:Landroid/widget/RelativeLayout;

.field private mAttr:Landroid/os/Bundle;

.field private mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

.field private mBackGroundView:Landroid/view/View;

.field private mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mDialogLogoIconView:Landroid/widget/ImageView;

.field private mDialogView:Landroid/view/View;

.field private mErrClearRunnable:Ljava/lang/Runnable;

.field private mFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field private mFingerprintManager1:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mInfoBox:Landroid/widget/RelativeLayout;

.field private mInfoImage:Landroid/widget/ImageView;

.field private mInfoText:Landroid/widget/TextView;

.field private mIsCheckAdded:Z

.field private mIsRetry:Z

.field private mTimeoutTitle:Landroid/widget/TextView;

.field private mTitleArea:Landroid/widget/FrameLayout;

.field private mTitleText:Landroid/widget/TextView;

.field private mUserId:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mPrefType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mFingerprintManager1:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->fingerId:I

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackGroundView:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7d8

    const v6, 0x8000d18

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mIsCheckAdded:Z

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;-><init>(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->handleIdentifyFail(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->stopAuthentication()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mIsRetry:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->launchHomeScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mIsCheckAdded:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mFingerprintManager1:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->setInfoText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->handleIdentifySuccess()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->startIdentify()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->fingerId:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private dismiss()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxDedicatedFingerPrintDialog"

    const-string v2, "dismiss : failed to dismiss alert dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackGroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackGroundView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "KnoxDedicatedFingerPrintDialog"

    const-string v2, "dismiss : failed to remove bg view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->stopAuthenticationForFingerprint()V

    return-void
.end method

.method private getDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0199

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    const v4, 0x10302d2

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$4;-><init>(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    const v4, 0x7f120474

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$3;-><init>(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private handleIdentifyFail(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    const-string v1, "handleIdentifyFail called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->setInfoText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->startRunnable()V

    return-void
.end method

.method private declared-synchronized handleIdentifySuccess()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mIsCheckAdded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->startRunnable()V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->startIdentify()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAuthenticationResult:I

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->stopAuthentication()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private launchHomeScreen()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private setBottomMarginForDialog()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxDedicatedFingerPrintDialog"

    const-string v2, "Unable to set margin because dialog window is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setInfoText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showFingerprintAuthenticateDialog()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackGroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackGroundView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackGroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxDedicatedFingerPrintDialog"

    const-string v2, "show dialog : failed to show background view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->showIdentifyDialog()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->startIdentify()V

    return-void
.end method

.method private showIdentifyDialog()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "KnoxDedicatedFingerPrintDialog"

    const-string v3, "showIdentifyDialog : failed to get builder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7f0a03d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7f0a03df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7f0a03dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7f0a03db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7f0a03dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7f0a0866

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mTimeoutTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7f0a03e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mTitleArea:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mIsCheckAdded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1209c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121372

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d8

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mIsCheckAdded:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120a30

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->setInfoText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f121b54

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->setInfoText(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    const v2, 0x7f0803e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->isFingerprintSensorInDisplay()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->setBottomMarginForDialog()V

    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method private startAuthentication()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startIdentify()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mUserId:I

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAttr:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->authenticate(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-void
.end method

.method private startRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$2;-><init>(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAuthentication()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopAuthenticationForFingerprint()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    sget v0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAuthenticationResult:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->finish()V

    return-void
.end method

.method public static vibrateForFingerprintError(Landroid/content/Context;)V
    .locals 5

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xc36d

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->showFingerprintAuthenticateDialog()V

    nop

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isFingerprintSensorInDisplay()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mFingerprintManager1:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAttr:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAttr:Landroid/os/Bundle;

    const-string v1, "sem_privileged_attr"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "preftype"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mPrefType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "check_added"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mIsCheckAdded:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "userId"

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mUserId:I

    sput v1, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mAuthenticationResult:I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0273

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mBackGroundView:Landroid/view/View;

    :try_start_0
    const-string v1, "switch"

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mPrefType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "PREV_FINGER_PLUS_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->fingerId:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "fingerId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->fingerId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "KnoxDedicatedFingerPrintDialog"

    const-string v3, "Not able to fetch dedicated fingerprint ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->startAuthentication()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->stopAuthentication()V

    return-void
.end method
