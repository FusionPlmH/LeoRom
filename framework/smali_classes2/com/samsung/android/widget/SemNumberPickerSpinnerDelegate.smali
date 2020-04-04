.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.super Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;
    }
.end annotation


# static fields
.field private static final DECREASE_BUTTON:I = 0x1

.field private static final DEFAULT_CHANGE_VALUE_BY:I = 0x1

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final INCREASE_BUTTON:I = 0x3

.field private static final INPUT:I = 0x2

.field private static final INPUT_TYPE_MONTH:Ljava/lang/String; = "inputType=month_edittext"

.field private static final INPUT_TYPE_YEAR_DATE_TIME:Ljava/lang/String; = "inputType=YearDateTime_edittext"

.field private static final LONG_PRESSED_SCROLL_COUNT:I = 0xa

.field private static final PICKER_VIBRATE_INDEX:I = 0x20

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x12c

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x1f4

.field private static final START_ANIMATION_SCROLL_DURATION:I = 0x359

.field private static final START_ANIMATION_SCROLL_DURATION_2016B:I = 0x22d

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field private mActivatedAlpha:F

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAlpha:F

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

.field private mChangeValueBy:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mCustomScroller:Landroid/widget/Scroller;

.field private mCustomTypefaceSet:Z

.field private mDecrementVirtualButtonPressed:Z

.field private mDefaultTypeface:Landroid/graphics/Typeface;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

.field private mHapticPreDrawListener:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;

.field private final mHeightRatio:F

.field private mHideWheelUntilFocused:Z

.field private mIdleAlpha:F

.field private mIgnoreMoveEvents:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsAmPm:Z

.field private mIsEditTextMode:Z

.field private mIsLongPressed:Z

.field private mIsStartingAnimation:Z

.field private mIsValueChanged:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastFocusedChildVirtualViewId:I

.field private mLastHoveredChildVirtualViewId:I

.field private final mLinearScroller:Landroid/widget/Scroller;

.field private mLongPressCount:I

.field private mLongPressUpdateInterval:J

.field private mLongPressed_FIRST_SCROLL:Z

.field private mLongPressed_SECOND_SCROLL:Z

.field private mLongPressed_THIRD_SCROLL:Z

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModifiedTxtHeight:I

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

.field private mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPerformClickOnTap:Z

.field private mPickerContentDescription:Ljava/lang/String;

.field private mPickerTypeface:Landroid/graphics/Typeface;

.field private final mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mReservedStartAnimation:Z

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

.field private mSkipNumbers:Z

.field private final mTextColor:I

.field private mTextSize:I

.field private mToast:Landroid/widget/Toast;

.field private mToastText:Ljava/lang/String;

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValue:I

.field private mValueChangeOffset:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibratePermission:Z

.field private final mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

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

.method public constructor <init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 26

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;-><init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;)V

    const-wide/16 v1, 0x12c

    iput-wide v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVibratePermission:Z

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f547ae1    # 0.83f

    const v5, 0x3e2e147b    # 0.17f

    invoke-direct {v3, v5, v5, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    const v3, 0x3ecccccd    # 0.4f

    iput v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    const v4, 0x3dcccccd    # 0.1f

    iput v4, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iget v4, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v4, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    new-instance v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$5;

    invoke-direct {v4, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$5;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v4, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v4, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x10502fe

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10502fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v8, v7

    int-to-float v9, v5

    div-float/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    sget-object v8, Lcom/android/internal/R$styleable;->SemNumberPicker:[I

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    invoke-virtual {v8, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    const/4 v15, 0x3

    invoke-virtual {v8, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    invoke-virtual {v8, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    if-eq v15, v14, :cond_1

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    if-eq v15, v14, :cond_1

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    if-gt v15, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minHeight > maxHeight"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    if-eq v3, v14, :cond_3

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v3, v14, :cond_3

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-gt v3, v15, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minWidth > maxWidth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v2, v3, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-ne v3, v14, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iput-boolean v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    const v13, 0x1010434

    invoke-virtual {v15, v13, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v13, v3, Landroid/util/TypedValue;->resourceId:I

    const/high16 v15, 0x33000000

    const v16, 0xffffff

    if-eqz v13, :cond_5

    iget v13, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    and-int v13, v13, v16

    or-int/2addr v13, v15

    goto :goto_3

    :cond_5
    iget v13, v3, Landroid/util/TypedValue;->data:I

    and-int v13, v13, v16

    or-int/2addr v13, v15

    :goto_3
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    const v14, 0x111008e

    invoke-virtual {v15, v14, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v14, v3, Landroid/util/TypedValue;->data:I

    const v15, 0x3e4ccccd    # 0.2f

    if-eqz v14, :cond_6

    iput v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    :cond_6
    new-instance v14, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-direct {v14, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v14, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    iget-object v14, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setWillNotDraw(Z)V

    iget-object v14, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    const v15, 0x109011d

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const v15, 0x10203fc

    invoke-virtual {v1, v15}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v15}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    invoke-static {v15}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v15}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "sec-roboto-condensed-light"

    invoke-static {v1, v15}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    :cond_7
    nop

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_a

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v15, "theme_font_clock"

    invoke-static {v2, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    iput-object v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    :cond_9
    goto :goto_5

    :cond_a
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    :cond_b
    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getEnableStateSet()[I

    move-result-object v15

    move/from16 v17, v1

    const/4 v1, -0x1

    invoke-virtual {v2, v15, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v2

    new-instance v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;

    invoke-direct {v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v3

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;

    invoke-direct {v2, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    move/from16 v20, v5

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v2, 0x2000006

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setHighlightColor(I)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->semSetHoverPopupType(I)V

    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v21, v1

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v22, v2

    const/4 v2, 0x0

    move/from16 v23, v6

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v5, v2, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v3, Landroid/widget/Scroller;

    iget-object v5, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x1

    invoke-direct {v3, v5, v6, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    new-instance v3, Landroid/widget/Scroller;

    iget-object v5, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    new-instance v1, Landroid/widget/Scroller;

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    move/from16 v24, v7

    move-object/from16 v25, v8

    const v7, 0x3ecccccd    # 0.4f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v2, v6, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v1, v3, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setImportantForAccessibility(I)V

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVibratePermission:Z

    :cond_d
    new-instance v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setFocusableInTouchMode(Z)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setDescendantFocusability(I)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setDefaultFocusHighlightEnabled(Z)V

    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    const v1, 0x104097d

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->semSetDirectPenInputEnabled(Z)V

    const/4 v1, 0x2

    new-array v3, v1, [F

    iget v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    aput v1, v3, v2

    iget v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    const/4 v2, 0x1

    aput v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Lcom/samsung/android/widget/SemAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method static synthetic access$2000()[C
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->needCompareEqualMonthLanguage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$2880(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$3080(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    return v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    if-eqz v3, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    const/16 v4, 0xa

    if-eqz v3, :cond_4

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/2addr v0, v4

    if-nez v0, :cond_2

    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/2addr v0, v4

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    if-eqz v0, :cond_5

    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    if-eqz v0, :cond_6

    const/16 v1, 0xc8

    const-wide/16 v3, 0x258

    iput-wide v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x64

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    :cond_7
    :goto_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v9, v0, v2

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v9, v0, v2

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    :cond_0
    aput v0, p1, v2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v3, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    move-result v0

    return v0
.end method

.method private ensureScrollWheelAdjusted(I)Z
    .locals 8

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-ge v2, v3, :cond_2

    if-lez v0, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_4

    if-lez v0, :cond_3

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    :goto_1
    add-int/2addr v0, v2

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x12c

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    const/4 v1, 0x1

    return v1

    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    return v1
.end method

.method private fling(I)V
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    mul-float v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->setFriction(F)V

    int-to-float v2, p1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-lez p1, :cond_0

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v5, v5

    iget v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/Scroller;->setFinalY(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    :goto_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v0

    div-float v3, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gt v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    :goto_1
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setEditTextPosition(I)V

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    :cond_5
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    aget v4, v0, v2

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isCharacterNumberLanguage()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "fa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "my"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
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

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v4, v2

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    rem-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_2

    if-lez v4, :cond_1

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v4, v5

    :cond_2
    :goto_0
    add-int/2addr v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    return v0

    :cond_3
    return v3
.end method

.method private needCompareEqualMonthLanguage()Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "inputType=month_edittext"

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private notifyChange(II)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v3, v0, v3

    aget-object v2, v2, v3

    :goto_0
    move-object v1, v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemNumberPicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;->onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V

    :cond_3
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/samsung/android/widget/SemNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVibratePermission:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->access$1900(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    return v1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    if-eqz p2, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->notifyChange(II)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private showSoftInputForWindowFocused()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startFadeAnimation(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    add-int/lit16 v1, v1, 0x1f4

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private stopScrollAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const/4 v2, 0x0

    nop

    :goto_0
    const/16 v4, 0x9

    if-gt v3, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    :goto_1
    if-lez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_3
    int-to-float v5, v3

    mul-float/2addr v5, v2

    float-to-int v0, v5

    move v1, v3

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    nop

    :goto_2
    if-ge v3, v2, :cond_6

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    float-to-int v0, v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isHighContrastTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getHCTStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v3, v1, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_7
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v2, v0, :cond_9

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    if-le v0, v2, :cond_8

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    :cond_9
    return-void
.end method

.method private updateHoveredVirtualView(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    nop

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-gt v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-gt v2, v0, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v6, :cond_3

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateHoveredVirtualView(I)V

    return v5

    :cond_3
    return v1

    :cond_4
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateHoveredVirtualView(I)V

    if-eq v2, v6, :cond_5

    move v1, v5

    nop

    :cond_5
    return v1

    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_d

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_14

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemNumberPicker;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_0
    return v5

    :cond_1
    const/16 v1, 0x15

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    :cond_2
    return v5

    :pswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v1, :cond_3

    return v4

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x14

    if-ne v0, v1, :cond_7

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v5, :cond_4

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return v5

    :cond_4
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v3

    if-ne v1, v3, :cond_5

    return v4

    :cond_5
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return v5

    :cond_6
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v2, :cond_14

    return v4

    :cond_7
    const/16 v1, 0x13

    if-ne v0, v1, :cond_14

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v5, :cond_8

    return v4

    :cond_8
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v3, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-ne v1, v2, :cond_9

    return v4

    :cond_9
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return v5

    :cond_a
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v2, :cond_14

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return v5

    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_14

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v1, :cond_c

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_c
    return v5

    :cond_d
    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v1, :cond_e

    return v4

    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v5, v1, :cond_14

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v3, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_f

    return v4

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    return v5

    :cond_10
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_11

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_11
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_0

    :cond_12
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v5, :cond_14

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    add-int/2addr v2, v5

    if-ne v1, v2, :cond_13

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_13
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    :cond_14
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToggle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEditTextModeNotAmPm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->getRight()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->getLeft()I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->getBottom()I

    move-result v4

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->hasFocus()Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    sub-int v7, v2, v3

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v9, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v10, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    iget-object v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_3

    iget v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v11, :cond_3

    iget v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v11, v6, :cond_1

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v11}, Lcom/samsung/android/widget/SemNumberPicker;->getDrawableState()[I

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v6, v10, v10, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v11, 0x3

    if-ne v6, v11, :cond_2

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v11}, Lcom/samsung/android/widget/SemNumberPicker;->getDrawableState()[I

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v6, v10, v11, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_3

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v11}, Lcom/samsung/android/widget/SemNumberPicker;->getDrawableState()[I

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v12, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v6, v10, v11, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v6, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    move v11, v9

    move v9, v10

    :goto_1
    array-length v12, v6

    if-ge v9, v12, :cond_7

    aget v12, v6, v9

    iget-object v13, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget v14, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    cmpg-float v15, v14, v15

    if-gez v15, :cond_4

    iget v14, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    :cond_4
    iget-object v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v15

    iget-object v10, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v15, v10

    div-float/2addr v15, v8

    add-float/2addr v15, v11

    iget-object v10, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float/2addr v15, v10

    float-to-int v10, v15

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v15, v8

    int-to-float v8, v15

    cmpl-float v8, v11, v8

    if-ltz v8, :cond_6

    iget v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v8, v15

    int-to-float v8, v8

    cmpg-float v8, v11, v8

    if-gtz v8, :cond_6

    iget v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    add-int/2addr v8, v15

    int-to-float v8, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v8, v15

    cmpg-float v8, v11, v8

    if-gtz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v8, v2, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    iget-object v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v15, v8, v14

    float-to-int v8, v15

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v10

    iget-object v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    move/from16 v16, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v3, v2, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    iget-object v8, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v15, v14

    float-to-int v15, v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v10

    iget-object v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    move/from16 v16, v3

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v15, v14

    float-to-int v15, v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v10

    iget-object v15, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    iget v3, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v3, v3

    add-float/2addr v11, v3

    add-int/lit8 v9, v9, 0x1

    move v10, v8

    move/from16 v3, v16

    const/high16 v8, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_7
    move/from16 v16, v3

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->semIsInMouseStylusMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v3, :cond_1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v3

    if-ne v1, v3, :cond_2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v1, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v3, :cond_3

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_3
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v3, :cond_6

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v4, :cond_5

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_5
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_5

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    cmpg-float v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_3

    move v1, v3

    nop

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v3

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_a

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v4, v1, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_9
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v4

    :cond_a
    :goto_2
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    add-int v6, v4, v2

    add-int v7, v5, v3

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheel()V

    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-le v8, v9, :cond_0

    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    goto :goto_0

    :cond_0
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->superOnMeasure(II)V

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setMeasuredDimensionWrapper(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_d

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_4

    :pswitch_1
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-eq v4, v2, :cond_5

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-le v4, v5, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_4
    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    :goto_0
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeBeginSoftInputCommand()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeChangeCurrentByOneFromLongPress()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v6, v5

    iget v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_3

    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    const/4 v9, 0x2

    if-le v7, v8, :cond_8

    iget v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v6, v7, :cond_7

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v7, :cond_7

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->fling(I)V

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    sub-long/2addr v7, v10

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v6, v10, :cond_c

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v7, v10

    if-gez v10, :cond_c

    iget-boolean v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v10, :cond_9

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    goto :goto_2

    :cond_9
    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v5, v10, :cond_a

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v9, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_a
    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v5, v10, :cond_b

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v10, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_b
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    nop

    :goto_4
    return v2

    :cond_d
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method public performClick(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    :goto_0
    return-void
.end method

.method public performLongClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    if-eqz p2, :cond_a

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v1, v4, :cond_1

    aget v1, v0, v2

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v4, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v4

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v1, v4, :cond_2

    aget v1, v0, v2

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v4, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v4

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_3
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    if-lt v1, v4, :cond_6

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->decrementSelectorIndices([I)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    aget v1, v0, v2

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v2

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v4, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    :cond_6
    :goto_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    neg-int v4, v4

    if-gt v1, v4, :cond_9

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->incrementSelectorIndices([I)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_8

    aget v1, v0, v2

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    aget v1, v0, v2

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v4, :cond_6

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setDescendantFocusability(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setDescendantFocusability(I)V

    :cond_6
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    :cond_7
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method public setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinValue(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMonthInputMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v0, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setPickerContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    return-void
.end method

.method public setSubTextSize(F)V
    .locals 0

    return-void
.end method

.method public setTextSize(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setToggle(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setTextTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method

.method public setYearDateTimeInputMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 3

    iput-object p2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlpha:F

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move v0, p1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
