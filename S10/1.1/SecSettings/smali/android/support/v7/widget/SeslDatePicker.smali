.class public Landroid/support/v7/widget/SeslDatePicker;
.super Landroid/widget/LinearLayout;
.source "SeslDatePicker.java"

# interfaces
.implements Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;
.implements Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslDatePicker$LunarDate;,
        Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;,
        Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;,
        Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;,
        Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;,
        Landroid/support/v7/widget/SeslDatePicker$SavedState;,
        Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;,
        Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
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

.field private mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Landroid/support/v4/view/ViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private mCurrentViewType:I

.field private mDatePickerHeight:I

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

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

.field private mOnDateChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;

.field private mPadding:I

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mSolarLunarTables:Ljava/lang/Object;

.field private mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

.field private mStartDate:Ljava/util/Calendar;

.field private mStartOfLunarYearField:Ljava/lang/reflect/Field;

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mTotalMonthCountWithLeap:[I

.field private mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

.field private mWeekStart:I

.field private mWidthPerYearField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    iput-boolean v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsEnabled:Z

    const/4 v7, -0x1

    iput v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    iput v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mOldSelectedDay:I

    iput v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mPadding:I

    iput v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    iput v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    iput v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    iput-boolean v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    iput-boolean v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    iput-boolean v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput-boolean v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsFromSetLunar:Z

    iput-boolean v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarChanged:Z

    const/4 v7, 0x0

    iput-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    new-instance v8, Landroid/support/v7/widget/SeslDatePicker$1;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/SeslDatePicker$1;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v8, Landroid/support/v7/widget/SeslDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Landroid/support/v7/widget/SeslDatePicker$2;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/os/Looper;)V

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/support/v7/widget/SeslDatePicker$3;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/SeslDatePicker$3;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v8, Landroid/support/v7/widget/SeslDatePicker$4;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/SeslDatePicker$4;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v8, Landroid/support/v7/widget/SeslDatePicker$5;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/SeslDatePicker$5;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->isRTL()Z

    move-result v8

    iput-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v8

    iput-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v8

    iput-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "EEEEE"

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "EEE"

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :goto_0
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v8, v9}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v8, v9}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v8, v9}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v8, v9}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v8, v9}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->DatePicker:[I

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$styleable;->DatePicker_android_startYear:I

    const/16 v11, 0x76e

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    sget v11, Landroid/support/v7/appcompat/R$styleable;->DatePicker_android_endYear:I

    const/16 v12, 0x834

    invoke-virtual {v9, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v12, v10, v5, v6}, Ljava/util/Calendar;->set(III)V

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/16 v13, 0xb

    const/16 v14, 0x1f

    invoke-virtual {v12, v11, v13, v14}, Ljava/util/Calendar;->set(III)V

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_1

    sget v13, Landroid/support/v7/appcompat/R$layout;->sesl_date_picker:I

    invoke-virtual {v12, v13, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_1
    sget v13, Landroid/support/v7/appcompat/R$layout;->sesl_date_picker_legacy:I

    invoke-virtual {v12, v13, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_1
    sget v13, Landroid/support/v7/appcompat/R$styleable;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v9, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/SeslDatePicker;->setFirstDayOfWeek(I)V

    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/support/v7/appcompat/R$styleable;->DatePicker:[I

    invoke-virtual {v14, v2, v15, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    new-instance v15, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v15, v0, v5, v14}, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    sget v5, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayNumberTextColor:I

    sget v15, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_normal_day_number_text_color_light:I

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v5, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    sget v15, Landroid/support/v7/appcompat/R$styleable;->DatePicker_btnTintColor:I

    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_button_tint_color_light:I

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v14, v15, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    sget v15, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar:I

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager;

    iput-object v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v15, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-direct {v15, v0}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v15, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v15, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;

    const/4 v2, 0x0

    invoke-direct {v15, v0, v2}, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$1;)V

    invoke-virtual {v7, v15}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/support/v4/view/ViewPager;->setMouseWheelEventSupport(Z)V

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPadding:I

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v2, v7}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v2, v7}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_view_animator:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_view:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v7, Landroid/support/v7/widget/SeslDatePicker$6;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/SeslDatePicker$6;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    invoke-virtual {v2, v0, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v7, Landroid/support/v7/widget/SeslDatePicker$7;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/SeslDatePicker$7;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->checkMaxFontSize()V

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_day_of_the_week:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_layout:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_layout:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-boolean v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v2, :cond_3

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v15, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_increment_month:I

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v15, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_decrement_month:I

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    :goto_2
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v15, 0x101045c

    const/4 v1, 0x1

    invoke-virtual {v7, v15, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_between_header_and_weekend:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_between_weekend_and_calender:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v1, v7

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v1, v7

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v1, v7

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v1, v7

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerHeight:I

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    return v0
.end method

.method static synthetic access$1602(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    return p1
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return v0
.end method

.method static synthetic access$1702(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return p1
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    return v0
.end method

.method static synthetic access$1802(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    return p1
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    return v0
.end method

.method static synthetic access$2102(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    return p1
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    return v0
.end method

.method static synthetic access$2202(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    return p1
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    return v0
.end method

.method static synthetic access$2302(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    return p1
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    return v0
.end method

.method static synthetic access$2402(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    return p1
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    return v0
.end method

.method static synthetic access$2602(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    return p1
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    return v0
.end method

.method static synthetic access$2702(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    return p1
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    return v0
.end method

.method static synthetic access$2802(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    return p1
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    return v0
.end method

.method static synthetic access$2902(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/SeslDatePicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    return-void
.end method

.method static synthetic access$3500(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->seslLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->getLunarDateByPosition(I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    return v0
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    return v0
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mNumDays:I

    return v0
.end method

.method static synthetic access$4102(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mWeekStart:I

    return v0
.end method

.method static synthetic access$4202(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic access$4300(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFromSetLunar:Z

    return v0
.end method

.method static synthetic access$4302(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFromSetLunar:Z

    return p1
.end method

.method static synthetic access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    return v0
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    return v0
.end method

.method static synthetic access$4800(Landroid/support/v7/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPadding:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    return v0
.end method

.method static synthetic access$902(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    return p1
.end method

.method private checkMaxFontSize()V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_header_month_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v4, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide v6, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

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

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.calendar"

    invoke-static {v1, v2}, Landroid/support/v4/feature/SeslFloatingFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Landroid/support/v7/widget/SeslDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

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

.method private getIndexOfleapMonthOfYear(I)I
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

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

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

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

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

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
    const-string v4, "Picker"

    const-string v5, "getIndexOfleapMonthOfYear, not Integer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getLunarDateByPosition(I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;
    .locals 12

    new-instance v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslDatePicker$LunarDate;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v5

    const/4 v6, 0x1

    if-gt v4, v5, :cond_5

    invoke-direct {p0, v4}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v5

    if-ge p1, v5, :cond_4

    move v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v5

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    neg-int v5, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, -0x1

    invoke-direct {p0, v5}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v5

    :goto_1
    sub-int v7, p1, v5

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

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
    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->set(IIIZ)V

    return-object v0
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 12

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL y"

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

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

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v9, 0x24

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getContext()Landroid/content/Context;

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

    const-string v1, "Picker"

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

    const-string v2, "Picker"

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

    const-string v2, "Picker"

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

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

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

    const-string v1, "Picker"

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

    const-string v2, "Picker"

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

    const-string v2, "Picker"

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

    const-string v2, "Picker"

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
    .locals 2

    const-string v0, "fa"

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRTL()Z
    .locals 4

    const-string/jumbo v0, "ur"

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private isSimplifiedChinese()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_dialog_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

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
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    :goto_2
    return p1
.end method

.method private onDateChanged()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mOnDateChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v3, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mOnDateChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v0, v1, v2}, Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;->onDateChanged(Landroid/support/v7/widget/SeslDatePicker;III)V

    :cond_1
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->access$5000(Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/SeslDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v7/widget/SeslDatePicker$10;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslDatePicker$10;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

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

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private seslLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    const/16 v3, 0xd

    const/16 v4, 0xc

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

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
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

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
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v5

    if-le v5, v4, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    add-int/2addr v0, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

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

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarChanged:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    sub-int v4, v2, v4

    mul-int/lit8 v4, v4, 0xc

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    sub-int v5, v0, v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_7

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v5

    if-ge v0, v5, :cond_2

    move v6, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v7

    if-ne v2, v7, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v7

    neg-int v7, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v7}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v7

    :goto_1
    add-int v4, v7, v6

    iget v8, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-ne v8, v3, :cond_4

    iget v8, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    if-ne v0, v8, :cond_4

    iget v8, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    if-eq v8, v3, :cond_6

    :cond_4
    iget v8, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-ne v8, v1, :cond_5

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    if-ne v0, v1, :cond_5

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    if-eq v1, v3, :cond_6

    :cond_5
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-nez v1, :cond_7

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    if-eqz v1, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    :cond_7
    iput v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v5, 0x3e8

    iput v5, v1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v5, 0x3e9

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

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

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentViewType()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    return v0
.end method

.method public getDateMode()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne v0, v1, :cond_7

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_2

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEEE"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerHeight:I

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->checkMaxFontSize()V

    return-void
.end method

.method public onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDayClick day : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->seslLog(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    :cond_0
    move v12, v1

    move v11, v3

    invoke-virtual {v0, v15, v14, v13}, Landroid/support/v7/widget/SeslDatePicker;->onDayOfMonthSelected(III)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    sub-int v1, v14, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v3

    sub-int v3, v15, v3

    mul-int/lit8 v3, v3, 0xc

    add-int v10, v1, v3

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-eq v1, v10, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move/from16 v19, v1

    if-ne v15, v12, :cond_2

    if-ne v14, v11, :cond_2

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mOldSelectedDay:I

    if-ne v13, v1, :cond_2

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-nez v1, :cond_2

    if-eqz v19, :cond_3

    :cond_2
    iput v13, v0, Landroid/support/v7/widget/SeslDatePicker;->mOldSelectedDay:I

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxDay()I

    move-result v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x1f

    :goto_2
    move v7, v1

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    iget-boolean v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v9, p1

    invoke-virtual {v9, v1, v3, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    goto :goto_3

    :cond_6
    move-object/from16 v9, p1

    :goto_3
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    move/from16 v21, v1

    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_7

    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    iget v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

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
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

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

    invoke-virtual/range {v1 .. v18}, Landroid/support/v7/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/SeslSimpleMonthView;->invalidate()V

    return-void
.end method

.method public onDayOfMonthSelected(III)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x3e8

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    goto :goto_1

    :goto_0
    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    :cond_1
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->onValidationChanged(Z)V

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeactivatedDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZZ)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p6, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->getLunarDateByPosition(I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v0

    iget p2, v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    iget p3, v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    iget-boolean v2, v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    if-eqz p6, :cond_1

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/2addr v2, v1

    :goto_1
    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslDatePicker;->onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslDatePicker;->onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->removeAllCallbacks()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz v1, :cond_0

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v3, v1

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_1

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v5, v1

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_1
    :goto_0
    return v2
.end method

.method protected onMeasure(II)V
    .locals 7

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePicker;->makeMeasureSpec(II)I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    if-lt v1, v4, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerHeight:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslDatePicker;->setCurrentViewType(I)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    if-ne v1, v4, :cond_2

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v6, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v6, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iget v6, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->seslSetConfigurationChanged(Z)V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    check-cast v1, Landroid/support/v7/widget/SeslDatePicker$SavedState;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedYear()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedMonth()I

    move-result v4

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedDay()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedYear()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedMonth()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedDay()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getMinDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getMaxDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v12

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_0
    move v13, v1

    move v14, v2

    move v15, v3

    const/16 v16, -0x1

    new-instance v17, Landroid/support/v7/widget/SeslDatePicker$SavedState;

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    move-object/from16 v1, v17

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v10, v16

    invoke-direct/range {v1 .. v11}, Landroid/support/v7/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILandroid/support/v7/widget/SeslDatePicker$1;)V

    return-object v17
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;->onValidationChanged(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentViewType(I)V
    .locals 6

    const/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v1, p1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v1, v3, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    iput v0, v4, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :pswitch_3
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDateMode(I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_0

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    :cond_0
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v8, v2, v6, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_1

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    :cond_1
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v8, v2, v6, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    nop

    :goto_0
    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v2, v2, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/SeslSimpleMonthView;

    if-eqz v7, :cond_7

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v11, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v11, :cond_3

    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    iget v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    iget v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_3
    move v12, v8

    move v15, v9

    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v8

    if-ne v8, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v8

    if-ne v8, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinDay()I

    move-result v8

    move v13, v8

    goto :goto_1

    :cond_4
    move v13, v5

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v8

    if-ne v8, v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v8

    if-ne v8, v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxDay()I

    move-result v8

    goto :goto_2

    :cond_5
    const/16 v8, 0x1f

    :goto_2
    move v14, v8

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v11, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v11, :cond_6

    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    iget v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    iget v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    iget v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    :cond_6
    move/from16 v29, v3

    move/from16 v28, v4

    move/from16 v27, v5

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v16

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

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

    invoke-virtual/range {v8 .. v25}, Landroid/support/v7/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual {v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->invalidate()V

    :cond_7
    iget-boolean v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    :cond_8
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxDate(J)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->setTotalMonthCountWithLeap()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v7/widget/SeslDatePicker$9;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslDatePicker$9;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMinDate(J)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->setTotalMonthCountWithLeap()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v7/widget/SeslDatePicker$8;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslDatePicker$8;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setValidationCallback(Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

    return-void
.end method
