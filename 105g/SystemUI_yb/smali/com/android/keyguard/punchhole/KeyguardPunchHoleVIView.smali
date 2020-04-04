.class public Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.super Landroid/widget/FrameLayout;
.source "KeyguardPunchHoleVIView.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mAppliedVIFileName:Ljava/lang/String;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCurrentAnimation:I

.field private final mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mInBouncer:Z

.field private mIsAnimationPlaying:Z

.field private mLastDensityDpi:I

.field private mLastLayoutDirection:I

.field private mLastUpdatedRotation:I

.field private mLastUpdatedScreenSize:Landroid/graphics/Point;

.field private mPreparedState:I

.field private final mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

.field private mVIView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mInBouncer:Z

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenSize:Landroid/graphics/Point;

    new-instance v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    new-instance v1, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$NBTKeXmKOSl5D8mYBceB8H15er8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$NBTKeXmKOSl5D8mYBceB8H15er8;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    new-instance v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDensityDpi:I

    new-instance v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenRotation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDensityDpi:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDensityDpi:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocation()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenRotation()V

    return-void
.end method

.method public static synthetic lambda$prepareVI$1(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;ZLcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareVI() - VI is prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocation()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$prepareVI$2(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse json composition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    return-void
.end method

.method private prepareVI(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareVI() - return, no VI file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareVI() - return, already applied : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$8ZCHZQfqeeOKhSVCVLs9l5dTkTg;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$8ZCHZQfqeeOKhSVCVLs9l5dTkTg;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Z)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    new-instance v1, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$oG3ySgNJFVr4e1A0fcIUnJuzL8w;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/punchhole/-$$Lambda$KeyguardPunchHoleVIView$oG3ySgNJFVr4e1A0fcIUnJuzL8w;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    return-void
.end method

.method private setAnimation(I)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    return-void
.end method

.method private setPrepareState(I)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrepareState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    return-void
.end method

.method private updateScreenRotation()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreenRotation() return - mVIDirector is null ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenSize:Landroid/graphics/Point;

    invoke-virtual {v2, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScreenRotation() rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", screen size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocation()V

    :cond_2
    return-void
.end method

.method private updateVILocation()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVILocation() return - mVIDirector is null ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    iget v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(IZ)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVILocation() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v2}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewRotation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->removeListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/punchhole/VIDirectorFactory;->createVIDirector(Landroid/content/Context;)Lcom/android/keyguard/punchhole/VIDirector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishInflate() return - mVIDirector is null ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    return-void

    :cond_0
    const v0, 0x7f0a02a0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareAcceleration(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    return-void
.end method

.method public setAffordanceVI()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAffordanceVI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_AFFORDANCE_VI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAffordanceVI() return - affordance vi is not supported by product feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAffordanceVI() return - mVIDirector is null ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setAnimation(I)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getCameraAffordanceVIFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->prepareVI(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFaceRecognitionVI()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFaceRecognitionVI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_FACE_VI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFaceRecognitionVI() return - face recognition vi is not supported by product feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFaceRecognitionVI() return - mVIDirector is null ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->VENDOR_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setAnimation(I)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getFaceRecognitionVIFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->prepareVI(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInBouncer(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mInBouncer:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "_Bouncer"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public startVI()V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVI() - return, not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVI() - return, animation is already playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVI()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public stopVI()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVI() - return, not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVI() - return, animation is not playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    return-void
.end method
