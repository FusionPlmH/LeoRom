.class public Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;
.super Ljava/lang/Object;
.source "KeyguardTouchLockScreenManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;,
        Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutCallback;
    }
.end annotation


# static fields
.field private static final LOCK_SCREEN_COLOR:I

.field private static final TRANSPARENT_COLOR:I


# instance fields
.field private mAppinfoView:Landroid/view/View;

.field private mCanSwipe:Z

.field mContext:Landroid/content/Context;

.field private mDisplayChangeAbility:I

.field private mDistance:D

.field private mGameAppMenu:Landroid/view/View;

.field private mGameExitButton:Landroid/widget/Button;

.field private mGameRestartButton:Landroid/widget/Button;

.field private mIsTouching:Z

.field private mOrientation:I

.field private mRestoreAnimSet:Landroid/animation/AnimatorSet;

.field private mShowing:Z

.field private final mSineOut33:Landroid/view/animation/Interpolator;

.field private mSwipeUnlockRadius:I

.field private mTargetBasePackage:Ljava/lang/String;

.field private mTargetTaskId:I

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mTimeOutCallback:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutCallback;

.field private mTimeOutHandler:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchLockScreen:Landroid/view/View;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xcc

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->LOCK_SCREEN_COLOR:I

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->TRANSPARENT_COLOR:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;)Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTimeOutCallback:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTargetTaskId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTargetBasePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->onActionDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->onActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->onActionUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private cancelRestoreAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "KeyguardTouchLockScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchLockScreen ACTION_DOWN - canSwipe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mCanSwipe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->cancelRestoreAnimation()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTimeOutHandler:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mCanSwipe:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mIsTouching:Z

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mDistance:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchDownY:F

    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mIsTouching:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchDownX:F

    sub-float v2, v0, v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchDownY:F

    sub-float v3, v1, v3

    float-to-int v3, v3

    int-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mDistance:D

    iget-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mDistance:D

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->updateChildViewVI(D)V

    const/4 v4, 0x1

    return v4
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "KeyguardTouchLockScreenManager"

    const-string v1, "TouchLockScreen ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mDistance:D

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchSlop:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->restoreChildViewVI()V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mDisplayChangeAbility:I

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "810"

    const-string v1, "8101"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "800"

    const-string v1, "8001"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "830"

    const-string v1, "8301"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->unlock()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mIsTouching:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private renewalScreenTimeOut()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTimeOutHandler:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTimeOutHandler:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTimeOutHandler:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private restoreChildViewVI()V
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->renewalScreenTimeOut()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private updateChildViewVI(D)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mSwipeUnlockRadius:I

    int-to-double v1, v1

    sub-double/2addr v1, p1

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mSwipeUnlockRadius:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateLayout(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    const v3, 0x7f070811

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    const v8, 0x7f0a05f5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    const v9, 0x7f0a05fa

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    const v10, 0x7f0a05f7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameRestartButton:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameExitButton:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v1, v4, :cond_0

    iget-object v14, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07080e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v2, v6, v6, v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, -0x1

    iput v3, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v10, v6, v14, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWeightSum()F

    move-result v16

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v16, v16, v17

    const/high16 v18, 0x42700000    # 60.0f

    mul-float v4, v16, v18

    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameRestartButton:Landroid/widget/Button;

    invoke-virtual {v4, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v11, v6, v14, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWeightSum()F

    move-result v3

    div-float v3, v3, v17

    mul-float v3, v3, v18

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameExitButton:Landroid/widget/Button;

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07080c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f07080d

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v14, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070810

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v6, v6, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v15, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v15, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x7f07080f

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v10, v3, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWeightSum()F

    move-result v15

    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v15, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameRestartButton:Landroid/widget/Button;

    invoke-virtual {v15, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v15, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v11, v3, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWeightSum()F

    move-result v5

    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameExitButton:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mAppinfoView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mAppinfoView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mCanSwipe:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070811

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    const v3, 0x7f0a05f8

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mAppinfoView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mOrientation:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mShowing:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->updateLayout(I)V

    const-string v0, ""

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "ORIENTATION_PORTRAIT"

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v0, "ORIENTATION_LANDSCAPE"

    :cond_2
    :goto_0
    const-string v1, "KeyguardTouchLockScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public resetViewVisibilities()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mThumbnailView:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->TRANSPARENT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mThumbnailView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mAppinfoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mGameAppMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public unlock()V
    .locals 3

    const-string v0, "KeyguardTouchLockScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlock() main screen check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    if-eqz v2, :cond_0

    const-string v2, "OK"

    goto :goto_0

    :cond_0
    const-string v2, "FAIL"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTimeOutHandler:Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager$TimeOutHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTouchLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->resetViewVisibilities()V

    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mDisplayChangeAbility:I

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mShowing:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTargetBasePackage:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mTargetTaskId:I

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardTouchLockScreenManager;->mCanSwipe:Z

    return-void
.end method
