.class public Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ConfirmLockDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mBackUpPinButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChallengeFace:J

.field private mChallengeIris:J

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentPwd:Ljava/lang/String;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mEffectiveUserId:I

.field private mEmptyString:Ljava/lang/String;

.field private mFlagForEnabled:Z

.field private mFlgToChkConfChng:Z

.field private mFrp:Z

.field private mFrpAlternateButtonText:Ljava/lang/CharSequence;

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyStepCircleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleViewState:Z

.field private mHasAlternateButton:Z

.field private mHeaderString:Ljava/lang/String;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mLeftBtnState:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckFace:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckIris:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mRightBtnState:Z

.field private mRightButton:Landroid/widget/Button;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mStepCircleDown:Landroid/graphics/Bitmap;

.field private mStepCircleLayout:Landroid/widget/LinearLayout;

.field private mStepCircleLeft:Landroid/graphics/Bitmap;

.field private mStepCircleRight:Landroid/graphics/Bitmap;

.field private mStepCircleUp:Landroid/graphics/Bitmap;

.field private mUserId:I

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z

.field private showArrow:Z

.field private stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEmptyString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHandleViewState:Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->clearStepCircles()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->checkForCorrectPassword()V

    return-void
.end method

.method static synthetic access$1602(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeIris:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->onDirectionChecking(ZLandroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheckIris:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeFace:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheckFace:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method private applyFrpButtonStyle(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private attachListeners()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$8;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$10;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    return-void
.end method

.method private checkForCorrectPassword()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "has_challenge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ConfirmLockDirection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForCorrectPassword verifyChallenge:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private clearStepCircles()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "clearStepCircles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-void
.end method

.method private endOngoingAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const-string v0, "ConfirmLockDirection"

    const-string v1, "handleAttemptLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->LockedOut:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v8, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$14;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$14;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;JJ)V

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$14;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "ConfirmLockDirection"

    const-string v1, "handleStepCircle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xa9b

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const v3, 0x201ca2

    if-eq v2, v3, :cond_4

    const v3, 0x239807

    if-eq v2, v3, :cond_3

    const v3, 0x4a5c9fc

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "RIGHT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "LEFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "DOWN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    const-string v2, "UP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v4

    :cond_6
    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    nop

    :goto_1
    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    const v2, -0x3b3b3c

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_8

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->performAnimations()V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleViewState()V
    .locals 5

    const/4 v0, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlock:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initializeAnimations()V
    .locals 10

    const-string v0, "ConfirmLockDirection"

    const-string v1, "initializeAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    iget v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    int-to-long v8, v8

    mul-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$4;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$5;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070118

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070116

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070117

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v1, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    new-array v0, v0, [F

    double-to-float v1, v4

    const/4 v8, 0x0

    aput v1, v0, v8

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v1, v1

    div-long/2addr v1, v6

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    int-to-long v6, v3

    mul-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$7;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeDirectionView()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    iget v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    return-void
.end method

.method private initializing()V
    .locals 5

    const v0, 0x7f0d0152

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setContentView(I)V

    const v0, 0x7f120d8e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHasAlternateButton:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeIdentifiers()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->loadCustomSettings()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeDirectionView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->loadStepCircleVariables()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeAnimations()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setInitialState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->attachListeners()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private isVibrationSupport()Z
    .locals 2

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private loadCustomSettings()V
    .locals 5

    const-string v0, "ConfirmLockDirection"

    const-string v1, "loadCustomSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v1, v4, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVoice:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v1, v4, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playBeep:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->isVibrationSupport()Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVibration:Z

    goto :goto_3

    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVibration:Z

    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->showArrow:Z

    return-void
.end method

.method private loadStepCircleVariables()V
    .locals 5

    const-string v0, "ConfirmLockDirection"

    const-string v1, "loadStepCircleVariables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a07d3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802c6

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802c9

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802c7

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802c8

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private onDirectionChecking(ZLandroid/content/Intent;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->checkForPendingIntent()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->userPasswordForBiometrics:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v0, 0x0

    if-lez p3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlockWrong:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->postClearPatternRunnable()V

    :goto_0
    return-void
.end method

.method private performAnimations()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "postClearPatternRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    return-void
.end method

.method private setInitialState()V
    .locals 6

    const-string v0, "ConfirmLockDirection"

    const-string/jumbo v1, "setInitialState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlock:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DirectionLockView;->showDirectionArrow(C)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, ""

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x44

    if-eq v4, v5, :cond_4

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_3

    const/16 v5, 0x52

    if-eq v4, v5, :cond_2

    const/16 v5, 0x55

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "UP"

    goto :goto_2

    :cond_2
    const-string v3, "RIGHT"

    goto :goto_2

    :cond_3
    const-string v3, "LEFT"

    goto :goto_2

    :cond_4
    const-string v3, "DOWN"

    nop

    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :cond_6
    const/4 v0, -0x1

    nop

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setRequestedOrientation(I)V

    :cond_7
    return-void
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const-string v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startCheckPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const-string v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startVerifyPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeIris:J

    iput-wide v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeFace:J

    iget-wide v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeIris:J

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeFace:J

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-wide v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    new-instance v7, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    invoke-direct {v7, p0, p2, p1, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;Ljava/util/List;I)V

    move-object v3, p1

    move v6, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V
    .locals 7

    const-string v0, "ConfirmLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStage to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->clearStepCircles()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$15;->$SwitchMap$com$samsung$android$settings$accessibility$directionlock$ConfirmLockDirection$Stage:[I

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "ConfirmLockDirection"

    const-string v1, "LockedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "ConfirmLockDirection"

    const-string v2, "NeedToUnlockWrong"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f120d79

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto :goto_0

    :pswitch_2
    const-string v0, "ConfirmLockDirection"

    const-string v4, "NeedToUnlock"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    const v4, 0x7f120722

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120730

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected checkForPendingIntent()V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

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
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v1

    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :cond_1
    :goto_0
    return-void
.end method

.method initializeIdentifiers()V
    .locals 3

    const-string v0, "ConfirmLockDirection"

    const-string v1, "initializeIdentifiers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    const v0, 0x7f0a0252

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const v0, 0x7f0a04a9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mMainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a045f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    const v0, 0x7f0a0687

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    const v0, 0x7f0a00b3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    const v0, 0x7f0a0884

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    const v0, 0x7f0a0370

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    const v1, 0x7f0a0158

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHasAlternateButton:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHasAlternateButton:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->applyFrpButtonStyle(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "ConfirmLockDirection"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->endOngoingAnimations()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializing()V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHandleViewState:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleViewState()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mUserId:I

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mUserId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, -0x270f

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFrp:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFrp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHasAlternateButton:Z

    const-string v0, "ConfirmLockDirection"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "onCreate savedInstanceState is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "currentPwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    const-string v0, "headerString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    const-string v0, "leftBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    const-string v0, "rightBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializing()V

    const v0, 0x7f0a0881

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    const-string v0, "ConfirmLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: challenge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->freeUpMemory()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    const-string v0, "ConfirmLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const v0, 0x7f120d50

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    return-void

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "ConfirmLockDirection"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "ConfirmLockDirection"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHandleViewState:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleViewState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    const-string v0, "currentPwd"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "headerString"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "leftBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "rightBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
