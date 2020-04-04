.class public abstract Landroid/support/v7/widget/SeslAbsSeekBar;
.super Landroid/support/v7/widget/SeslProgressBar;
.source "SeslAbsSeekBar.java"


# static fields
.field private static final IS_BASE_SDK_VERSION:Z


# instance fields
.field private mAllowedSeekBarAnimation:Z

.field private mCurrentProgressLevel:I

.field private mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsTouchDisabled:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mPreviousHoverPopupType:I

.field private mScaledTouchSlop:I

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosXFloat:F

.field private mThumbPosY:I

.field private mThumbPosYFloat:F

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    :cond_0
    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    :cond_1
    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v6}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    :cond_3
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_splitTrack:I

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbOffset:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getThumbOffset()I

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbOffset(I)V

    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_useDisabledAlpha:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_4

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p1, p2, v6, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_disabledAlpha:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_control_color_normal:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_control_color_activated:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_overlap_color_normal:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_overlap_color_activated:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    if-nez v6, :cond_5

    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_thumb_control_color_activated:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    :cond_5
    sget v6, Landroid/support/v7/appcompat/R$bool;->sesl_seekbar_sliding_animation:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v6, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->initMuteAnimation()V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslAbsSeekBar;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/SeslAbsSeekBar;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method private applyThumbTint()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

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

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getDualOverlapDrawable()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method private getScale()F
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    sub-int v2, v1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private initMuteAnimation()V
    .locals 12

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0x1f4

    div-int/2addr v2, v1

    const/16 v3, 0x190

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_3

    rem-int/lit8 v6, v3, 0x2

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    const/4 v8, 0x2

    if-eqz v6, :cond_1

    new-array v8, v8, [I

    aput v4, v8, v4

    aput v5, v8, v7

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    goto :goto_2

    :cond_1
    new-array v8, v8, [I

    aput v5, v8, v4

    aput v4, v8, v7

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    :goto_2
    int-to-long v8, v2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v8, Landroid/support/v7/widget/SeslAbsSeekBar$1;

    invoke-direct {v8, p0}, Landroid/support/v7/widget/SeslAbsSeekBar$1;-><init>(Landroid/support/v7/widget/SeslAbsSeekBar;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_2

    int-to-double v8, v5

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v5, v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private setHotspot(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v4

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v4, v6

    iget v8, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    int-to-float v8, v4

    mul-float/2addr v8, v2

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, -0x80000000

    if-ne v3, v9, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    move v10, v3

    add-int v9, v3, v7

    :goto_0
    iget-boolean v11, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v11, :cond_2

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    sub-int v11, v4, v8

    goto :goto_1

    :cond_2
    move v11, v8

    :goto_1
    add-int v12, v11, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v14

    iget v15, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v15

    add-int v2, v11, v14

    add-int v3, v10, v15

    move/from16 v16, v4

    add-int v4, v12, v14

    add-int v5, v9, v15

    invoke-static {v13, v2, v3, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_2

    :cond_3
    move/from16 v16, v4

    :goto_2
    invoke-virtual {v1, v11, v10, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v11

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosY:I

    iget v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    int-to-float v2, v2

    int-to-float v3, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    int-to-float v2, v10

    int-to-float v3, v7

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateSplitProgress()V

    return-void
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v6, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    mul-float v6, v6, p3

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    move v8, v1

    add-int v7, v1, v4

    :goto_0
    sub-int v9, v2, v6

    add-int v10, v9, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v13

    iget v14, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v13, v14

    add-int v14, v8, v12

    add-int v1, v9, v13

    move v15, v2

    add-int v2, v7, v12

    add-int v3, v10, v13

    invoke-static {v11, v14, v1, v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_1

    :cond_1
    move v15, v2

    :goto_1
    move-object/from16 v1, p2

    invoke-virtual {v1, v8, v9, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    div-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v9

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosY:I

    int-to-float v2, v8

    int-to-float v3, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v3, v12

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    iget v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosY:I

    int-to-float v2, v2

    iput v2, v0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setPressed(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startMuteAnimation()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private trackHoverEvent(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v3

    sub-int v3, v0, v3

    if-le p1, v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v4

    int-to-float v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    float-to-int v5, v2

    iput v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, v2, v5

    if-le v0, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    if-ge v0, v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    sub-int v5, v3, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    if-ge v0, v5, :cond_4

    const/4 v5, 0x0

    :goto_0
    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, v2, v5

    if-le v0, v5, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    cmpg-float v8, v5, v8

    if-gez v8, :cond_6

    rem-float v8, v5, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_6

    sub-float v9, v7, v8

    add-float/2addr v5, v9

    :cond_6
    int-to-float v8, v6

    mul-float/2addr v8, v5

    add-float/2addr v4, v8

    int-to-float v8, v0

    int-to-float v9, v1

    invoke-direct {p0, v8, v9}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHotspot(FF)V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, v0, v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v5

    if-ge v3, v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    sub-int v5, v0, v5

    if-le v3, v5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int v5, v3, v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v6

    int-to-float v7, v6

    mul-float/2addr v7, v5

    add-float/2addr v4, v7

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHotspot(FF)V

    float-to-int v7, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method private updateBoundsForDualColor()V
    .locals 10

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-nez v3, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    if-nez v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v1

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v4, v7, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    int-to-float v6, v3

    sub-int v7, v1, v2

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private updateDualColorMode()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method private updateSplitProgress()V
    .locals 12

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v7, v3

    div-float/2addr v7, v6

    iget v9, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    const/high16 v10, 0x41b00000    # 22.0f

    mul-float/2addr v9, v10

    div-float/2addr v9, v6

    sub-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v9, v2

    div-float/2addr v9, v6

    iget v11, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    mul-float/2addr v8, v11

    div-float/2addr v8, v6

    add-float/2addr v9, v8

    float-to-int v8, v9

    int-to-float v9, v3

    div-float/2addr v9, v6

    iget v11, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    mul-float/2addr v10, v11

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v6, v9

    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 10

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    :goto_0
    if-le v5, v3, :cond_2

    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    nop

    goto :goto_1

    :cond_2
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    move v7, v6

    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateSplitProgress()V

    return-void
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .locals 10

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    :goto_0
    if-le v5, v3, :cond_1

    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    nop

    goto :goto_1

    :cond_1
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    move v7, v6

    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v9, v0, v7

    invoke-virtual {v1, v7, v4, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p2, v2, v4, v6}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    return-void
.end method

.method private updateWarningMode(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    nop

    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, v1

    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v7, 0x0

    :goto_1
    if-gt v7, v0, :cond_2

    iget-object v8, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_2

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/support/v7/widget/SeslProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateDualColorMode()V

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "qweqweqwe"

    const-string v1, "Stack:"

    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHoverPopupType()I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopupType(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public isHoverPopupTypeUserCustom(I)Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_USER_CUSTOM()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    const/16 v1, 0x3231

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoverPopupGravity(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoverPopupOffset(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoverPopupDetectTime()V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onHoverChanged(III)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoveringPoint(II)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateHoverPopup()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    neg-int v0, v0

    :sswitch_1
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onKeyChange()V

    return v3

    :cond_1
    :goto_1
    goto :goto_3

    :cond_2
    sparse-switch p1, :sswitch_data_1

    goto :goto_3

    :sswitch_2
    neg-int v0, v0

    :sswitch_3
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    neg-int v1, v0

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    move v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onKeyChange()V

    return v3

    :cond_4
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x51 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_0
    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_1
    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {v1, p1, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-static {v2, p2, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 5

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->startMuteAnimation()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->onProgressRefresh(FZI)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onSlidingRefresh(I)V

    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    goto/16 :goto_1

    :pswitch_1
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_4

    :cond_3
    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    :cond_5
    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setPressed(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    goto :goto_1

    :pswitch_3
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->supportIsInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownY:F

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    nop

    :goto_1
    return v2

    :cond_9
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onVisualProgressChanged(IF)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    sget v0, Landroid/support/v7/appcompat/R$id;->progress:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_5

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0, v2, v1, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    return v1

    :cond_5
    :goto_0
    return v2

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne p1, v3, :cond_8

    neg-int v4, v4

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p0, v3, v1, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onKeyChange()V

    return v1

    :cond_9
    return v2
.end method

.method public setHoverPopupDetectTime()V
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setHoverDetectTime(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public setHoverPopupGravity(I)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setGravity(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public setHoverPopupOffset(I)V
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setOffset(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setHoveringPoint(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 1

    if-gez p1, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    div-int v2, v1, v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMin(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    int-to-float v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMode(I)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_split_seekbar_primary_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_split_seekbar_vertical_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_control_anim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDualOverlapDrawable()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateDualColorMode()V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    move-result v0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateDualColorMode()V

    return v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->requestLayout()V

    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public supportIsHoveringUIEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportIsInScrollingContainer()Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->isInScrollingContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateDrawableBounds(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method public updateHoverPopup()V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->update(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
