.class public Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;
.super Ljava/lang/Object;
.source "AppDockAnimationHelper.java"


# static fields
.field public static final easeOutCirc:Landroid/view/animation/Interpolator;

.field public static final exitInterpolator:Landroid/view/animation/Interpolator;

.field public static mIsLayoutChangeAnimRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->easeOutCirc:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->exitInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIsLayoutChangeAnimRunning()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return v0
.end method

.method public static requestLayoutChangeAnimation(Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper$1;

    invoke-direct {v1}, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method

.method public static setIsLayoutChangeAnimRunning(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method
