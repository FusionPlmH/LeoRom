.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
.super Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;
.source "SeslTimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;,
        Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;,
        Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C


# instance fields
.field private SESL_DEBUG:Z

.field private final mAmPmMarginInside:Landroid/view/View;

.field private final mAmPmMarginOutside:Landroid/view/View;

.field private final mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private final mDivider:Landroid/widget/TextView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mEmpty1:Landroid/view/View;

.field private final mEmpty2:Landroid/view/View;

.field private mHourFormat:C

.field private final mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsAmPmAutoFlipped:Z

.field private mIsEditTextMode:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;-><init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->SESL_DEBUG:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/EditText;

    iput-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    new-instance v2, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$4;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$4;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    new-instance v2, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$5;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$5;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$layout;->sesl_time_picker_spinner:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v3, Landroid/support/v7/appcompat/R$id;->hour:I

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$string;->sesl_time_picker_hour:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v4, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v4, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const v4, 0x2000005

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    sget v5, Landroid/support/v7/appcompat/R$id;->divider:I

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setDividerText()V

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_1

    sget v6, Landroid/support/v7/appcompat/R$dimen;->sesl_time_picker_dialog_min_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    goto :goto_0

    :cond_1
    int-to-float v6, v5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v1, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    :goto_0
    sget v6, Landroid/support/v7/appcompat/R$dimen;->sesl_time_picker_spinner_height:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDefaultHeight:I

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    sget v7, Landroid/support/v7/appcompat/R$id;->minute:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/SeslNumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/SeslNumberPicker$Formatter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/SeslNumberPicker$Formatter;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$string;->sesl_time_picker_minute:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v7, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$2;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$2;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v7, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v7, 0x2000006

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    sget v6, Landroid/support/v7/appcompat/R$id;->amPm:I

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_timepicker_empty_1:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_timepicker_empty_2:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_timepicker_ampm_picker_margin_left:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    sget v7, Landroid/support/v7/appcompat/R$id;->sesl_timepicker_ampm_picker_margin_right:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    move-object v6, v4

    check-cast v6, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setAmPm(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v7, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v7, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Landroid/support/v7/appcompat/R$id;->sesl_timepicker_layout:I

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateHourControl()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslTimePicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslTimePicker;->setImportantForAccessibility(I)V

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setTextWatcher()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)C
    .locals 1

    iget-char v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->SESL_DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400()[C
    .locals 1

    sget-object v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return v0
.end method

.method static synthetic access$402(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return p1
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->validCheck()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateModeState(Z)V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/support/v4/icu/SeslLocaleDataReflector;->get(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/support/v4/icu/SeslLocaleDataReflector;->getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/icu/SeslLocaleDataReflector;->getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/support/v4/icu/SeslLocaleDataReflector;->getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v6, v2, v5

    const/4 v7, 0x1

    aget-object v8, v2, v7

    invoke-static {}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v9

    if-eqz v9, :cond_0

    aput-object v6, v0, v5

    aput-object v8, v0, v7

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_1

    move-object v9, v3

    goto :goto_0

    :cond_1
    move-object v9, v6

    :goto_0
    aput-object v9, v0, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    move-object v5, v8

    :goto_1
    aput-object v5, v0, v7

    :goto_2
    goto :goto_3

    :cond_3
    const-string v2, "SeslTimePickerSpinnerDelegate"

    const-string v3, "LocaleData failed. Use DateFormatSymbols for ampm"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getHourFormatData()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    nop

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput-char v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMeaLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private onTimeChanged()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslTimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/support/v7/widget/SeslTimePicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-nez p1, :cond_2

    const/16 p1, 0xc

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method private setDividerText()V
    .locals 10

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hm"

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v4, 0x68

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    :cond_1
    if-ne v2, v3, :cond_2

    const-string v3, ":"

    :goto_1
    goto :goto_2

    :cond_2
    const/16 v4, 0x6d

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    const-string v6, "sec-roboto-condensed-light"

    invoke-static {v6, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "sec-roboto-light"

    invoke-static {v7, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move-object v7, v6

    goto :goto_3

    :cond_4
    const-string v8, "sans-serif-thin"

    invoke-static {v8, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    :cond_5
    :goto_3
    iget-object v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "theme_font_clock"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    iget-object v8, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private setTextWatcher()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4, v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslTimePicker;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-char v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_1
    iget-char v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/SeslNumberPicker$Formatter;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/SeslNumberPicker$Formatter;)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateModeState(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method private validCheck()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    const/16 v2, 0xc

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_5
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getDefaultHeight()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDefaultHeight:I

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    return v0
.end method

.method public getHour()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    rem-int/lit8 v1, v0, 0xc

    return v1

    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public is24Hour()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    or-int/lit8 v0, v0, 0x40

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    invoke-interface {v1, v2, p1}, Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Landroid/support/v7/widget/SeslTimePicker;Z)V

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateHourControl()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnTimeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;

    return-void
.end method
