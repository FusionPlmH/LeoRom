.class Landroid/support/v7/widget/SeslSimpleMonthView;
.super Landroid/view/View;
.source "SeslSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;,
        Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;,
        Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# instance fields
.field private mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

.field private final mAbnormalStartEndDateBackgroundAlpha:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCalendarWidth:I

.field private mContext:Landroid/content/Context;

.field private mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

.field private mDayColorSet:[I

.field private mDayLengthMethod:Ljava/lang/reflect/Method;

.field private mDayNumberDisabledAlpha:I

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDaySelectedCircleSize:I

.field private mDaySelectedCircleStroke:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mEndDay:I

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

.field private mLockAccessibilityDelegate:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMiniDayNumberTextSize:I

.field private mMode:I

.field private mMonth:I

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

.field private mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

.field private mPadding:I

.field private mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private final mPrevNextMonthDayNumberAlpha:I

.field private mSaturdayTextColor:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private mSelectedDayNumberTextColor:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mStartDay:I

.field private mStartMonth:I

.field private mStartYear:I

.field private mSundayTextColor:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

.field private mWeekHeight:I

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDay:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    iput v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    const/16 v0, 0x1f

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorPrimaryDark:I

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    goto :goto_0

    :cond_0
    iget v4, v3, Landroid/util/TypedValue;->data:I

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    :goto_0
    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_sunday_number_text_color_light:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSundayTextColor:I

    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_saturday_text_color_light:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->DatePicker:[I

    invoke-virtual {v4, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v4, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayNumberTextColor:I

    sget v5, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_normal_day_number_text_color_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNormalTextColor:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->DatePicker_selectedDayNumberTextColor:I

    sget v5, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_selected_day_number_text_color_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayNumberDisabledAlpha:I

    sget v5, Landroid/support/v7/appcompat/R$integer;->sesl_day_number_disabled_alpha_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_selected_day_circle_stroke:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    new-instance v4, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v4, p0, p0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/support/v7/widget/SeslSimpleMonthView;Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v4, Landroid/support/v7/appcompat/R$integer;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    :cond_1
    sget v4, Landroid/support/v7/appcompat/R$integer;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    sget v4, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_abnormal_start_end_date_background_alpha:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->initView()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslSimpleMonthView;FF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslSimpleMonthView;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SeslSimpleMonthView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDayClick(III)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    return v0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SeslSimpleMonthView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    return v0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    return v0
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    return v0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SeslSimpleMonthView;)Ldalvik/system/PathClassLoader;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    return v0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/4 v8, 0x2

    mul-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x3

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    mul-int/2addr v3, v8

    div-int v9, v2, v3

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float v10, v5, v6

    const/4 v5, 0x0

    move v11, v2

    iget v12, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    iget v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v6, v6

    iget v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    iget v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    iget v15, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v15, v15

    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v19, v11

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v1, v11, :cond_0

    add-float v6, v6, v18

    :cond_0
    move/from16 v20, v6

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v1, v11, :cond_1

    add-float v15, v15, v18

    :cond_1
    iget v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v1, v1

    iget-boolean v11, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v11, :cond_2

    iget-boolean v11, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v11, :cond_2

    add-float v1, v1, v18

    :cond_2
    move v11, v1

    const/4 v1, 0x0

    move/from16 v22, v1

    mul-int/lit16 v1, v12, 0x2710

    const/high16 v18, 0x42c80000    # 100.0f

    move/from16 v23, v2

    mul-float v2, v20, v18

    float-to-int v2, v2

    add-int/2addr v2, v1

    mul-int/lit16 v1, v14, 0x2710

    move/from16 v24, v3

    mul-float v3, v15, v18

    float-to-int v3, v3

    add-int/2addr v3, v1

    mul-int/lit16 v1, v6, 0x2710

    move/from16 v25, v4

    mul-float v4, v11, v18

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/16 v18, 0x0

    if-eqz v1, :cond_4

    add-int v1, v2, v13

    move/from16 v26, v5

    add-int v5, v3, v8

    if-le v1, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move/from16 v1, v18

    :goto_0
    move/from16 v22, v1

    goto :goto_1

    :cond_4
    move/from16 v26, v5

    :goto_1
    if-nez v22, :cond_9

    if-ne v12, v14, :cond_5

    cmpl-float v1, v20, v15

    if-nez v1, :cond_5

    if-ne v6, v12, :cond_5

    cmpl-float v1, v11, v20

    if-nez v1, :cond_5

    move v1, v13

    move v5, v8

    :goto_2
    move/from16 v49, v5

    move v5, v1

    move/from16 v1, v49

    goto :goto_3

    :cond_5
    if-ge v2, v4, :cond_7

    if-ge v4, v3, :cond_7

    if-ne v6, v14, :cond_6

    cmpl-float v1, v11, v15

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    iget v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    const/16 v21, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-ne v6, v12, :cond_8

    cmpl-float v1, v11, v20

    if-nez v1, :cond_8

    move v1, v13

    iget v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    const/16 v21, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    if-ne v6, v14, :cond_9

    cmpl-float v1, v11, v15

    if-nez v1, :cond_9

    const/4 v1, 0x0

    move v5, v8

    goto :goto_2

    :cond_9
    move/from16 v5, v24

    move/from16 v1, v25

    :goto_3
    move/from16 v27, v4

    move/from16 v4, v17

    const/16 v17, 0x1

    :goto_4
    move/from16 v28, v17

    move/from16 v29, v2

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    move/from16 v30, v3

    move/from16 v3, v28

    if-gt v3, v2, :cond_1d

    iget-boolean v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_a

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v21, v2, v23

    const/16 v16, 0x2

    mul-int v21, v21, v16

    add-int/lit8 v21, v21, 0x1

    mul-int v21, v21, v9

    move/from16 v31, v2

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int v21, v21, v2

    nop

    move/from16 v32, v9

    move/from16 v2, v21

    goto :goto_5

    :cond_a
    const/16 v16, 0x2

    const/16 v17, 0x1

    mul-int v2, v16, v23

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v9

    move/from16 v32, v9

    iget v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v2, v9

    :goto_5
    move v9, v2

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v2, v23, v2

    move/from16 v33, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int v17, v2, v1

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v2, v2, v17

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v3, v1, :cond_b

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le v3, v1, :cond_c

    :cond_b
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    if-eqz v22, :cond_13

    if-ne v12, v6, :cond_d

    cmpl-float v1, v20, v11

    if-nez v1, :cond_d

    if-ne v13, v3, :cond_d

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    move/from16 v34, v5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_e

    goto :goto_6

    :cond_d
    move/from16 v34, v5

    :goto_6
    if-ne v14, v6, :cond_f

    cmpl-float v1, v15, v11

    if-nez v1, :cond_f

    if-ne v8, v3, :cond_f

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_f

    :cond_e
    int-to-float v1, v9

    int-to-float v5, v4

    sub-float/2addr v5, v10

    move/from16 v35, v10

    iget v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v10, v10

    move/from16 v36, v4

    iget-object v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_f
    move/from16 v36, v4

    move/from16 v35, v10

    :goto_7
    if-ne v14, v6, :cond_10

    cmpl-float v1, v15, v11

    if-nez v1, :cond_10

    if-ne v8, v3, :cond_10

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_11

    :cond_10
    if-ne v12, v6, :cond_12

    cmpl-float v1, v20, v11

    if-nez v1, :cond_12

    if-ne v13, v3, :cond_12

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_12

    :cond_11
    int-to-float v1, v9

    move/from16 v4, v36

    int-to-float v5, v4

    sub-float v5, v5, v35

    iget v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v10, v10

    move-object/from16 v37, v2

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v10, v3

    move/from16 v25, v6

    move/from16 v39, v8

    move/from16 v40, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v44, v14

    move/from16 v45, v15

    move/from16 v14, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move-object/from16 v11, v37

    move v12, v4

    goto/16 :goto_b

    :cond_12
    move v10, v3

    move/from16 v25, v6

    move/from16 v39, v8

    move/from16 v40, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v44, v14

    move/from16 v45, v15

    move/from16 v14, v32

    move/from16 v8, v33

    move/from16 v13, v34

    move/from16 v12, v36

    move-object v11, v2

    goto/16 :goto_b

    :cond_13
    move-object/from16 v37, v2

    move/from16 v34, v5

    move/from16 v35, v10

    if-ge v5, v3, :cond_15

    move/from16 v1, v33

    if-ge v3, v1, :cond_14

    sub-int v2, v9, v32

    int-to-float v10, v2

    int-to-float v2, v4

    sub-float v2, v2, v35

    move/from16 v38, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v24, v2, v1

    mul-int/lit8 v1, v32, 0x2

    int-to-float v1, v1

    add-float v25, v10, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v28, v24, v1

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move/from16 v39, v8

    move/from16 v8, v38

    move-object v1, v7

    move-object/from16 v31, v2

    move/from16 v40, v11

    move-object/from16 v11, v37

    move v2, v10

    move/from16 v41, v10

    move v10, v3

    move/from16 v3, v24

    move/from16 v42, v12

    move v12, v4

    move/from16 v4, v25

    move/from16 v43, v13

    move v13, v5

    move/from16 v5, v28

    move/from16 v25, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    :cond_14
    move v10, v3

    move/from16 v25, v6

    move/from16 v39, v8

    move/from16 v40, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move-object/from16 v11, v37

    move v8, v1

    move v12, v4

    move v13, v5

    goto :goto_8

    :cond_15
    move v10, v3

    move/from16 v25, v6

    move/from16 v39, v8

    move/from16 v40, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v8, v33

    move-object/from16 v11, v37

    move v12, v4

    move v13, v5

    :goto_8
    const/4 v1, -0x1

    if-eq v13, v1, :cond_16

    if-ne v13, v8, :cond_16

    if-ne v10, v13, :cond_16

    int-to-float v1, v9

    int-to-float v2, v12

    sub-float v2, v2, v35

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    iget-object v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v44, v14

    move/from16 v45, v15

    move/from16 v14, v32

    goto/16 :goto_b

    :cond_16
    if-ne v8, v10, :cond_18

    int-to-float v1, v12

    sub-float v6, v1, v35

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_17

    int-to-float v1, v9

    goto :goto_9

    :cond_17
    sub-int v1, v9, v32

    int-to-float v1, v1

    :goto_9
    move/from16 v24, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v28, v6, v1

    move/from16 v5, v32

    int-to-float v1, v5

    add-float v4, v24, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v31, v28, v1

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v2, v24

    move-object/from16 v32, v3

    move/from16 v3, v28

    move/from16 v44, v14

    move v14, v5

    move/from16 v5, v31

    move/from16 v45, v15

    move v15, v6

    move-object/from16 v6, v32

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v9

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_18
    move/from16 v44, v14

    move/from16 v45, v15

    move/from16 v14, v32

    if-ne v13, v10, :cond_1a

    int-to-float v1, v12

    sub-float v15, v1, v35

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_19

    sub-int v1, v9, v14

    int-to-float v1, v1

    goto :goto_a

    :cond_19
    int-to-float v1, v9

    :goto_a
    move/from16 v24, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v28, v15, v1

    int-to-float v1, v14

    add-float v4, v24, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v5, v28, v1

    iget-object v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v9

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1a
    :goto_b
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-nez v1, :cond_1b

    if-ne v10, v8, :cond_1b

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1b
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v9

    int-to-float v3, v12

    invoke-virtual {v7, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v23, 0x1

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x0

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int v4, v12, v2

    add-int/lit8 v26, v26, 0x1

    move/from16 v23, v1

    goto :goto_c

    :cond_1c
    move/from16 v23, v1

    move v4, v12

    :goto_c
    add-int/lit8 v17, v10, 0x1

    move v1, v8

    move v5, v13

    move v9, v14

    move/from16 v6, v25

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v10, v35

    move/from16 v8, v39

    move/from16 v11, v40

    move/from16 v12, v42

    move/from16 v13, v43

    move/from16 v14, v44

    move/from16 v15, v45

    goto/16 :goto_4

    :cond_1d
    move/from16 v25, v6

    move/from16 v39, v8

    move/from16 v35, v10

    move/from16 v40, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v44, v14

    move/from16 v45, v15

    move v8, v1

    move v12, v4

    move v13, v5

    move v14, v9

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-nez v1, :cond_28

    move/from16 v9, v26

    const/4 v1, 0x1

    :goto_d
    move v10, v1

    const/4 v1, 0x6

    if-eq v9, v1, :cond_29

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_1e

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int v3, v1, v23

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    mul-int/2addr v3, v14

    iget v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v3, v5

    goto :goto_e

    :cond_1e
    const/4 v2, 0x1

    const/4 v4, 0x2

    mul-int v1, v4, v23

    add-int/2addr v1, v2

    mul-int/2addr v1, v14

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int v3, v1, v2

    :goto_e
    move v11, v3

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v1, v23, v1

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int v15, v1, v2

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v2, v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_22

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v8, v1, :cond_22

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    if-lt v10, v1, :cond_21

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v1

    if-nez v1, :cond_1f

    move/from16 v46, v15

    goto :goto_10

    :cond_1f
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    if-ne v10, v1, :cond_22

    int-to-float v1, v12

    sub-float v6, v1, v35

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_20

    int-to-float v1, v11

    goto :goto_f

    :cond_20
    sub-int v1, v11, v14

    int-to-float v1, v1

    :goto_f
    move/from16 v17, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v24, v6, v1

    int-to-float v1, v14

    add-float v4, v17, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v5, v24, v1

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v2, v17

    move-object/from16 v26, v3

    move/from16 v3, v24

    move/from16 v46, v15

    move v15, v6

    move-object/from16 v6, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_21
    move/from16 v46, v15

    :goto_10
    sub-int v1, v11, v14

    int-to-float v15, v1

    int-to-float v1, v12

    sub-float v1, v1, v35

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    sub-float v17, v1, v2

    mul-int/lit8 v1, v14, 0x2

    int-to-float v1, v1

    add-float v4, v15, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v5, v17, v1

    iget-object v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move v2, v15

    move/from16 v3, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_22
    move/from16 v46, v15

    :goto_11
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_24

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    const/16 v3, 0xb

    if-le v1, v3, :cond_23

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    :cond_23
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v10}, Ljava/util/Calendar;->set(III)V

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_24
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_26

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v8, v2, :cond_26

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    if-le v10, v2, :cond_25

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v2

    if-nez v2, :cond_26

    :cond_25
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_26
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v11

    int-to-float v4, v12

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v23, 0x1

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    if-ne v2, v3, :cond_27

    const/4 v2, 0x0

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int/2addr v12, v3

    add-int/lit8 v9, v9, 0x1

    :cond_27
    move/from16 v23, v2

    add-int/lit8 v1, v10, 0x1

    goto/16 :goto_d

    :cond_28
    move/from16 v9, v26

    :cond_29
    if-lez v19, :cond_37

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-nez v1, :cond_37

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->clear()V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v3, 0x1

    invoke-virtual {v10, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    move/from16 v11, v19

    neg-int v1, v11

    const/4 v15, 0x5

    invoke-virtual {v10, v15, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v10, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_2b

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-gez v3, :cond_2a

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xb

    :cond_2a
    iget-boolean v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {v0, v3, v2, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v4

    sub-int/2addr v4, v11

    const/4 v5, 0x1

    add-int/lit8 v1, v4, 0x1

    :cond_2b
    move v6, v11

    move v2, v12

    move v12, v1

    move/from16 v1, v18

    :goto_12
    move v5, v1

    if-ge v5, v6, :cond_36

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_2c

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    sub-int v4, v1, v5

    const/16 v16, 0x2

    mul-int v4, v4, v16

    add-int/2addr v4, v3

    mul-int/2addr v4, v14

    iget v15, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v4, v15

    goto :goto_13

    :cond_2c
    const/4 v3, 0x1

    const/16 v16, 0x2

    mul-int v1, v16, v5

    add-int/2addr v1, v3

    mul-int/2addr v1, v14

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int v4, v1, v3

    :goto_13
    move v15, v4

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v1, 0x3

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int/2addr v1, v5

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int v17, v1, v2

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v2, v2, v17

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_30

    if-nez v13, :cond_30

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    if-gt v12, v1, :cond_2f

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v1

    if-nez v1, :cond_2d

    move/from16 v26, v5

    move/from16 v28, v6

    move/from16 v47, v8

    move/from16 v48, v9

    move v9, v4

    goto :goto_15

    :cond_2d
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    if-ne v12, v1, :cond_30

    int-to-float v1, v4

    sub-float v3, v1, v35

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_2e

    sub-int v1, v15, v14

    int-to-float v1, v1

    goto :goto_14

    :cond_2e
    int-to-float v1, v15

    :goto_14
    move/from16 v19, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v24, v3, v1

    int-to-float v1, v14

    add-float v26, v19, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v28, v24, v1

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move-object/from16 v31, v2

    move/from16 v2, v19

    move/from16 v47, v8

    move v8, v3

    move/from16 v3, v24

    move/from16 v48, v9

    move v9, v4

    move/from16 v4, v26

    move/from16 v26, v5

    move/from16 v5, v28

    move/from16 v28, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v15

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_16

    :cond_2f
    move/from16 v26, v5

    move/from16 v28, v6

    move/from16 v47, v8

    move/from16 v48, v9

    move v9, v4

    :goto_15
    sub-int v1, v15, v14

    int-to-float v8, v1

    int-to-float v1, v9

    sub-float v1, v1, v35

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    sub-float v19, v1, v2

    mul-int/lit8 v1, v14, 0x2

    int-to-float v1, v1

    add-float v4, v8, v1

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v5, v19, v1

    iget-object v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move v2, v8

    move/from16 v3, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_16

    :cond_30
    move/from16 v26, v5

    move/from16 v28, v6

    move/from16 v47, v8

    move/from16 v48, v9

    move v9, v4

    :goto_16
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_32

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    if-gez v1, :cond_31

    const/16 v1, 0xb

    add-int/lit8 v2, v2, -0x1

    :cond_31
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v12}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v4, v5, v8}, Ljava/util/Calendar;->set(III)V

    iget-object v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_17

    :cond_32
    const/4 v6, 0x5

    :cond_33
    :goto_17
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_35

    if-nez v13, :cond_35

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    if-ge v12, v2, :cond_34

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v2

    if-nez v2, :cond_35

    :cond_34
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_35
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v18

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v4, v15

    int-to-float v5, v9

    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v26, 0x1

    move v15, v6

    move v2, v9

    move/from16 v6, v28

    move/from16 v8, v47

    move/from16 v9, v48

    goto/16 :goto_12

    :cond_36
    move/from16 v47, v8

    move/from16 v48, v9

    move v12, v2

    goto :goto_18

    :cond_37
    move/from16 v47, v8

    move/from16 v48, v9

    move/from16 v11, v19

    :goto_18
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getDayFromLocation(FF)I
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    :cond_0
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    float-to-int v1, p2

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    div-int/2addr v1, v2

    int-to-float v2, v0

    sub-float v2, p1, v2

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v3

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

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

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "SemSimpleMonthView"

    const-string v2, "getDaysInMonthLunar, mSolarLunarConverter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

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

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const-string v1, "sec-roboto-light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "SemSimpleMonthView"

    const-string v2, "method is null"

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

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float v4, v3, v0

    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_2

    cmpg-float v5, v4, v7

    if-ltz v5, :cond_3

    cmpl-float v5, v4, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    if-eqz v5, :cond_3

    :cond_2
    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    sub-int/2addr v6, v2

    if-ne v5, v6, :cond_4

    const/high16 v5, 0x41400000    # 12.0f

    add-float v6, v5, v4

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    add-float/2addr v5, v4

    cmpl-float v5, v5, v7

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    if-nez v5, :cond_4

    :cond_3
    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    sub-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    if-nez v0, :cond_8

    :cond_7
    move v1, v2

    nop

    :cond_8
    return v1
.end method

.method private isPrevMonthStartMonth()Z
    .locals 8

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float v4, v0, v3

    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_2

    cmpg-float v5, v4, v7

    if-ltz v5, :cond_3

    cmpl-float v5, v4, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    if-eqz v5, :cond_3

    :cond_2
    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    add-int/2addr v6, v2

    if-ne v5, v6, :cond_4

    const/high16 v5, 0x41400000    # 12.0f

    add-float v6, v5, v4

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    add-float/2addr v5, v4

    cmpl-float v5, v5, v7

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    if-nez v5, :cond_4

    :cond_3
    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    add-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

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

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

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

    iput v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private onDayClick(III)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;->onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private onDeactivatedDayClick(IIIZ)V
    .locals 9

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->playSoundEffect(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    iget-boolean v7, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;->onDeactivatedDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZZ)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    return v0
.end method

.method public getWeekStart()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->initView()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslSimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

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

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v0, v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x2

    const/4 v3, 0x5

    if-gtz v0, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v4, :cond_5

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    xor-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xb

    :cond_4
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {p0, v3, v2, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v4

    add-int v5, v4, v0

    invoke-direct {p0, v2, v3, v5, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/Calendar;->set(III)V

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v5, v2, v3, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_6
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    if-le v0, v4, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    const/16 v4, 0xb

    if-le v3, v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :cond_7
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    sub-int v4, v0, v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v7, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v8, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    sub-int v6, v0, v6

    invoke-virtual {v4, v3, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v6, v2, v3, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_9
    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-direct {p0, v2, v3, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDayClick(III)V

    nop

    :goto_0
    return v1
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setFirstMonth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    return-void
.end method

.method public setLastMonth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 10

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v0, :cond_2

    iput-object p3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    :try_start_0
    const-string v0, "com.android.calendar.Feature"

    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

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

    invoke-direct {p0, v0, v1, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v1, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    :try_start_1
    const-string v4, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    iget-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

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

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const-string v5, "getWeekday"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const-string v5, "getYear"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const-string v5, "getMonth"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const-string v5, "getDay"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const-string v5, "getDayLengthOf"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v6, v2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v6, v8

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

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

    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    iget v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    iput v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    :cond_0
    move/from16 v4, p1

    iput v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDay:I

    invoke-static/range {p2 .. p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->isValidMonth(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v5, p2

    iput v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    goto :goto_0

    :cond_1
    move/from16 v5, p2

    :goto_0
    move/from16 v6, p3

    iput v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v10}, Ljava/util/Calendar;->set(II)V

    iput-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    iput-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    iget-boolean v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_4

    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v7, :cond_4

    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v12, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    iget v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    iget-boolean v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v8, 0x3

    aput-object v14, v13, v8

    invoke-direct {v0, v7, v12, v13}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v12, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    new-array v13, v15, [Ljava/lang/Object;

    invoke-direct {v0, v7, v12, v13}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v12, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-direct {v0, v12, v13, v14}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    new-array v11, v15, [Ljava/lang/Object;

    invoke-direct {v0, v13, v14, v11}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v13, v7, Ljava/lang/Integer;

    if-eqz v13, :cond_3

    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_3

    instance-of v13, v11, Ljava/lang/Integer;

    if-eqz v13, :cond_3

    iget-object v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v15

    aput-object v12, v8, v10

    aput-object v11, v8, v9

    invoke-direct {v0, v13, v14, v8}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v13, v8, Ljava/lang/Integer;

    if-eqz v13, :cond_2

    move-object v13, v8

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v10

    iput v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v13, 0x7

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    :goto_1
    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget-boolean v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    invoke-direct {v0, v8, v13, v14}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v8

    iput v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    goto :goto_2

    :cond_4
    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    :goto_2
    invoke-static/range {p4 .. p4}, Landroid/support/v7/widget/SeslSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move/from16 v7, p4

    iput v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    goto :goto_3

    :cond_5
    move/from16 v7, p4

    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v8

    iput v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    :goto_3
    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v8, v11, :cond_6

    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

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
    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_7

    iget v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

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

    iput v11, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    :cond_8
    if-lez v8, :cond_9

    if-ge v8, v9, :cond_9

    if-lt v8, v11, :cond_9

    iput v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    :cond_9
    iget-object v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    move/from16 v9, p9

    iput v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    move/from16 v10, p10

    iput v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    move/from16 v12, p11

    iput v12, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    move/from16 v13, p12

    iput v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    move/from16 v14, p13

    iput v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    move/from16 v15, p14

    iput v15, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    move/from16 v1, p15

    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    move/from16 v1, p16

    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method public setNextMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    return-void
.end method

.method public setOnDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setOnDeactivatedDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    return-void
.end method

.method public setPrevMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    return-void
.end method

.method setTextColor()V
    .locals 6

    const-string v0, "CscFeature_Calendar_SetColorOfDays"

    const-string v1, "XXXXXXR"

    invoke-static {v0, v1}, Landroid/support/v4/feature/SeslCscFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v3, v4

    const/16 v4, 0x52

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSundayTextColor:I

    aput v5, v4, v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x42

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    aput v5, v4, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNormalTextColor:I

    aput v5, v4, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
