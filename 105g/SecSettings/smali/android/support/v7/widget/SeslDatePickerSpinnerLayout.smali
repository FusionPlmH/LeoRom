.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SeslDatePickerSpinnerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;,
        Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;,
        Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYDDMM:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

.field private final mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

.field private mIsEditTextMode:Z

.field private mIsLeapMonth:Z

.field private mIsLeapMonthMethod:Ljava/lang/reflect/Method;

.field private mIsLunar:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarTempDay:I

.field private mLunarTempMonth:I

.field private mLunarTempYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private final mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

.field private mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private final mPrimaryEmptyView:Landroid/view/View;

.field private final mSecondaryEmptyView:Landroid/view/View;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mToast:Landroid/widget/Toast;

.field private mToastText:Ljava/lang/String;

.field private final mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 14

    move-object v0, p0

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    new-instance v3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$1;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$1;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    iput-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/widget/EditText;

    iput-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iput v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->PICKER_DAY:I

    const/4 v4, 0x1

    iput v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->PICKER_MONTH:I

    const/4 v5, 0x2

    iput v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->PICKER_YEAR:I

    iput v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_MMDDYYYY:I

    iput v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_DDMMYYYY:I

    iput v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_YYYYMMDD:I

    iput v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_YYYYDDMM:I

    new-instance v3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    iput-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v3, p1

    iput-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$layout;->sesl_date_picker_spinner:I

    invoke-virtual {v6, v7, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    new-instance v7, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;

    invoke-direct {v7, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    sget v8, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_pickers:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    sget v8, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_primary_empty:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    sget v8, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_secondary_empty:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    sget v8, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_day:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v9, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/SeslNumberPicker$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/SeslNumberPicker$Formatter;)V

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    sget v8, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_month:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v9, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    goto :goto_0

    :cond_0
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/SeslNumberPicker$Formatter;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMonthInputMode()V

    :goto_0
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_year:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v8, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    const-string v2, "sec-roboto-light"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_number_text_size:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    sget v10, Landroid/support/v7/appcompat/R$string;->sesl_number_picker_invalid_value_entered:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v11, v8

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v11, v9

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "my"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "ml"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "bn"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "ar"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "fa"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const-string v11, "ga"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget v11, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    goto :goto_2

    :cond_2
    :goto_1
    sget v11, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    :cond_3
    :goto_2
    invoke-direct {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_3

    :cond_4
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    :goto_3
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_day:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_month:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_year:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v4, v5, v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->init(III)V

    invoke-direct {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->reorderSpinners()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateModeState(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslDatePicker;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    return v0
.end method

.method static synthetic access$402(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    return v0
.end method

.method static synthetic access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    return p1
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    return v0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return v0
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

.method private getLunarMaxDayOfMonth(IIZ)I
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object v1, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    sget-object v2, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    sget-object v2, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    sget-object v2, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

.method private isNewDate(III)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;->onDateChanged(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V

    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x79

    const/16 v5, 0x4d

    const/16 v6, 0x64

    if-ge v3, v1, :cond_3

    aget-char v7, v0, v3

    if-eq v7, v5, :cond_2

    if-eq v7, v6, :cond_1

    if-ne v7, v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V

    nop

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    nop

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    aget-char v3, v0, v2

    const/4 v7, 0x1

    aget-char v8, v0, v7

    if-eq v3, v5, :cond_7

    if-eq v3, v6, :cond_6

    if-eq v3, v4, :cond_4

    goto :goto_3

    :cond_4
    if-ne v8, v6, :cond_5

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    nop

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private seslLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setDate(III)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_0

    const v0, 0x2000005

    goto :goto_0

    :cond_0
    const v0, 0x2000006

    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private setTextWatcher(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    nop

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v0, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v8, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v5, v1, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v8, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v4, v1, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v2

    new-instance v8, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v5, v2, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-ne p1, v4, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length v4, v4

    sub-int/2addr v4, v7

    aget-object v3, v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v2

    new-instance v4, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateModeState(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method private updateSpinners(ZZZZ)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    const/4 v3, 0x2

    if-eqz p3, :cond_6

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v7, v6, v5

    if-nez v7, :cond_1

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move v10, v9

    move v9, v8

    goto :goto_1

    :cond_1
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-boolean v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v9, :cond_2

    iget v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    :cond_2
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xb

    :goto_0
    goto :goto_1

    :cond_3
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_4

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    const/16 v8, 0xb

    move v10, v8

    :goto_1
    move v8, v10

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    :cond_5
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v10, v9}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v10, v8}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v11}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v12}, Landroid/support/v7/widget/SeslNumberPicker;->getMaxValue()I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v10, v11, v12}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_6
    const/4 v5, 0x5

    if-eqz p4, :cond_c

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int v9, v8, v7

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    sub-int v12, v11, v10

    if-nez v9, :cond_7

    if-nez v12, :cond_7

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move v1, v13

    :goto_2
    move v3, v14

    goto/16 :goto_3

    :cond_7
    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v1, :cond_8

    iget v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    iget v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    :cond_8
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v13, v1, :cond_9

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v14, v1, :cond_9

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {v0, v13, v14, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v3

    goto :goto_3

    :cond_9
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v13, v1, :cond_a

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v14, v1, :cond_a

    const/4 v1, 0x1

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {v0, v13, v14, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3

    :cond_a
    const/4 v1, 0x1

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {v0, v13, v14, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v14

    goto :goto_2

    :cond_b
    :goto_3
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    :cond_c
    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v3, :cond_e

    iget v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_4

    :cond_f
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    :goto_4
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v5, :cond_10

    iget v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    :cond_10
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_11
    iget-boolean v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz v5, :cond_13

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    if-eqz v5, :cond_13

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length v7, v5

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_13

    aget-object v9, v5, v8

    invoke-virtual {v9}, Landroid/widget/EditText;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {v9}, Landroid/widget/EditText;->selectAll()V

    goto :goto_6

    :cond_12
    const/4 v10, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_13
    :goto_6
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    const/16 v0, 0x14

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    move v2, v0

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    invoke-interface {v1, v2, p1}, Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Landroid/support/v7/widget/SeslDatePicker;Z)V

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnSpinnerDateChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public updateInputState()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method
