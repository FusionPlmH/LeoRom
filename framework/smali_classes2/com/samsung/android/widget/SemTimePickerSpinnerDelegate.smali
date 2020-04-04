.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
.super Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;
.source "SemTimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;,
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;,
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DIGIT_CHARACTERS:[C

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SemTimePicker"


# instance fields
.field private SEM_DEBUG:Z

.field private final mAmPmMarginInside:Landroid/view/View;

.field private final mAmPmMarginOutside:Landroid/view/View;

.field private final mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private final mDivider:Landroid/widget/TextView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mEmpty1:Landroid/view/View;

.field private final mEmpty2:Landroid/view/View;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsAmPmAutoFlipped:Z

.field private mIsEditTextMode:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

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
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;-><init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    new-instance v2, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    new-instance v2, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->SEM_DEBUG:Z

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v4, 0x1090129

    invoke-virtual {v2, v4, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x102031f

    invoke-virtual {p1, v3}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040976

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v4, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const v4, 0x10203fc

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const v5, 0x2000005

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v6, 0x102029f

    invoke-virtual {v3, v6}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setDividerText()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v7, 0x258

    if-lt v6, v7, :cond_1

    const v7, 0x1050339

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultWidth:I

    goto :goto_0

    :cond_1
    int-to-float v7, v6

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v0, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultWidth:I

    :goto_0
    const v7, 0x105033b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultHeight:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v8, 0x10203af

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v7, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v7, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104097b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v8, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v8, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v7, v4}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v8, 0x2000006

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v7, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setId(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setNextFocusForwardId(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204dc

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204dd

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-static {p2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204da

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204db

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10201fa

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setToggle(Z)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v7, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v5, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5, v4}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x10204de

    invoke-virtual {p1, v4}, Lcom/samsung/android/widget/SemTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateHourControl()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setHour(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTimePicker;->setImportantForAccessibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setTextWatcher()V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v4, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v4, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v4, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)C
    .locals 1

    iget-char v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->SEM_DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400()[C
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->validCheck()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateModeState(Z)V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v0, v4

    iget-object v2, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v0, v3

    goto :goto_2

    :cond_0
    iget-object v2, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-le v2, v5, :cond_1

    iget-object v2, v1, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    :goto_0
    aput-object v2, v0, v4

    iget-object v2, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    iget-object v2, v1, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    :goto_1
    aput-object v2, v0, v3

    :goto_2
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

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

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
    iput-char v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string/jumbo v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isCharacterNumberLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lo"

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

    if-nez v1, :cond_1

    const-string/jumbo v1, "my"

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

.method private static isMeaLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lo"

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

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/samsung/android/widget/SemTimePicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xc

    if-lt p1, v0, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    if-le p1, v0, :cond_3

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    if-nez p1, :cond_3

    const/16 p1, 0xc

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_5
    return-void
.end method

.method private setDividerText()V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "hm"

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

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
    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    const-string/jumbo v6, "sec-roboto-light"

    invoke-static {v6, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "sec-roboto-condensed-light"

    invoke-static {v7, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "theme_font_clock"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v4}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private setTextWatcher()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-char v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateModeState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method private validCheck()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    const/16 v2, 0xc

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setHour(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_5
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getDefaultHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultHeight:I

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultWidth:I

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

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

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :goto_0
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

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    or-int/lit8 v0, v0, 0x40

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

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

    check-cast v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setHour(I)V

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemTimePicker;Z)V

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateHourControl()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public setNumberPickerTextSize(IF)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNumberPickerTextTypeface(ILandroid/graphics/Typeface;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v0

    const/16 v1, 0x6e

    const/16 v2, 0x37

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, p2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    :goto_0
    return-void
.end method
