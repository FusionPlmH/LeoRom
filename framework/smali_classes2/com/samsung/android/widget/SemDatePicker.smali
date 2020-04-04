.class public Lcom/samsung/android/widget/SemDatePicker;
.super Landroid/widget/LinearLayout;
.source "SemDatePicker.java"

# interfaces
.implements Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePicker$LunarUtils;,
        Lcom/samsung/android/widget/SemDatePicker$LunarDate;,
        Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;,
        Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;,
        Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;,
        Lcom/samsung/android/widget/SemDatePicker$SavedState;,
        Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;,
        Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field public static final DATE_MODE_END:I = 0x2

.field public static final DATE_MODE_NONE:I = 0x0

.field public static final DATE_MODE_START:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_MONTH_PER_YEAR:I = 0xc

.field private static final DEFAULT_START_YEAR:I = 0x76e

.field private static final LEAP_MONTH:I = 0x1

.field private static final MESSAGE_CALENDAR_HEADER_MONTH_BUTTON_SET:I = 0x3e9

.field private static final MESSAGE_CALENDAR_HEADER_TEXT_VALUE_SET:I = 0x3e8

.field private static final NOT_LEAP_MONTH:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final USE_LOCALE:I = 0x0

.field public static final VIEW_TYPE_CALENDAR:I = 0x0

.field public static final VIEW_TYPE_SPINNER:I = 0x1

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mBackgroundBorderlessResId:I

.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mCalendarHeader:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayoutHeight:I

.field private mCalendarHeaderText:Landroid/widget/TextView;

.field private mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentPosition:I

.field private mCurrentViewType:I

.field private mCustomButtonView:Landroid/view/View;

.field private mDatePickerHeight:I

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

.field private mEndDate:Ljava/util/Calendar;

.field private mFirstBlankSpace:Landroid/view/View;

.field private mFirstBlankSpaceHeight:I

.field private mFirstDayOfWeek:I

.field private mGetLunarMethod:Ljava/lang/reflect/Method;

.field private mHandler:Landroid/os/Handler;

.field private mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

.field private mIsConfigurationChanged:Z

.field private mIsEnabled:Z

.field private mIsFarsiLanguage:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetLunar:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsLunarSupported:Z

.field private mIsRTL:Z

.field private mIsSimplifiedChinese:Z

.field private mLunarChanged:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarEndDay:I

.field private mLunarEndMonth:I

.field private mLunarEndYear:I

.field private mLunarStartDay:I

.field private mLunarStartMonth:I

.field private mLunarStartYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMode:I

.field private mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNumDays:I

.field private mOldCalendarViewPagerWidth:I

.field private mOldSelectedDay:I

.field private mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

.field private mPadding:I

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mSolarLunarTables:Ljava/lang/Object;

.field private mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

.field private mStartDate:Ljava/util/Calendar;

.field private mStartOfLunarYearField:Ljava/lang/reflect/Field;

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mTotalMonthCountWithLeap:[I

.field private mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

.field private mWeekStart:I

.field private mWidthPerYearField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1110106

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    iput-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    const/4 v6, -0x1

    iput v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    iput v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    iput v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    iput v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    iput v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    iput v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    iput-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    iput-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    iput-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iput-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    iput-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    new-instance v7, Lcom/samsung/android/widget/SemDatePicker$1;

    invoke-direct {v7, v0}, Lcom/samsung/android/widget/SemDatePicker$1;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v7, Lcom/samsung/android/widget/SemDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/samsung/android/widget/SemDatePicker$2;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/widget/SemDatePicker$3;

    invoke-direct {v7, v0}, Lcom/samsung/android/widget/SemDatePicker$3;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v7, Lcom/samsung/android/widget/SemDatePicker$4;

    invoke-direct {v7, v0}, Lcom/samsung/android/widget/SemDatePicker$4;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v7, Lcom/samsung/android/widget/SemDatePicker$5;

    invoke-direct {v7, v0}, Lcom/samsung/android/widget/SemDatePicker$5;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isFarsiLanguage()Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsFarsiLanguage:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isSimplifiedChinese()Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    iget-boolean v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "EEEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {v9, v1, v10, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v10, 0x76e

    invoke-virtual {v9, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v11, 0x834

    const/4 v12, 0x2

    invoke-virtual {v9, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v13, v10, v4, v5}, Ljava/util/Calendar;->set(III)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v11, v14, v15}, Ljava/util/Calendar;->set(III)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    const v14, 0x1090117

    invoke-virtual {v13, v14, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v15, 0x3

    invoke-virtual {v9, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v0, v15}, Lcom/samsung/android/widget/SemDatePicker;->setFirstDayOfWeek(I)V

    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/R$styleable;->SemDatePicker:[I

    invoke-virtual {v5, v1, v6, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v4, v5}, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    const v4, 0x1060183

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v12, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const v6, 0x106017f

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const v12, 0x10204bf

    invoke-virtual {v0, v12}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ViewPager;

    iput-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v12, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-direct {v12, v0}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v12, v1}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v12, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;

    const/4 v2, 0x0

    invoke-direct {v12, v0, v2}, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$1;)V

    invoke-virtual {v1, v12}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    const v1, 0x10502a5

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    const v1, 0x10204c0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    const v1, 0x10204c4

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v0, v2, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v0, v2, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const v2, 0x10204d0

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    const v2, 0x10204ce

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v12, Lcom/samsung/android/widget/SemDatePicker$6;

    invoke-direct {v12, v0}, Lcom/samsung/android/widget/SemDatePicker$6;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual {v2, v0, v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v12, Lcom/samsung/android/widget/SemDatePicker$7;

    invoke-direct {v12, v0}, Lcom/samsung/android/widget/SemDatePicker$7;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v2, 0x105029a

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    const v2, 0x10502a6

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    const v12, 0x10502a4

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    const v2, 0x10204c6

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x10204c7

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const v2, 0x10204c1

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    const v12, 0x10204c3

    const v1, 0x10204c2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    const v12, 0x1040963

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    const v12, 0x1040962

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v1, 0x10204c3

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const v1, 0x10204c2

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    :goto_1
    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v12, 0x101045c

    const/4 v3, 0x1

    invoke-virtual {v2, v12, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    const v2, 0x105029f

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    const v2, 0x10502a3

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const v3, 0x10204c4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const v3, 0x10204c2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const v3, 0x10204c3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    const v2, 0x10204bd

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    const v2, 0x10204be

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    const v2, 0x10502af

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    const v2, 0x10502b0

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/widget/SemDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    return v0
.end method

.method static synthetic access$2902(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    return p1
.end method

.method static synthetic access$3102(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/widget/SemDatePicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged()V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return v0
.end method

.method static synthetic access$4302(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic access$4400(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

    return v0
.end method

.method static synthetic access$4402(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic access$4500(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/samsung/android/widget/SemDatePicker;)Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    return v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/widget/SemDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    return v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/widget/SemDatePicker;)Lcom/android/internal/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$5400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    return p1
.end method

.method private checkMaxFontSize()V
    .locals 9

    const v0, 0x3f99999a    # 1.2f

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v4, 0x0

    int-to-float v5, v2

    div-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    float-to-double v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "com.android.calendar"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.calendar"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

.method private getIndexOfleapMonthOfYear(I)I
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v1, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v8, v3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x7f

    instance-of v6, v4, Ljava/lang/Byte;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    :cond_2
    return v5

    :cond_3
    :goto_0
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string v5, "getIndexOfleapMonthOfYear, not Integer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 12

    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    const/4 v6, 0x1

    if-gt v4, v5, :cond_5

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v5

    if-ge p1, v5, :cond_4

    move v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v5

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v5

    neg-int v5, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, -0x1

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v5

    :goto_1
    sub-int v7, p1, v5

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v8

    const/16 v9, 0xd

    const/16 v10, 0xc

    if-le v8, v10, :cond_1

    goto :goto_2

    :cond_1
    move v10, v9

    :goto_2
    if-ge v7, v8, :cond_2

    move v11, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v7, -0x1

    :goto_3
    move v2, v11

    if-ne v10, v9, :cond_3

    if-ne v8, v7, :cond_3

    move v9, v6

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    move v3, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->set(IIIZ)V

    return-object v0
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

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 12

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL y"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v9, 0x24

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v8

    move-wide v3, v10

    move-wide v5, v10

    move v7, v9

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object v1, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "field is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    return-object v0
.end method

.method private getTotalMonthCountWithLeap(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v1

    sub-int v1, p1, v1

    aget v0, v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object v1, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

.method private isFarsiLanguage()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fa"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
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

.method private isSimplifiedChinese()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private makeMeasureSpec(II)I
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    nop

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    :goto_2
    return p1
.end method

.method private onDateChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;->onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V

    :cond_1
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->access$5200(Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/widget/SemDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$10;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private semLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v2

    const/16 v3, 0xd

    const/16 v4, 0xc

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v5

    if-gt v5, v4, :cond_2

    if-ge v5, v2, :cond_1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    :goto_1
    goto :goto_2

    :cond_1
    sub-int/2addr v3, v2

    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    :goto_2
    move v2, v4

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v5

    if-gt v5, v4, :cond_5

    if-ge v2, v5, :cond_4

    move v3, v2

    :goto_3
    goto :goto_4

    :cond_4
    add-int/lit8 v3, v2, 0x1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_4
    move v2, v3

    goto :goto_5

    :cond_6
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v5

    if-le v5, v4, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    sub-int v4, v1, v4

    aput v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_6
    return-void
.end method

.method private updateSimpleMonthView(Z)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    sub-int v4, v2, v4

    mul-int/lit8 v4, v4, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v5

    sub-int v5, v0, v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_7

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v5

    if-ge v0, v5, :cond_2

    move v6, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v7

    if-ne v2, v7, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v7

    neg-int v7, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v7

    :goto_1
    add-int v4, v7, v6

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v8, v3, :cond_4

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    if-ne v0, v8, :cond_4

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    if-eq v8, v3, :cond_6

    :cond_4
    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v8, v1, :cond_5

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    if-eq v1, v3, :cond_6

    :cond_5
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v1, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    :cond_7
    iput v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v4, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v5, 0x3e8

    iput v5, v1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v5, 0x3e9

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentViewType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    return v0
.end method

.method public getDateMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    :cond_2
    iput-object p4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_4
    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return v0
.end method

.method public isLunar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10204c2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isFarsiLanguage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFarsiLanguage:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isSimplifiedChinese()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    const v1, 0x105029f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    const v1, 0x10502a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    const v1, 0x105029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    const v1, 0x10502af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    const v1, 0x10502b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    return-void
.end method

.method public onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;III)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDayClick day : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    :cond_0
    move v12, v1

    move v11, v3

    invoke-virtual {v0, v15, v14, v13}, Lcom/samsung/android/widget/SemDatePicker;->onDayOfMonthSelected(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v1

    sub-int v1, v14, v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v3

    sub-int v3, v15, v3

    mul-int/lit8 v3, v3, 0xc

    add-int v10, v1, v3

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-eq v1, v10, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move/from16 v19, v1

    if-ne v15, v12, :cond_2

    if-ne v14, v11, :cond_2

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    if-ne v13, v1, :cond_2

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-nez v1, :cond_2

    if-eqz v19, :cond_3

    :cond_2
    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x1f

    :goto_2
    move v7, v1

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v9, p1

    invoke-virtual {v9, v1, v3, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    goto :goto_3

    :cond_6
    move-object/from16 v9, p1

    :goto_3
    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    move/from16 v21, v1

    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_7

    iget v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iget v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    move/from16 v25, v1

    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v24, v4

    move/from16 v22, v5

    move/from16 v21, v8

    goto :goto_4

    :cond_7
    move/from16 v25, v1

    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v24, v4

    move/from16 v22, v5

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move/from16 v18, v1

    move-object v1, v9

    move/from16 v17, v2

    move v2, v13

    move/from16 v16, v3

    move v3, v14

    move-object/from16 v26, v4

    move v4, v15

    move-object/from16 v9, v26

    move/from16 v26, v10

    move/from16 v10, v21

    move/from16 v27, v11

    move/from16 v11, v20

    move/from16 v28, v12

    move/from16 v12, v22

    move/from16 v13, v16

    move/from16 v14, v23

    move/from16 v15, v24

    move/from16 v16, v25

    invoke-virtual/range {v1 .. v18}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->invalidate()V

    return-void
.end method

.method public onDayOfMonthSelected(III)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x3e8

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_3

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_3

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_3

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    :cond_3
    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->onValidationChanged(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged()V

    return-void
.end method

.method public onDeactivatedDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    nop

    if-eqz p6, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePicker;->getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v0

    iget p2, v0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    iget p3, v0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz p6, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/2addr v2, v1

    :goto_1
    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemDatePicker;->onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;III)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemDatePicker;->onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;III)V

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->removeAllCallbacks()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_0

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v4, v0

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_0
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x10204c2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePicker;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentViewType(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    if-ne v4, v5, :cond_2

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setConfigurationChanged(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedYear()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedMonth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedDay()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedYear()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedMonth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedDay()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMinDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMaxDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v12

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    move v13, v1

    move v14, v2

    move v15, v3

    const/16 v16, -0x1

    new-instance v17, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    move-object/from16 v1, v17

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v10, v16

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/widget/SemDatePicker$1;)V

    return-object v17
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;->onValidationChanged(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentViewType(I)V
    .locals 6

    const/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    if-eq v1, p1, :cond_5

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v5, v1, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v5, v1, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_4

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v5, v1, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v1, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateInputState()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDateMode(I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-boolean v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_0

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iget v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iget v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    :cond_0
    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v8, v2, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-boolean v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_2

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iget v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iget v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_2
    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v8, v2, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    :cond_3
    :goto_0
    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    const/4 v6, 0x0

    if-ne v2, v5, :cond_4

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v2, v2, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget v7, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/widget/SemSimpleMonthView;

    if-eqz v7, :cond_9

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v11, :cond_5

    iget v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iget v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_5
    move v12, v8

    move v15, v9

    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v8

    if-ne v8, v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    if-ne v8, v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v8

    move v13, v8

    goto :goto_1

    :cond_6
    move v13, v5

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v8

    if-ne v8, v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v8

    if-ne v8, v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v8

    goto :goto_2

    :cond_7
    const/16 v8, 0x1f

    :goto_2
    move v14, v8

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v11, :cond_8

    iget v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iget v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iget v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iget v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_8
    move/from16 v29, v3

    move/from16 v28, v4

    move/from16 v27, v5

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v16

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    iget v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    iget v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move/from16 v24, v8

    move-object v8, v7

    move/from16 v20, v9

    move/from16 v9, v26

    move-object/from16 v17, v10

    move v10, v15

    move-object/from16 v18, v11

    move v11, v12

    move/from16 v30, v12

    move/from16 v12, v16

    move/from16 v31, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v17

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v25, v6

    invoke-virtual/range {v8 .. v25}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invalidate()V

    :cond_9
    iget-boolean v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    :cond_a
    iget-object v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentViewType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLunar(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-nez v0, :cond_0

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    :cond_1
    return-void
.end method

.method public setLunarEndDate(IIIZ)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    iput p4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    return-void
.end method

.method public setLunarStartDate(IIIZ)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iput p4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    return-void
.end method

.method public setLunarSupported(ZLandroid/view/View;)V
    .locals 10

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    const v4, 0x102002b

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10502b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    :goto_0
    goto :goto_1

    :cond_3
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_4

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v8, v6

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_0
    const-string v0, "com.android.calendar.Feature"

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    nop

    nop

    if-nez v0, :cond_8

    sget-object v1, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLunarSupported, Calendar Feature class is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string v3, "getSolarLunarTables"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-direct {p0, v0, v3, v5}, Lcom/samsung/android/widget/SemDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3, v5}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    :try_start_1
    const-string v1, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v1, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v5

    nop

    nop

    if-nez v1, :cond_9

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setLunarSupported, Calendar Tables class is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string v5, "getLunar"

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v2

    invoke-direct {p0, v1, v5, v4}, Lcom/samsung/android/widget/SemDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    const-string v2, "START_OF_LUNAR_YEAR"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    const-string v2, "WIDTH_PER_YEAR"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    const-string v2, "INDEX_OF_LEAP_MONTH"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setLunarSupported, Calendar Tables class not found"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLunarSupported, Calendar Feature class not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method public setMaxDate(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$9;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMinDate(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$8;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    return-void
.end method

.method public updateDate(III)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p3

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_0

    iput v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iput v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v1, v12, :cond_1

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_3

    iput v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_3

    iput v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_3

    iput v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iput v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_3
    :goto_0
    invoke-direct {v0, v12}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v11, v1, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/samsung/android/widget/SemSimpleMonthView;

    if-eqz v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v12

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x1f

    :goto_2
    move v7, v1

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v10, v1, v4, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v9, :cond_7

    iget v1, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iget v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iget v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_7
    move/from16 v19, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move-object v1, v10

    move/from16 v18, v2

    move v2, v13

    move/from16 v17, v3

    move v3, v14

    move/from16 v16, v4

    move v4, v15

    move-object v0, v10

    move/from16 v10, v19

    move-object/from16 v25, v11

    move/from16 v11, v20

    move/from16 v26, v12

    move/from16 v12, v21

    move/from16 v13, v16

    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v24

    invoke-virtual/range {v1 .. v18}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->invalidate()V

    move-object v1, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-nez v2, :cond_a

    iget v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_8

    move-object/from16 v3, v25

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemSimpleMonthView;

    if-eqz v4, :cond_9

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->setStartDate(Ljava/util/Calendar;I)V

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->setEndDate(Ljava/util/Calendar;I)V

    goto :goto_3

    :cond_8
    move-object/from16 v3, v25

    :cond_9
    :goto_3
    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    if-ge v4, v5, :cond_c

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemSimpleMonthView;

    if-eqz v5, :cond_c

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->setStartDate(Ljava/util/Calendar;I)V

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->setEndDate(Ljava/util/Calendar;I)V

    goto :goto_4

    :cond_a
    move-object/from16 v3, v25

    goto :goto_4

    :cond_b
    move-object v1, v10

    move-object v3, v11

    :cond_c
    :goto_4
    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_5

    :cond_d
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    :goto_5
    return-void
.end method
