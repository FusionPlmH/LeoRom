.class public Lcom/android/settings/fingerprint/FingerprintEnrollActivity;
.super Landroid/app/Activity;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;,
        Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;,
        Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;
    }
.end annotation


# static fields
.field private static final TIME_ENROLL_DELAY:I


# instance fields
.field private fromShowGuidewithTipDialog:Z

.field private mAuthErrorHandler:Landroid/os/Handler;

.field private mAuthErrorImage:Landroid/widget/ImageView;

.field private mAuthErrorRunnable:Ljava/lang/Runnable;

.field private mAuthErrorText:Landroid/widget/TextView;

.field private mAuthGuidePlayCount:I

.field private mAuthenticateCancel:Landroid/os/CancellationSignal;

.field private mBackEnabled:Z

.field private mBackHandler:Landroid/os/Handler;

.field private mCaptureNG:I

.field private mCaptureOK:I

.field private mClearHomekey:I

.field private mCoversTheEntire:I

.field private mDetailGuideText:Landroid/widget/TextView;

.field private mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

.field private mEnrolledCount:I

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mErrorMessage:Landroid/view/ViewGroup;

.field private mErrorText:Landroid/widget/TextView;

.field private mEventProgressBarCount:I

.field private mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFirstGuideScreen:Landroid/widget/RelativeLayout;

.field private mGuideText:Landroid/view/ViewGroup;

.field private mGuideTitle:Landroid/widget/TextView;

.field private mHideErrorHandler:Landroid/os/Handler;

.field private mHideErrorRunnable:Ljava/lang/Runnable;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsBackSecond:Z

.field private mIsButtonClicked:Z

.field private mIsCalledLiftMsg:Z

.field private mIsDesktopMode:Z

.field private mIsDisplaySensor:Z

.field private mIsFingerGestureSet:Z

.field private mIsFinishRegistration:Z

.field private mIsFirstGuideShow:Z

.field private mIsFirstGuideShowClose:Z

.field private mIsFromSetupwizard:Z

.field private mIsInMultiWindowMode:Z

.field private mIsPauseRegistration:Z

.field private mIsReCreated:Z

.field private mIsRearSensor:Z

.field private mIsRegisterCompleted:Z

.field private mIsRegisterStarted:Z

.field private mIsRotateGuideShow:Z

.field private mIsSensorInLandscape:Z

.field private mIsShowErrorMsg:Z

.field private mIsShowSensorErrorDialog:Z

.field private mIsShownLiftMsg:Z

.field private mIsSideSensor:Z

.field private mIsSkipGuideScreen:Z

.field private mIsSupportSwipeEnroll:Z

.field private mIsSwipeEnrollGuideShow:Z

.field private mIsVibrationSupport:Z

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

.field private mLiftOff:I

.field private mLittleLonger:I

.field private mMaskViewToken:Landroid/os/IBinder;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgHandler:Landroid/os/Handler;

.field private mMsgRunnable:Ljava/lang/Runnable;

.field private mNextButtonArea:Landroid/widget/LinearLayout;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevButtonArea:Landroid/widget/LinearLayout;

.field private mRegisterScreen:Landroid/widget/RelativeLayout;

.field private mSecondGuideScreen:Landroid/widget/RelativeLayout;

.field private mSemAuthCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

.field private mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field private mSensorStatus:I

.field private mShowErrorHandler:Landroid/os/Handler;

.field private mShowErrorRunnable:Ljava/lang/Runnable;

.field private mSurface:Landroid/view/Surface;

.field private mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

.field private mTextureView:Landroid/view/TextureView;

.field private mToken:[B

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTxtViewProgress:Landroid/widget/TextView;

.field private mUpAndDown:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isRearSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->fromShowGuidewithTipDialog:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEventProgressBarCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mBackEnabled:Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mKeyboardDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterStarted:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUpAndDown:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLittleLonger:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCoversTheEntire:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mClearHomekey:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftOff:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCaptureOK:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCaptureNG:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDesktopMode:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthGuidePlayCount:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRearSensor:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSideSensor:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsButtonClicked:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsBackSecond:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mBackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSemAuthCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsBackSecond:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showGuideScreen(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runCompleteRegistration()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->eventProcess(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic access$2708(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCoversTheEntire:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCoversTheEntire:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2908(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mClearHomekey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mClearHomekey:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic access$3008(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLittleLonger:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLittleLonger:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->hideGuideScreen(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mErrorMessage:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    return-void
.end method

.method static synthetic access$3908(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCaptureOK:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCaptureOK:I

    return v0
.end method

.method static synthetic access$4008(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCaptureNG:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mCaptureNG:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftOff:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftOff:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showAuthenticateResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finishRegistration()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrolledCount:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrolledCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->adjustTextureViewRatio(II)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startEnrollment()V

    return-void
.end method

.method static synthetic access$5600()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->chageGuideVideo(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startAuthentication()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideText:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustTextureViewRatio(II)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v4, v4

    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v7, v6}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    int-to-float v7, v4

    int-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v7, v6}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method private chageGuideVideo(I)V
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x12c

    if-ne p1, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FpstFingerprintEnrollActivity"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private disableSystemKey()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSideSensor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "ro.product.device"

    const-string/jumbo v2, "unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "winner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x43a

    invoke-direct {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x1a

    invoke-direct {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mBackEnabled:Z

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isNaviBarHideAndGestureTurnOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_3

    const/high16 v1, 0x1200000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_3
    return-void
.end method

.method private enableSystemKey()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :cond_1
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :cond_2
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :cond_3
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :cond_4
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_5
    return-void
.end method

.method private eventProcess(ILjava/lang/CharSequence;)V
    .locals 3

    move v0, p1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$5;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishRegistration()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    if-eqz v0, :cond_0

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "finishRegistration() already run."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "finishRegistration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "enrollResult"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    return-void
.end method

.method private getFingerRegisterText()I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEventProgressBarCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/16 v0, 0x190

    return v0

    :cond_0
    const/16 v0, 0x192

    return v0
.end method

.method private getGuideClipURI(II)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_recognition_tap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_h_01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_h_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_v_01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_v_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideGuideScreen(I)V
    .locals 6

    const-wide/16 v0, 0x12c

    const/16 v2, 0xc8

    const/16 v3, 0xc9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a0821

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const v0, 0x7f0a0826

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showExpendGuideVI()V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    const/16 v2, 0x190

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setFingerGuideText(I)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$8;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$8;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$6;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideNavigationBar()V
    .locals 2

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private initLayoutHeight(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->KBD:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070434

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    :goto_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v3, v3

    const v5, 0x7f0a064d

    invoke-direct {p0, v5, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a064e

    invoke-direct {p0, v5, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a0655

    invoke-direct {p0, v5, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a0821

    invoke-direct {p0, v5, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a0826

    invoke-direct {p0, v5, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setViewHeight(ID)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07043b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    float-to-double v6, v5

    mul-double/2addr v6, v3

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    double-to-int v9, v6

    double-to-int v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addEffectView(II)V

    :cond_1
    return-void
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private isVibrationSupport()Z
    .locals 2

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private removeErrorMessageHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mShowErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private runCompleteRegistration()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mBackEnabled:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startCompleteEffect()V

    return-void
.end method

.method private runTextToSpeech(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    :cond_0
    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runTextToSpeech can\'t be executed : mTts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setFingerGuideText(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "mDetailGuideText is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f120a0d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f120a40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEventProgressBarCount:I

    const/16 v1, 0x50

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f120a1e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f121497

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f120a46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFingerGuideTitle(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "mGuideTitle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    const v2, 0x7f121498

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    const v2, 0x7f120a15

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    const v2, 0x7f120a13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_4
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEventProgressBarCount:I

    const/16 v3, 0x50

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    const v3, 0x7f12149a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    const v3, 0x7f120a14

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v2, 0x7f0a0651

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-gt v4, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07042e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    nop

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setLayoutHeight()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSideSensor:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v2, "setLayoutHeight : Keyboard is mounted. Can\'t enroll finger."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120a3d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f1209b6

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showFingerprintKeyboardDialog(Ljava/lang/String;)V

    return v5

    :cond_1
    :goto_0
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v2, "setLayoutHeight : Keyboard is mounted. Reduce the layout."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->KBD:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->initLayoutHeight(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;)V

    goto :goto_1

    :cond_2
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v2, "setLayoutHeight : Keyboard is not mounted."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->initLayoutHeight(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;)V

    :goto_1
    return v1
.end method

.method private setViewHeight(ID)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    double-to-int v2, p2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private setViewVisibility(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showAuthenticateResult(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_1
    const/16 v0, 0xc8

    const/16 v1, 0x64

    const/4 v2, 0x4

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0xcb

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_3
    const v4, 0x7f120a1a

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    :cond_4
    :goto_0
    const v3, 0x7f0a0824

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xd2

    invoke-direct {p0, v4, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    if-nez p1, :cond_6

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    const v4, 0x7f0803a1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_6
    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$9;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    :cond_7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageQuality["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideText:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v2, 0xcb

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideText:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mShowErrorRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mShowErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$13;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$13;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run_Runnable_ErrorMSG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "undefined imageQuality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showGuidewithTipDialog()V

    :goto_0
    return-void
.end method

.method private showFingerprintKeyboardDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120a3e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$15;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$15;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$14;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$14;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mKeyboardDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showGuideScreen(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getFingerRegisterText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setFingerGuideText(I)V

    :cond_1
    const/16 v0, 0xcf

    const/16 v1, 0xc9

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    const v2, 0x7f0a0830

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    const v2, 0x7f0a0822

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const v0, 0x7f0a0825

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    const v2, 0x7f120a19

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    const/16 v5, 0xcb

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideText:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v1, 0x7f0a053d

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    const v2, 0x7f1209d2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    goto :goto_0

    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$16;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$16;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const v0, 0x7f0a0653

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    goto :goto_2

    :pswitch_2
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    const v0, 0x7f0a0656

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    if-nez v1, :cond_6

    const v1, 0x7f121497

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSideSensor:Z

    if-eqz v1, :cond_7

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v1, 0x7f120a12

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-eqz v1, :cond_8

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v1, 0x7f120a10

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f0a0652

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_guide_shown"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setFocusable(Z)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showGuidewithTipDialog()V
    .locals 3

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v1, "showGuidewithTipDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$18;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$18;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$17;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$17;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq p1, v3, :cond_6

    const/16 v3, 0x3e9

    if-eq p1, v3, :cond_5

    const/16 v3, 0x3eb

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1389

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "always_finish_activities"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1209e3

    new-array v0, v0, [Ljava/lang/Object;

    const v6, 0x7f120b8f

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v3, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v3, "Do not support ONE_HAND_MODE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    :cond_7
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    const v3, 0x186c8

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    const v3, 0x186c9

    if-ne v2, v3, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "FpstFingerprintEnrollActivity"

    const-string v3, "Session closed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    goto :goto_2

    :cond_9
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$20;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$20;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$19;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$19;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    if-eqz v3, :cond_a

    invoke-static {v2}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_a
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void
.end method

.method private startAuthentication()V
    .locals 9

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v1, "startAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthGuidePlayCount:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSideSensor:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthGuidePlayCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthGuidePlayCount:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    const/16 v0, 0x12e

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->hideGuideScreen(I)V

    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sem_privileged_attr"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSemAuthCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->authenticate(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "mSemFingerprintManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    :goto_0
    return-void
.end method

.method private startCompleteEffect()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mErrorMessage:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startEnrollment()V
    .locals 7

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v1, "startEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    aget-byte v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v2, "Challenge is incorrect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    :cond_3
    const/16 v0, 0x203f

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void

    :cond_4
    :goto_0
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v2, "startEnrollment : mToken or mFingerprintManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    return-void

    :cond_5
    :goto_1
    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip startEnrollment!! mIsPauseRegistration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | mEnrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startViewAnimation(ILandroid/view/View;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x3f2b851f    # 0.67f

    const v4, 0x3ea8f5c3    # 0.33f

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    const v10, 0x3e4ccccd    # 0.2f

    const-wide/16 v11, 0x14a

    const/4 v13, 0x4

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f010028

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v4, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-boolean v5, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x2ee

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const v22, 0x3dcccccd    # 0.1f

    move-object/from16 v14, v23

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v14, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v5, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v4, v7, v10, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v22, Landroid/view/animation/TranslateAnimation;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const v19, 0x3dcccccd    # 0.1f

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v13, v22

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v5, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v4, v7, v3, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v4, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const v16, 0x3cf5c28f    # 0.03f

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v10, 0x190

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v4, v7, v3, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f733333    # 0.95f

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3f733333    # 0.95f

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x1

    const/high16 v22, 0x3f000000    # 0.5f

    move-object v14, v6

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v4, v7, v10, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v11}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v10, 0x96

    invoke-virtual {v6, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v6, v9}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v4, v7, v3, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const/16 v10, 0xca

    const v11, 0x3e19999a    # 0.15f

    if-eq v1, v10, :cond_3

    const/16 v10, 0xce

    if-eq v1, v10, :cond_2

    goto :goto_0

    :cond_2
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v4, v7, v3, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v12}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v11, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v4, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v4, v7, v3, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v12}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v8, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v4, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x202a

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finishRegistration()V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->hideGuideScreen(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x202c

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrolledCount:I

    int-to-long v3, v3

    invoke-static {v1, v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsButtonClicked:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsButtonClicked:Z

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12e

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showGuideScreen(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finishRegistration()V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x202b

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsButtonClicked:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsButtonClicked:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IsReCreated"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MaskViewToken"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->overridePendingTransition(II)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->overridePendingTransition(II)V

    nop

    :cond_4
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a003e -> :sswitch_2
        0x7f0a0041 -> :sswitch_2
        0x7f0a0282 -> :sswitch_1
        0x7f0a0284 -> :sswitch_1
        0x7f0a053c -> :sswitch_1
        0x7f0a05ea -> :sswitch_0
    .end sparse-switch
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->hideGuideScreen(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01a0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "NULL"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "fromSetupwizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsFromSetupwizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "skipGuideScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsSkipGuideScreen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : isInMultiWindowMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDesktopMode:Z

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : mIsDesktopMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDesktopMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "IsReCreated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->isVibrationSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "MaskViewToken"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDesktopMode:Z

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_2

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v3, "[onCreate] mFingerprintManager == null"

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    if-eqz v1, :cond_15

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    const v4, 0x186c8

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    const v4, 0x186c9

    if-eq v3, v4, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isOpticalSensor()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    :cond_4
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isRearSensor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRearSensor:Z

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSideSensor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSideSensor:Z

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSensorInLandscape()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    const-string v1, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : mIsRearSensor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRearSensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsSideSensor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSideSensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsDisplaySensor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsSensorInLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    aget-byte v1, v1, v2

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    goto/16 :goto_4

    :cond_5
    const v1, 0x7f0a0654

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0320

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06dc

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0a0823

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    :cond_6
    const v1, 0x7f0a0300

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    const v1, 0x7f0a0363

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideText:Landroid/view/ViewGroup;

    const v1, 0x7f0a0323

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f0a0616

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    const/16 v1, 0x190

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setFingerGuideText(I)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    const v5, 0x7f121495

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/CharSequence;

    const-string v7, "%d"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a02d6

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mErrorMessage:Landroid/view/ViewGroup;

    const v4, 0x7f0a02d7

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mErrorText:Landroid/widget/TextView;

    const v4, 0x7f0a0041

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_7

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_7
    const v5, 0x7f0a0284

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_8

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_8
    const v6, 0x7f0a0282

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_9

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_9
    const v7, 0x7f0a0650

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->hideNavigationBar()V

    const v1, 0x7f0a0145

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v7, 0x7f0a053c

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    const v7, 0x7f0a05ea

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v7, 0x7f0a003e

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_c

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setLayoutHeight()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterStarted:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->disableSystemKey()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "fingerprint_gesture_quick"

    invoke-static {v1, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1

    :cond_f
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "fingerprint_gesture_quick"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_10
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_11
    const/16 v1, 0x12c

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showGuideScreen(I)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_13

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "CALL semStartCalibration()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semStartCalibration()V

    goto :goto_3

    :cond_12
    :goto_2
    const/16 v1, 0xc8

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const/16 v1, 0xcf

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mGuideText:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startEnrollment()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    const-wide/16 v7, 0x12c

    invoke-virtual {v1, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    :cond_13
    :goto_3
    return-void

    :cond_14
    :goto_4
    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "Token is not available!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    return-void

    :cond_15
    :goto_5
    const-string v2, "FpstFingerprintEnrollActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate] isHardwareDetected = false, requestGetSensorStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSensorStatus:I

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    return-void

    :cond_16
    :goto_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "enrollResult"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDesktopMode:Z

    if-eqz v3, :cond_17

    const v3, 0x7f120a0e

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_17
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    if-eqz v3, :cond_18

    const v3, 0x7f1209de

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_18
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finishRegistration()V

    return v1

    :cond_0
    const v0, 0x7f120a47

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-eqz v4, :cond_1

    const-string v4, "enrollResult"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v4, "enrollResult"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mBackEnabled:Z

    if-nez v4, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsBackSecond:Z

    if-nez v4, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsBackSecond:Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mBackHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_2
    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v4, "FingerprintEnrollActivity is terminated by Back key !!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsBackSecond:Z

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x202a

    const/16 v2, 0x202d

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrolledCount:I

    int-to-long v4, v4

    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onPause()V
    .locals 5

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->enableSystemKey()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isOpticalSensor()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterStarted:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mEnrollState:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    if-eq v1, v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->cancelEnrollment()V

    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    if-eqz v3, :cond_7

    const-string v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mToken:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_7
    const-string v3, "enrollResult"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFromSetupwizard:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsButtonClicked:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-nez v3, :cond_9

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    :cond_a
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_gesture_quick"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IsReCreated"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsReCreated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x12c

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x12d

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x12e

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x9c4

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v3, 0x88bc

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$23;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$23;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$24;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$24;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "SecurityException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    :cond_4
    :goto_1
    nop

    :goto_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "Remove_Error_Runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    :cond_0
    return-void
.end method
