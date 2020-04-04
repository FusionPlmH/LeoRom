.class Lcom/samsung/android/widget/SemSimpleMonthView;
.super Landroid/view/View;
.source "SemSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;,
        Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;,
        Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_MONTH_LINE:I = 0x6

.field private static final DEFAULT_NUM_DAYS:I = 0x7

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final DIVISOR_FOR_CIRCLE_POSITION_Y:F = 2.7f

.field private static final LEAP_MONTH:I = 0x1

.field private static final LEAP_MONTH_WEIGHT:F = 0.5f

.field private static final MAX_MONTH_VIEW_ID:I = 0x2a

.field private static final MIN_HEIGHT:I = 0xa

.field private static final MONTH_WEIGHT:I = 0x64

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemSimpleMonthView"

.field private static final YEAR_WEIGHT:I = 0x2710


# instance fields
.field private final mAbnormalStartEndDateBackgroundAlpha:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCalendarWidth:I

.field private mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

.field private final mDateBackgroundBetweenStartEndAlpha:I

.field private mDayColorSet:[I

.field private mDayLengthMethod:Ljava/lang/reflect/Method;

.field private mDayNumberDisabledAlpha:I

.field private mDayNumberEndPaint:Landroid/graphics/Paint;

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDaySelectedCircleSize:I

.field private mDaySelectedCircleStroke:I

.field private mDaySelectedStartEndAdjust:I

.field private mDayStartEndPaint:Landroid/graphics/Paint;

.field private mDefaultWeekdayFeatureString:Ljava/lang/String;

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mEndDay:I

.field private mEndDayColor:I

.field private mEndMonth:I

.field private mEndYear:I

.field private mGetDayMethod:Ljava/lang/reflect/Method;

.field private mGetMonthMethod:Ljava/lang/reflect/Method;

.field private mGetWeekDayMethod:Ljava/lang/reflect/Method;

.field private mGetYearMethod:Ljava/lang/reflect/Method;

.field private mIsFirstMonth:Z

.field private mIsLastMonth:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsNextMonthLeap:Z

.field private mIsPrevMonthLeap:Z

.field private mIsRTL:Z

.field private mLastDay:I

.field private mLockAccessibilityDelegate:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMiniDayNumberTextSize:I

.field private mMode:I

.field private mMonth:I

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

.field private mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

.field private mPadding:I

.field private mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private final mPrevNextMonthDayNumberAlpha:I

.field private mSaturdayTextColor:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mStartDay:I

.field private mStartMonth:I

.field private mStartYear:I

.field private mSundayTextColor:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

.field private mWeekHeight:I

.field private mWeekStart:I

.field private mWeekdayFeatureString:Ljava/lang/String;

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1110106

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    iput v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    const-string v0, "XXXXXXR"

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010434

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    const v4, 0x1060184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/R$styleable;->SemDatePicker:[I

    invoke-virtual {v4, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    const v4, 0x1060183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    nop

    const v4, 0x10601b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    nop

    const v4, 0x10e0136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v4, 0x10502b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    const v4, 0x10502a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const v4, 0x10502a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    const v4, 0x10502a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    const v4, 0x10502aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    const v4, 0x10502a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    const v4, 0x10502a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    new-instance v4, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v4, p0, p0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/samsung/android/widget/SemSimpleMonthView;Landroid/view/View;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->setImportantForAccessibility(I)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x10e0137

    if-eqz v2, :cond_0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    :cond_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    const v4, 0x10e0134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    const v4, 0x10e0133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/widget/SemSimpleMonthView;FF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/widget/SemSimpleMonthView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(III)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    return v0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const/4 v8, 0x2

    mul-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x3

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    mul-int/2addr v3, v8

    div-int v9, v2, v3

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float v10, v5, v6

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    add-int/2addr v5, v6

    int-to-float v11, v5

    const/4 v5, 0x0

    move v12, v2

    iget v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    int-to-float v6, v6

    iget v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    iget v15, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    int-to-float v8, v8

    move/from16 v17, v12

    iget v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    const/high16 v19, 0x3f000000    # 0.5f

    move/from16 v20, v5

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v1, v5, :cond_0

    add-float v6, v6, v19

    :cond_0
    move/from16 v21, v6

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v1, v5, :cond_1

    add-float v8, v8, v19

    :cond_1
    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    int-to-float v1, v1

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v5, :cond_2

    add-float v1, v1, v19

    :cond_2
    move/from16 v19, v1

    const/4 v1, 0x0

    mul-int/lit16 v5, v13, 0x2710

    const/high16 v23, 0x42c80000    # 100.0f

    move/from16 v24, v1

    mul-float v1, v21, v23

    float-to-int v1, v1

    add-int/2addr v5, v1

    mul-int/lit16 v1, v15, 0x2710

    move/from16 v25, v2

    mul-float v2, v8, v23

    float-to-int v2, v2

    add-int/2addr v2, v1

    mul-int/lit16 v1, v6, 0x2710

    move/from16 v26, v3

    mul-float v3, v19, v23

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    move/from16 v27, v4

    if-eqz v1, :cond_4

    add-int v1, v5, v14

    add-int v4, v2, v12

    if-le v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move/from16 v24, v1

    :cond_4
    if-nez v24, :cond_9

    if-ne v13, v15, :cond_5

    cmpl-float v1, v21, v8

    if-nez v1, :cond_5

    if-ne v6, v13, :cond_5

    cmpl-float v1, v19, v21

    if-nez v1, :cond_5

    move v1, v14

    move v4, v12

    :goto_1
    move/from16 v49, v4

    move v4, v1

    move/from16 v1, v49

    goto :goto_2

    :cond_5
    if-ge v5, v3, :cond_7

    if-ge v3, v2, :cond_7

    if-ne v6, v15, :cond_6

    cmpl-float v1, v19, v8

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    iget v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    const/16 v22, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-ne v6, v13, :cond_8

    cmpl-float v1, v19, v21

    if-nez v1, :cond_8

    move v1, v14

    iget v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    const/16 v22, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    if-ne v6, v15, :cond_9

    cmpl-float v1, v19, v8

    if-nez v1, :cond_9

    const/4 v1, 0x0

    move v4, v12

    goto :goto_1

    :cond_9
    move/from16 v4, v26

    move/from16 v1, v27

    :goto_2
    move/from16 v29, v5

    move/from16 v5, v18

    const/16 v18, 0x1

    :goto_3
    move/from16 v30, v18

    move/from16 v31, v2

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v32, v3

    move/from16 v3, v30

    if-gt v3, v2, :cond_23

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    const/16 v22, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v23, v2, v25

    const/16 v16, 0x2

    mul-int v23, v23, v16

    add-int/lit8 v23, v23, 0x1

    mul-int v23, v23, v9

    move/from16 v33, v2

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v23, v23, v2

    nop

    move/from16 v34, v11

    goto :goto_4

    :cond_a
    const/16 v16, 0x2

    const/16 v22, 0x1

    mul-int v2, v16, v25

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v9

    move/from16 v34, v11

    iget v11, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v23, v2, v11

    :goto_4
    move/from16 v11, v23

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int v2, v25, v2

    move/from16 v35, v9

    iget v9, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v9, v2, v9

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move/from16 v36, v1

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v1, v1, v9

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-lt v3, v1, :cond_b

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-le v3, v1, :cond_c

    :cond_b
    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    if-eqz v24, :cond_13

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    if-ne v13, v6, :cond_d

    cmpl-float v2, v21, v19

    if-nez v2, :cond_d

    if-ne v14, v3, :cond_d

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    move/from16 v37, v9

    const/4 v9, 0x2

    if-eq v2, v9, :cond_e

    goto :goto_5

    :cond_d
    move/from16 v37, v9

    :goto_5
    if-ne v15, v6, :cond_f

    cmpl-float v2, v8, v19

    if-nez v2, :cond_f

    if-ne v12, v3, :cond_f

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_f

    :cond_e
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v11

    int-to-float v9, v5

    sub-float/2addr v9, v10

    move/from16 v38, v4

    iget v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v4, v4

    invoke-virtual {v7, v2, v9, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_f
    move/from16 v38, v4

    :goto_6
    if-ne v15, v6, :cond_11

    cmpl-float v2, v8, v19

    if-nez v2, :cond_11

    if-ne v12, v3, :cond_11

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_10

    goto :goto_7

    :cond_10
    const/4 v9, 0x1

    goto :goto_8

    :cond_11
    :goto_7
    if-ne v13, v6, :cond_12

    cmpl-float v2, v21, v19

    if-nez v2, :cond_12

    if-ne v14, v3, :cond_12

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_12

    :goto_8
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v11

    int-to-float v4, v5

    sub-float/2addr v4, v10

    iget v9, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v9, v9

    invoke-virtual {v7, v2, v4, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_12
    nop

    move/from16 v26, v6

    move/from16 v40, v8

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v23, v29

    move/from16 v30, v31

    move/from16 v15, v35

    move/from16 v45, v36

    move/from16 v13, v38

    move v12, v3

    move v14, v5

    goto/16 :goto_e

    :cond_13
    move/from16 v38, v4

    move/from16 v37, v9

    iget-object v9, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-ge v4, v3, :cond_15

    move/from16 v1, v36

    if-ge v3, v1, :cond_14

    sub-int v2, v11, v35

    int-to-float v2, v2

    move/from16 v39, v1

    int-to-float v1, v5

    sub-float/2addr v1, v10

    sub-float v22, v1, v34

    mul-int/lit8 v1, v35, 0x2

    int-to-float v1, v1

    add-float v23, v2, v1

    mul-float v1, v34, v18

    add-float v26, v22, v1

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v1

    move/from16 v40, v8

    move/from16 v8, v39

    move-object v1, v7

    move/from16 v30, v31

    move/from16 v31, v2

    move/from16 v41, v12

    move v12, v3

    move/from16 v3, v22

    move/from16 v42, v13

    move/from16 v43, v14

    const/4 v14, 0x0

    move v13, v4

    move/from16 v4, v23

    move v14, v5

    move/from16 v44, v15

    move/from16 v23, v29

    const/4 v15, 0x1

    move/from16 v5, v26

    move/from16 v26, v6

    move-object/from16 v6, v27

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_14
    move/from16 v26, v6

    move/from16 v40, v8

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v23, v29

    move/from16 v30, v31

    const/4 v15, 0x1

    move v8, v1

    move v12, v3

    move v13, v4

    move v14, v5

    goto :goto_9

    :cond_15
    move/from16 v26, v6

    move/from16 v40, v8

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v23, v29

    move/from16 v30, v31

    move/from16 v8, v36

    const/4 v15, 0x1

    move v12, v3

    move v13, v4

    move v14, v5

    :goto_9
    const/4 v1, -0x1

    if-eq v13, v1, :cond_16

    if-ne v13, v8, :cond_16

    if-ne v12, v13, :cond_16

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, v11

    int-to-float v2, v14

    sub-float/2addr v2, v10

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v45, v8

    move/from16 v15, v35

    goto/16 :goto_e

    :cond_16
    if-ne v8, v12, :cond_19

    int-to-float v1, v14

    sub-float v6, v1, v10

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_17

    int-to-float v1, v11

    goto :goto_a

    :cond_17
    sub-int v1, v11, v35

    int-to-float v1, v1

    :goto_a
    move/from16 v22, v1

    sub-float v27, v6, v34

    move/from16 v5, v35

    int-to-float v1, v5

    add-float v4, v22, v1

    mul-float v1, v34, v18

    add-float v18, v27, v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v2, v22

    move-object/from16 v28, v3

    move/from16 v3, v27

    move v15, v5

    move/from16 v5, v18

    move/from16 v45, v8

    move v8, v6

    move-object/from16 v6, v28

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_b

    :cond_18
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_b
    int-to-float v1, v11

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v7, v1, v8, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_19
    move/from16 v45, v8

    move/from16 v15, v35

    if-ne v13, v12, :cond_1c

    int-to-float v1, v14

    sub-float v8, v1, v10

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_1a

    sub-int v1, v11, v15

    int-to-float v1, v1

    goto :goto_c

    :cond_1a
    int-to-float v1, v11

    :goto_c
    move/from16 v22, v1

    sub-float v27, v8, v34

    int-to-float v1, v15

    add-float v4, v22, v1

    mul-float v1, v34, v18

    add-float v5, v27, v1

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_d

    :cond_1b
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_d
    int-to-float v1, v11

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    invoke-virtual {v7, v1, v8, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1c
    :goto_e
    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    if-eq v12, v13, :cond_1d

    goto :goto_f

    :cond_1d
    move/from16 v8, v45

    goto :goto_11

    :cond_1e
    :goto_f
    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    move/from16 v8, v45

    if-eq v12, v8, :cond_20

    goto :goto_10

    :cond_1f
    move/from16 v8, v45

    :goto_10
    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-nez v2, :cond_21

    if-ne v12, v8, :cond_21

    :cond_20
    :goto_11
    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_21
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v11

    int-to-float v4, v14

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v25, 0x1

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    if-ne v2, v3, :cond_22

    const/4 v2, 0x0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    add-int v5, v14, v3

    add-int/lit8 v20, v20, 0x1

    move/from16 v25, v2

    goto :goto_12

    :cond_22
    move/from16 v25, v2

    move v5, v14

    :goto_12
    add-int/lit8 v18, v12, 0x1

    move v1, v8

    move v4, v13

    move v9, v15

    move/from16 v29, v23

    move/from16 v6, v26

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v11, v34

    move/from16 v8, v40

    move/from16 v12, v41

    move/from16 v13, v42

    move/from16 v14, v43

    move/from16 v15, v44

    goto/16 :goto_3

    :cond_23
    move/from16 v26, v6

    move/from16 v40, v8

    move/from16 v34, v11

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v43, v14

    move/from16 v44, v15

    move/from16 v23, v29

    move/from16 v30, v31

    move v8, v1

    move v13, v4

    move v14, v5

    move v15, v9

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLastDay:I

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    if-nez v1, :cond_2e

    move/from16 v9, v20

    const/4 v1, 0x1

    :goto_13
    move v11, v1

    const/4 v1, 0x6

    if-eq v9, v1, :cond_2d

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_24

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int v3, v1, v25

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    mul-int/2addr v3, v15

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int/2addr v3, v5

    goto :goto_14

    :cond_24
    const/4 v2, 0x1

    const/4 v4, 0x2

    mul-int v1, v4, v25

    add-int/2addr v1, v2

    mul-int/2addr v1, v15

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v3, v1, v2

    :goto_14
    move v12, v3

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int v1, v25, v1

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v20, v1, v2

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v2, v2, v20

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-eqz v1, :cond_29

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v8, v1, :cond_29

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    if-lt v11, v1, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v1

    if-nez v1, :cond_25

    move/from16 v46, v8

    goto :goto_17

    :cond_25
    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    if-ne v11, v1, :cond_29

    int-to-float v1, v14

    sub-float v6, v1, v10

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_26

    int-to-float v1, v12

    goto :goto_15

    :cond_26
    sub-int v1, v12, v15

    int-to-float v1, v1

    :goto_15
    move/from16 v22, v1

    sub-float v27, v6, v34

    int-to-float v1, v15

    add-float v4, v22, v1

    mul-float v1, v34, v18

    add-float v5, v27, v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v2, v22

    move-object/from16 v28, v3

    move/from16 v3, v27

    move/from16 v46, v8

    move v8, v6

    move-object/from16 v6, v28

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v12

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_16

    :cond_27
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_16
    int-to-float v2, v12

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    invoke-virtual {v7, v2, v8, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_18

    :cond_28
    move/from16 v46, v8

    :goto_17
    sub-int v1, v12, v15

    int-to-float v8, v1

    int-to-float v1, v14

    sub-float/2addr v1, v10

    sub-float v22, v1, v34

    mul-int/lit8 v1, v15, 0x2

    int-to-float v1, v1

    add-float v4, v8, v1

    mul-float v1, v34, v18

    add-float v5, v22, v1

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move v2, v8

    move/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_18

    :cond_29
    move/from16 v46, v8

    :goto_18
    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_2b

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/16 v3, 0xb

    if-le v1, v3, :cond_2a

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    :cond_2a
    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v11}, Ljava/util/Calendar;->set(III)V

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2b
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v12

    int-to-float v3, v14

    iget-object v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v25, 0x1

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    add-int/2addr v14, v2

    add-int/lit8 v9, v9, 0x1

    :cond_2c
    move/from16 v25, v1

    add-int/lit8 v1, v11, 0x1

    move/from16 v8, v46

    goto/16 :goto_13

    :cond_2d
    move/from16 v46, v8

    iput v11, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLastDay:I

    move/from16 v20, v9

    goto :goto_19

    :cond_2e
    move/from16 v46, v8

    :goto_19
    if-lez v17, :cond_3b

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    if-nez v1, :cond_3b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v3, 0x1

    invoke-virtual {v8, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    move/from16 v9, v17

    neg-int v1, v9

    const/4 v11, 0x5

    invoke-virtual {v8, v11, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_30

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-gez v3, :cond_2f

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xb

    :cond_2f
    iget-boolean v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {v0, v3, v2, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v4

    sub-int/2addr v4, v9

    const/4 v5, 0x1

    add-int/lit8 v1, v4, 0x1

    :cond_30
    move v12, v9

    move v2, v14

    move v14, v1

    const/4 v1, 0x0

    :goto_1a
    move v6, v1

    if-ge v6, v12, :cond_3a

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_31

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    sub-int v4, v1, v6

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    mul-int/2addr v4, v15

    iget v11, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int/2addr v4, v11

    goto :goto_1b

    :cond_31
    const/4 v3, 0x1

    const/4 v5, 0x2

    mul-int v1, v5, v6

    add-int/2addr v1, v3

    mul-int/2addr v1, v15

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v4, v1, v3

    :goto_1b
    move v11, v4

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    mul-int/2addr v1, v5

    div-int/lit8 v5, v1, 0x3

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int/2addr v1, v6

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v17, v1, v2

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v2, v2, v17

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-eqz v1, :cond_36

    if-nez v13, :cond_36

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    if-gt v14, v1, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v1

    if-nez v1, :cond_32

    move/from16 v28, v6

    move-object/from16 v47, v8

    move/from16 v48, v9

    move v9, v5

    goto/16 :goto_1e

    :cond_32
    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    if-ne v14, v1, :cond_36

    int-to-float v1, v5

    sub-float v4, v1, v10

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_33

    sub-int v1, v11, v15

    int-to-float v1, v1

    goto :goto_1c

    :cond_33
    int-to-float v1, v11

    :goto_1c
    move/from16 v22, v1

    sub-float v27, v4, v34

    int-to-float v1, v15

    add-float v28, v22, v1

    mul-float v1, v34, v18

    add-float v29, v27, v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v2, v22

    move-object/from16 v31, v3

    move/from16 v3, v27

    move-object/from16 v47, v8

    move v8, v4

    move/from16 v4, v28

    move/from16 v48, v9

    move v9, v5

    move/from16 v5, v29

    move/from16 v28, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1d

    :cond_34
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_1d
    int-to-float v2, v11

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    invoke-virtual {v7, v2, v8, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1f

    :cond_35
    move/from16 v28, v6

    move-object/from16 v47, v8

    move/from16 v48, v9

    move v9, v5

    :goto_1e
    sub-int v1, v11, v15

    int-to-float v8, v1

    int-to-float v1, v9

    sub-float/2addr v1, v10

    sub-float v22, v1, v34

    mul-int/lit8 v1, v15, 0x2

    int-to-float v1, v1

    add-float v4, v8, v1

    mul-float v1, v34, v18

    add-float v5, v22, v1

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move v2, v8

    move/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1f

    :cond_36
    move/from16 v28, v6

    move-object/from16 v47, v8

    move/from16 v48, v9

    move v9, v5

    :goto_1f
    iget-boolean v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_38

    iget v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    if-gez v1, :cond_37

    const/16 v1, 0xb

    add-int/lit8 v2, v2, -0x1

    :cond_37
    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v14}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v4, v5, v8}, Ljava/util/Calendar;->set(III)V

    iget-object v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_20

    :cond_38
    const/4 v6, 0x5

    :cond_39
    :goto_20
    const-string v1, "%d"

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v4, v9

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v1, v28, 0x1

    move v11, v6

    move v2, v9

    move-object/from16 v8, v47

    move/from16 v9, v48

    goto/16 :goto_1a

    :cond_3a
    move/from16 v48, v9

    move v14, v2

    goto :goto_21

    :cond_3b
    move/from16 v48, v17

    :goto_21
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getDayFromLocation(FF)I
    .locals 5

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    :cond_0
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    float-to-int v1, p2

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    div-int/2addr v1, v2

    int-to-float v2, v0

    sub-float v2, p1, v2

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v3

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    return v3

    :cond_2
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1e

    return v0

    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    const/16 v1, 0x1c

    if-nez v0, :cond_2

    rem-int/lit8 v0, p1, 0x64

    const/16 v2, 0x1d

    if-nez v0, :cond_1

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :pswitch_2
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getDaysInMonthLunar(IIZ)I
    .locals 6

    invoke-static {p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "SemSimpleMonthView"

    const-string v2, "getDaysInMonthLunar, mSolarLunarConverter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_1
    const-string v2, "SemSimpleMonthView"

    const-string v3, "getDaysInMonthLunar, dayLength is not Integer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemSimpleMonthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NoSuchMethodException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private initView()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "sec-roboto-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "SemSimpleMonthView"

    const-string/jumbo v2, "method is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SemSimpleMonthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " InvocationTargetException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SemSimpleMonthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "SemSimpleMonthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private isNextMonthEndMonth()Z
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float v4, v3, v0

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_2

    cmpg-float v5, v4, v7

    if-ltz v5, :cond_3

    cmpl-float v5, v4, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    if-eqz v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    sub-int/2addr v6, v2

    if-ne v5, v6, :cond_4

    const/high16 v5, 0x41400000    # 12.0f

    add-float v6, v5, v4

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    add-float/2addr v5, v4

    cmpl-float v5, v5, v7

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    if-nez v5, :cond_4

    :cond_3
    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    sub-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    if-nez v0, :cond_8

    :cond_7
    move v1, v2

    nop

    :cond_8
    return v1
.end method

.method private isPrevMonthStartMonth()Z
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float v4, v0, v3

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_2

    cmpg-float v5, v4, v7

    if-ltz v5, :cond_3

    cmpl-float v5, v4, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    if-eqz v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    add-int/2addr v6, v2

    if-ne v5, v6, :cond_4

    const/high16 v5, 0x41400000    # 12.0f

    add-float v6, v5, v4

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    add-float/2addr v5, v4

    cmpl-float v5, v5, v7

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    if-nez v5, :cond_4

    :cond_3
    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    add-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    :cond_7
    move v1, v2

    nop

    :cond_8
    return v1
.end method

.method private isRTL()Z
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "ur"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    nop

    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    return v2
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeMeasureSpec(II)I
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    return p1

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private onDayClick(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;->onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;III)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private onDeactivatedDayClick(IIIZ)V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;->onDeactivatedDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZZ)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

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

.method public getNumDays()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    return v0
.end method

.method public getWeekStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const v1, 0x10502a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    const v1, 0x10502aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    const v1, 0x10502a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->initView()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-lt v0, v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-le v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x2

    const/4 v3, 0x5

    if-gtz v0, :cond_6

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v4, :cond_5

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    xor-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xb

    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v4

    add-int v5, v4, v0

    invoke-direct {p0, v2, v3, v5, v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/Calendar;->set(III)V

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v5, v2, v3, v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-le v0, v4, :cond_9

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    const/16 v4, 0xb

    if-le v3, v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :cond_7
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    sub-int v4, v0, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    sub-int v6, v0, v6

    invoke-virtual {v4, v3, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v6, v2, v3, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(III)V

    nop

    :goto_0
    return v1
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setEndDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    iput p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method public setFirstMonth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    return-void
.end method

.method public setLastMonth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 10

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    iput-boolean p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v0, :cond_2

    iput-object p3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    :try_start_0
    const-string v0, "com.android.calendar.Feature"

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    nop

    nop

    if-nez v0, :cond_0

    const-string v1, "SemSimpleMonthView"

    const-string/jumbo v2, "setLunar, Calendar Feature class is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "getSolarLunarConverter"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    :try_start_1
    const-string v4, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    nop

    nop

    if-nez v4, :cond_1

    const-string v2, "SemSimpleMonthView"

    const-string/jumbo v3, "setLunar, Calendar Converter class is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v5, "convertLunarToSolar"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v5, "getWeekday"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v5, "getYear"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const-string v5, "getMonth"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const-string v5, "getDay"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const-string v5, "getDayLengthOf"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v6, v2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v6, v8

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SemSimpleMonthView"

    const-string/jumbo v4, "setLunar, Calendar Converter class not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    const-string v1, "SemSimpleMonthView"

    const-string/jumbo v2, "setLunar, Calendar Feature class not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p17

    iput v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    iget v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    iput v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    :cond_0
    move/from16 v4, p1

    iput v4, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidMonth(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v5, p2

    iput v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    goto :goto_0

    :cond_1
    move/from16 v5, p2

    :goto_0
    move/from16 v6, p3

    iput v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v10}, Ljava/util/Calendar;->set(II)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    iput-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    iget-boolean v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    iget v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v8, 0x3

    aput-object v14, v13, v8

    invoke-direct {v0, v7, v12, v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    new-array v13, v15, [Ljava/lang/Object;

    invoke-direct {v0, v7, v12, v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-direct {v0, v12, v13, v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    new-array v11, v15, [Ljava/lang/Object;

    invoke-direct {v0, v13, v14, v11}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v13, v7, Ljava/lang/Integer;

    if-eqz v13, :cond_3

    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_3

    instance-of v13, v11, Ljava/lang/Integer;

    if-eqz v13, :cond_3

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v15

    aput-object v12, v8, v10

    aput-object v11, v8, v9

    invoke-direct {v0, v13, v14, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v13, v8, Ljava/lang/Integer;

    if-eqz v13, :cond_2

    move-object v13, v8

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v10

    iput v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v13, 0x7

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    :goto_1
    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    invoke-direct {v0, v8, v13, v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v8

    iput v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iget v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonth(II)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move/from16 v7, p4

    iput v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    goto :goto_3

    :cond_5
    move/from16 v7, p4

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v8

    iput v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    :goto_3
    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v8, v11, :cond_6

    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v8, v11, :cond_6

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    goto :goto_4

    :cond_6
    move/from16 v11, p5

    :goto_4
    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_7

    iget v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_7

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_5

    :cond_7
    move/from16 v8, p6

    :goto_5
    const/16 v9, 0x20

    if-lez v11, :cond_8

    if-ge v8, v9, :cond_8

    iput v11, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    :cond_8
    if-lez v8, :cond_9

    if-ge v8, v9, :cond_9

    if-lt v8, v11, :cond_9

    iput v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    :cond_9
    iget-object v9, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    move/from16 v9, p9

    iput v9, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    move/from16 v10, p10

    iput v10, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    move/from16 v12, p11

    iput v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    move/from16 v13, p12

    iput v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    move/from16 v14, p13

    iput v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    move/from16 v15, p14

    iput v15, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    move/from16 v1, p15

    iput v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    move/from16 v1, p16

    iput v1, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method public setNextMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    return-void
.end method

.method public setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setOnDeactivatedDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

    return-void
.end method

.method public setPrevMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    return-void
.end method

.method public setStartDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    iput p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    return-void
.end method

.method setTextColor()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Calendar_SetColorOfDays"

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int/2addr v2, v3

    const/16 v3, 0x52

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    aput v4, v3, v2

    goto :goto_1

    :cond_0
    const/16 v3, 0x42

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    aput v4, v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
