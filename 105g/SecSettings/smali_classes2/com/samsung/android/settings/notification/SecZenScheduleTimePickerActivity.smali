.class public Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;
.super Landroid/app/Activity;
.source "SecZenScheduleTimePickerActivity.java"

# interfaces
.implements Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;
.implements Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dialogBtnClickListener:Landroid/view/View$OnClickListener;

.field private mAllDay:Landroid/view/View;

.field private mApplyBtn:Landroid/widget/TextView;

.field private mCancelBtn:Landroid/widget/TextView;

.field private mClockLayout:Landroid/widget/LinearLayout;

.field private mCurrentTab:I

.field private mDefaultEndTime:I

.field private mDefaultStartTime:I

.field private mDurationLayout:Landroid/view/View;

.field private mEndLeftAMPMText:Landroid/widget/TextView;

.field private mEndRightAMPMText:Landroid/widget/TextView;

.field private mEndTabSpec:Landroid/widget/TabHost$TabSpec;

.field private mEndTime:I

.field private mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

.field private mEndTimeText:Landroid/widget/TextView;

.field private mIs24HourFormat:Z

.field private mIsEndTimeEditMode:Z

.field private mIsStartTimeEditMode:Z

.field private mMobileKeyboard:Z

.field private mNightModeOn:Z

.field private mSecScheduleModeOn:Z

.field private mStartLeftAMPMText:Landroid/widget/TextView;

.field private mStartRightAMPMText:Landroid/widget/TextView;

.field private mStartTabSpec:Landroid/widget/TabHost$TabSpec;

.field private mStartTime:I

.field private mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

.field private mStartTimeText:Landroid/widget/TextView;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTempEndTime:I

.field private mTempStartTime:I

.field private mTildeText:Landroid/widget/TextView;

.field private mTimeDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIs24HourFormat:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTimeDuration:I

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCurrentTab:I

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->dialogBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Lcom/samsung/android/widget/SemTimePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Lcom/samsung/android/widget/SemTimePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mClockLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private adjustPickersPaddings()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mMobileKeyboard:Z

    const v3, 0x7f0703e3

    const v4, 0x7f0703e5

    const v5, 0x7f0703e6

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    const v6, 0x7f0703e4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private animateSliding(Z)V
    .locals 6

    const v0, 0x7f0a0195

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mClockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$4;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;

    invoke-direct {v5, p0, v0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$5;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;Landroid/widget/LinearLayout;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private dp2px(I)I
    .locals 3

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private endTimeChange(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempEndTime:I

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setEndTime(IZ)V

    return-void
.end method

.method private init()V
    .locals 5

    const/16 v0, 0x1a4

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mDefaultStartTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mDefaultEndTime:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mNightModeOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sec_schedulemode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mSecScheduleModeOn:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->is24HourFormat()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIs24HourFormat:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "mStartTime"

    iget v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mDefaultStartTime:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "mEndTime"

    iget v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mDefaultEndTime:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mMobileKeyboard:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->adjustPickersPaddings()V

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    iget v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    if-ne v1, v3, :cond_2

    move v0, v2

    nop

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setAllDay(Z)V

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setStartTime(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    const/16 v1, 0x22d

    new-instance v2, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$3;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemTimePicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    return-void
.end method

.method private is24HourFormat()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    instance-of v3, v2, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x48

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    const-string v0, "24"

    goto :goto_0

    :cond_0
    const-string v0, "12"

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "12"

    :goto_1
    const-string v3, "24"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_2
    const-string v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setAllDay(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mAllDay:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mDurationLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setEndTime(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    iput p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    div-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    rem-int/lit8 v1, v1, 0x3c

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget-boolean v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIs24HourFormat:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xb

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundUtils;->isAmPmLeftSide(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndLeftAMPMText:Landroid/widget/TextView;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndRightAMPMText:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v4, :cond_b

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move v9, v10

    goto :goto_3

    :cond_4
    move v9, v7

    :goto_3
    if-eqz v9, :cond_5

    xor-int/lit8 v11, v3, 0x1

    move v3, v11

    :cond_5
    if-eqz v9, :cond_7

    invoke-static {v10}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move v10, v7

    :goto_4
    move v3, v10

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndLeftAMPMText:Landroid/widget/TextView;

    if-nez v3, :cond_8

    move v11, v6

    goto :goto_5

    :cond_8
    move v11, v7

    :goto_5
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndRightAMPMText:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    move v6, v7

    :goto_6
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndLeftAMPMText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndRightAMPMText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_7
    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundUtils;->getHourMinformat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimeText:Landroid/widget/TextView;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v7, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method private setStartTime(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    iput p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    div-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    rem-int/lit8 v1, v1, 0x3c

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemTimePicker;->setHour(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTimePicker;->setMinute(I)V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget-boolean v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIs24HourFormat:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xb

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundUtils;->isAmPmLeftSide(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartLeftAMPMText:Landroid/widget/TextView;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartRightAMPMText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v3, :cond_b

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move v9, v10

    goto :goto_3

    :cond_4
    move v9, v7

    :goto_3
    if-eqz v9, :cond_5

    xor-int/lit8 v11, v4, 0x1

    move v4, v11

    :cond_5
    if-eqz v9, :cond_7

    invoke-static {v10}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move v10, v7

    :goto_4
    move v4, v10

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartLeftAMPMText:Landroid/widget/TextView;

    if-nez v4, :cond_8

    move v11, v6

    goto :goto_5

    :cond_8
    move v11, v7

    :goto_5
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartRightAMPMText:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    move v6, v7

    :goto_6
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartLeftAMPMText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartRightAMPMText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_7
    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundUtils;->getHourMinformat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimeText:Landroid/widget/TextView;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v7, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method private startTimeChange(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempStartTime:I

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setStartTime(IZ)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mClockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lt v1, v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_1

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dim area is clicked. finish! => x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", t :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", b : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->finish()V

    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const v1, 0x7f010038

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setRequestedOrientation(I)V

    :goto_0
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x7f0a0193

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mDurationLayout:Landroid/view/View;

    const v2, 0x7f0a0192

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mAllDay:Landroid/view/View;

    const v2, 0x7f0a07cb

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimeText:Landroid/widget/TextView;

    const v2, 0x7f0a07cc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartLeftAMPMText:Landroid/widget/TextView;

    const v2, 0x7f0a07cd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartRightAMPMText:Landroid/widget/TextView;

    const v2, 0x7f0a02be

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimeText:Landroid/widget/TextView;

    const v2, 0x7f0a02bf

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndLeftAMPMText:Landroid/widget/TextView;

    const v2, 0x7f0a02c0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndRightAMPMText:Landroid/widget/TextView;

    const v2, 0x7f0a085c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTildeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTildeText:Landroid/widget/TextView;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "mCurrentTab"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCurrentTab:I

    const v3, 0x7f0a07c6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    const v4, 0x7f121450

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v5, 0x7f0a07ca

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTabSpec:Landroid/widget/TabHost$TabSpec;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTabSpec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    const v4, 0x7f12144f

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v5, 0x7f0a02bd

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTabSpec:Landroid/widget/TabHost$TabSpec;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTabSpec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    new-instance v4, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$1;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const v3, 0x7f0a07c9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemTimePicker;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemTimePicker;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0a02bc

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemTimePicker;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/widget/SemTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemTimePicker;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0a0194

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mClockLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mClockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v5, 0x260

    if-ge v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->dp2px(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->dp2px(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mClockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0a0863

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mApplyBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mApplyBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->dialogBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mApplyBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    const v4, 0x7f0a0862

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCancelBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCancelBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->dialogBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->init()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public onEditTextModeChanged(Lcom/samsung/android/widget/SemTimePicker;Z)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->animateSliding(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTimePicker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a02bc

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a07c9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempStartTime:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempStartTime:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->startTimeChange(I)V

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    if-eqz p2, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    iput v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempEndTime:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempEndTime:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->endTimeChange(I)V

    nop

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    iget v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setAllDay(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->is24HourFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIs24HourFormat:Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIs24HourFormat:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIs24HourFormat:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-boolean v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsStartTimeEditMode:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTimePicker;->setEditTextMode(Z)V

    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempStartTime:I

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTimePicker:Lcom/samsung/android/widget/SemTimePicker;

    iget-boolean v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mIsEndTimeEditMode:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTimePicker;->setEditTextMode(Z)V

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTempEndTime:I

    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setStartTime(IZ)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setEndTime(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCurrentTab:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCurrentTab:I

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTab "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "mCurrentTab"

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTimeChanged(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTimePicker;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a02bc

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a07c9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->startTimeChange(I)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->endTimeChange(I)V

    nop

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mStartTime:I

    iget v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->mEndTime:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setAllDay(Z)V

    return-void
.end method
