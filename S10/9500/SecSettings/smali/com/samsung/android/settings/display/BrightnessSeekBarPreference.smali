.class public Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static isAlreadyShownBrightMaxDialog:Z


# instance fields
.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticMode:Z

.field private mBrightness:I

.field private mBrightnessAnimationBoundary:I

.field private mBrightnessAnimationNum:I

.field private mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mChangeType:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mDialogForMaxBrightness:Landroid/app/AlertDialog;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHBMText:Landroid/widget/TextView;

.field private mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

.field private mInitFinish:Z

.field private mInternalChange:Z

.field private mIsFocusable:Z

.field private mIsHBMOnOff:Z

.field mIsLessThanMaxValue:Z

.field private mIsRestricted:Z

.field private mIsTalkBackEnabled:Z

.field private mMaxBrightness:I

.field private mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverheatTextview:Landroid/widget/TextView;

.field private mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

.field private mPmsBrightness:I

.field private mPower:Landroid/os/IPowerManager;

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field mSupportAutoBrightnessDetail:Z

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0d0227

    const v6, 0x7f0a0120

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsTalkBackEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationNum:I

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$8;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    const-string v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "min Brightness : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isSupportAutoBrightnessDetail()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "high_brightness_mode_pms_enter"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mTracking:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private animateSliderTo(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getInitFinish()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/display/-$$Lambda$BrightnessSeekBarPreference$ypRos2qkEjM6u0Z8qH5601TVz3M;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/-$$Lambda$BrightnessSeekBarPreference$ypRos2qkEjM6u0Z8qH5601TVz3M;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "auto_brightness_transition_time"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getBrightness()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isInVrMode()Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness_for_vr"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    if-gez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "brightness_pms_marker_screen"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    int-to-float v0, v1

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v0, v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :cond_4
    return v0
.end method

.method private getBrightnessMode(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private isFolderClose()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isInVrMode()Z
    .locals 4

    :try_start_0
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    const-string v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInVrMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BrightnessSeekBarPreference"

    const-string v2, "Failed to check vr mode!"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static synthetic lambda$animateSliderTo$0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method private setBrightness(I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v0, v2

    mul-int v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    int-to-float v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const-string v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "valf : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v0, v2

    mul-int v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    :goto_0
    return-void
.end method

.method private setBrightnessAnimation(I)V
    .locals 6

    const-string v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSeekBar.getProgress() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v1, v2

    mul-int v2, v0, v1

    int-to-float v2, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v2, v3

    div-int/lit8 v0, v1, 0x4

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationBoundary:I

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationBoundary:I

    const/4 v3, 0x3

    mul-int/2addr v0, v3

    const/4 v4, 0x1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationNum:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationBoundary:I

    const/4 v5, 0x2

    mul-int/2addr v0, v5

    if-ge v0, v2, :cond_1

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationNum:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationBoundary:I

    if-ge v0, v2, :cond_2

    iput v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationNum:I

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationNum:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Brightness_icon_0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationNum:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".json"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationNum:I

    sub-int/2addr v0, v4

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationBoundary:I

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessAnimationBoundary:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const-string v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animationValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private setBrightnessByValue(I)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "valf : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    :goto_0
    return-void
.end method

.method private setBrightnessLimit()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v0, v1

    int-to-double v1, v0

    const-wide v3, 0x4056800000000000L    # 90.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightnessLimit >> limit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method private setMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isAdaptiveBrightnessNoLSEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setValue(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessByValue(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    mul-int v1, v0, p1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFocusChange() mCheckBox.isChecked()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_0
    return-void
.end method

.method private showBrightnessAlertDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1213a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$10;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateBrightness()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v1, v2

    mul-int v2, v0, v1

    int-to-float v2, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v2, v3

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_brightness_transition_time"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "screen_brightness"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private updateDualColorRange(Landroid/widget/SeekBar;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide v4, 0x4056800000000000L    # 90.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int v3, v0, v2

    div-int/2addr v3, v1

    const-string v4, "BrightnessSeekBarPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDualColorRange >> value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "limit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "#f7c0bd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#f1462f"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    return-void
.end method


# virtual methods
.method public brightnessNotifyChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public changeSeekbarColor(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0805f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getInitFinish()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideHbmText()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isAdaptiveBrightnessNoLSEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    const v3, 0x7f0a0120

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v3, v5, :cond_3

    return-void

    :cond_3
    iget-object v5, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v5, 0x7f0a0121

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const v5, 0x7f0a0367

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v5

    const/16 v6, 0x8

    const v7, 0x7f0a00a9

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->supportAdaptiveBrightnessNoLS(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const v5, 0x7f0a00ac

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f1201b0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v9, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    const v5, 0x7f0a011f

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroid/widget/SeekBar;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightness:I

    iget v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightness:I

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v6, "com.android.settings_preferences"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref_siop_brightness"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref_siop_brightness_change_type"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMaxBrightnessLimit(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    :cond_5
    const-string v1, "BrightnessSeekBarPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onbindview Utils.isSupportPersonalAutoBrightness() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mAutomaticMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsHBMOnOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "shown_max_brightness_dialog"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    nop

    :cond_6
    sput-boolean v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsTalkBackEnabled:Z

    return-void
.end method

.method public onBrightnessChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v0

    const-string v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBrightnessChanged()  brightnessValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->animateSliderTo(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onBrightnessModeChanged()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    move v0, v2

    nop

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroid/widget/SeekBar;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->animateSliderTo(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x64

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "brightness_pms_marker_screen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "brightness_user_touch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/16 v3, 0x27

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.nttdocomo.android.dhome"

    const-string v7, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v4, :cond_1

    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    aget v3, v4, v2

    :cond_1
    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "brightness_pms_marker_screen"

    invoke-static {v2, v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    iget v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "brightness_pms_marker_screen"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    :cond_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "no_config_brightness"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onClick()V

    :goto_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFocusChange() mAutomaticMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_0
    const-string v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on stop tracking touch brightness DB input:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_DPAD_LEFT mAutomaticMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5a

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightness:I

    if-ge v3, v1, :cond_4

    sget-boolean v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    xor-int/2addr v3, v4

    if-le p2, v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V

    return-void

    :cond_2
    sget-boolean v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    if-nez v3, :cond_3

    if-gt p2, v1, :cond_4

    if-eqz p3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    const/4 v5, -0x1

    if-ge v3, p2, :cond_5

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-eq v3, v5, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_7

    iput-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :cond_7
    :goto_1
    const-string v2, "BrightnessSeekBarPreference"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_8

    return-void

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_9
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightness(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    goto :goto_2

    :cond_a
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsTalkBackEnabled:Z

    if-eqz v2, :cond_b

    if-nez p3, :cond_c

    :cond_b
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    if-nez v2, :cond_d

    if-eqz p3, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_d

    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_d
    :goto_2
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessAnimation(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessLimit()V

    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x1068

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightness:I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "brightness_user_touch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    const-string v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onstoptracking isSupportPersonalAutoBrightness() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAutomaticMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHBMOnOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", brightness_user_touch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "brightness_user_touch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_2
    return-void
.end method

.method public registerBrightnessObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "brightness_pms_marker_screen"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string v1, "high_brightness_mode_pms_enter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "shown_max_brightness_dialog"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0xff

    return v0
.end method

.method public setFlipCloseStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInitFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return-void
.end method

.method public setMaxBrightnessLimit(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    int-to-float v0, v0

    iput p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v0, 0x461c4000    # 10000.0f

    mul-float v2, v1, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :goto_0
    return-void
.end method

.method public setRestrictedBrightness(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->notifyChanged()V

    return-void
.end method

.method public unRregisterBrightnessObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
