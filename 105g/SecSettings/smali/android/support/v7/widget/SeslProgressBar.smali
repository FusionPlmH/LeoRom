.class public Landroid/support/v7/widget/SeslProgressBar;
.super Landroid/view/View;
.source "SeslProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;,
        Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;,
        Landroid/support/v7/widget/SeslProgressBar$SavedState;,
        Landroid/support/v7/widget/SeslProgressBar$RefreshData;,
        Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final IS_BASE_SDK_VERSION:Z

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/support/v7/widget/SeslProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCurrentMode:I

.field protected mDensity:F

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field private mMaxInitialized:Z

.field mMaxWidth:I

.field private mMin:I

.field mMinHeight:I

.field private mMinInitialized:Z

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/SeslProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

.field mSampleWidth:I

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


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
    sput-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSampleWidth:I

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    new-instance v1, Landroid/support/v7/widget/SeslProgressBar$1;

    const-string/jumbo v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/SeslProgressBar$1;-><init>(Landroid/support/v7/widget/SeslProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mUiThreadId:J

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->initProgressBar()V

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mNoInvalidate:Z

    sget v3, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressDrawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget v4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateDuration:I

    iget v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_minWidth:I

    iget v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_maxWidth:I

    iget v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_minHeight:I

    iget v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_maxHeight:I

    iget v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateBehavior:I

    iget v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_interpolator:I

    const v5, 0x10a000b

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/SeslProgressBar;->setInterpolator(Landroid/content/Context;I)V

    :cond_2
    sget v5, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_min:I

    iget v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslProgressBar;->setMin(I)V

    sget v5, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_max:I

    iget v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    sget v5, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progress:I

    iget v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    sget v5, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgress:I

    iget v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V

    sget v5, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    sget v6, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateOnly:I

    iget-boolean v7, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mNoInvalidate:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-nez v6, :cond_6

    sget v6, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminate:I

    iget-boolean v7, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    goto :goto_3

    :cond_6
    :goto_2
    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminate(Z)V

    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_mirrorForRtl:I

    iget-boolean v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_7

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    :cond_8
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_9

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    :cond_a
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    :cond_c
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_d

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    :cond_e
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_f

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    :cond_10
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_11

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    :cond_12
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_13

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v7}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    :cond_14
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_15

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressTints()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslProgressBar;->setImportantForAccessibility(I)V

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mDensity:F

    return-void
.end method

.method private static StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private StateListDrawable_getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslProgressBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslProgressBar;IIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static synthetic access$302(Landroid/support/v7/widget/SeslProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslProgressBar;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslProgressBar;)F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mVisualProgress:F

    return v0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/SeslProgressBar;F)F
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mVisualProgress:F

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->progress:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->background:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applySecondaryProgressTint()V

    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget v3, v1, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    iget v4, v1, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    iget v4, v1, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget v5, Landroid/support/v7/appcompat/R$id;->progress:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v8, v4

    float-to-int v8, v8

    iget-object v9, v1, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_b

    const/4 v10, 0x0

    instance-of v11, v9, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v11, :cond_4

    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v10, v11

    if-eqz v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v11

    invoke-static {v10, v11}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_2
    if-eqz v10, :cond_3

    move-object v11, v10

    goto :goto_2

    :cond_3
    move-object v11, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_6

    :cond_4
    instance-of v11, v9, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v11, :cond_9

    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v11}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v12

    move-object v13, v10

    move v10, v6

    :goto_3
    if-ge v10, v12, :cond_8

    move-object v14, v9

    check-cast v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v14, v10}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    if-nez v14, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    instance-of v15, v14, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v15, :cond_6

    move-object v15, v14

    check-cast v15, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object v13, v15

    if-eqz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v15

    if-eqz v15, :cond_6

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v15

    invoke-static {v13, v15}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_6
    if-eqz v13, :cond_7

    move-object v15, v13

    goto :goto_4

    :cond_7
    move-object v15, v9

    :goto_4
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    goto :goto_6

    :cond_9
    if-eqz v10, :cond_a

    move-object v11, v10

    goto :goto_5

    :cond_a
    move-object v11, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_6
    goto :goto_7

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :goto_7
    if-eqz v5, :cond_c

    if-eqz p5, :cond_c

    iget-object v11, v1, Landroid/support/v7/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    new-array v12, v7, [F

    aput v4, v12, v6

    invoke-static {v1, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v11, 0x50

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Landroid/support/v7/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_8

    :cond_c
    invoke-direct {v1, v0, v4}, Landroid/support/v7/widget/SeslProgressBar;->setVisualProgress(IF)V

    :goto_8
    if-eqz v5, :cond_d

    if-eqz p4, :cond_d

    move/from16 v7, p3

    invoke-virtual {v1, v4, v7, v2}, Landroid/support/v7/widget/SeslProgressBar;->onProgressRefresh(FZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :cond_d
    move/from16 v7, p3

    :goto_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private initProgressBar()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    const/16 v1, 0x64

    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    const/16 v0, 0x18

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    const/16 v1, 0x30

    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 7

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v0}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-static {v0, v4}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->obtain(IIZZ)Landroid/support/v7/widget/SeslProgressBar$RefreshData;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mAttached:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslProgressBar;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;-><init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/SeslProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setVisualProgress(IF)V
    .locals 2

    iput p2, p0, Landroid/support/v7/widget/SeslProgressBar;->mVisualProgress:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    return-void
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 9

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$id;->progress:I

    if-eq v6, v8, :cond_1

    sget v8, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    move v8, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v2

    :goto_2
    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v2

    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-static {v0}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v3

    nop

    :goto_4
    if-ge v1, v3, :cond_7

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v4

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v5, p2}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v2

    :cond_8
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mSampleWidth:I

    if-gtz v3, :cond_9

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mSampleWidth:I

    :cond_9
    if-eqz p2, :cond_a

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v3

    :cond_a
    return-object v1

    :cond_b
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2710

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v2

    :cond_1
    return-object p1
.end method

.method private updateDrawableState()V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawingTime()J

    move-result-wide v2

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    nop

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidateOnAnimation()V

    goto :goto_1

    :catchall_0
    move-exception v6

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    throw v6

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_2

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableState()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMirrorForRtl()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/support/v7/widget/SeslProgressBar;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;

    iget v4, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->id:I

    iget v5, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->fromUser:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->animate:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAttached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mAttached:Z

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    iget v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    iget v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableState()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Landroid/support/v7/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-static {v1, p2, v3}, Landroid/support/v7/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/SeslProgressBar;->setMeasuredDimension(II)V
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
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->scheduleAccessibilityEventSender()V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    if-le v0, v1, :cond_1

    if-nez p2, :cond_1

    sget v0, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    :cond_1
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/SeslProgressBar$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/support/v7/widget/SeslProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    iget v1, v0, Landroid/support/v7/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    iput v2, v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->progress:I

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    iput v2, v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    sget v3, Landroid/support/v7/appcompat/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method onVisualProgressChanged(IF)V
    .locals 0

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxInitialized:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinInitialized:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 2

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_split_seekbar_background_progress:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    if-ge v1, v0, :cond_2

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->requestLayout()V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_4

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->requestLayout()V

    :cond_4
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressTints()V

    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableState()V

    sget v3, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    sget v9, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    iget v10, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    :cond_7
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    invoke-static {p1, v0, v2}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result v0

    move p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    sget v0, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    move p1, v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    move p1, v0

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    sget v0, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method startAnimation()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    goto :goto_2

    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 12

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    move v0, p1

    move v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    sub-float v8, v6, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    int-to-float v8, p2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    sub-int v9, p1, v8

    div-int/lit8 v3, v9, 0x2

    add-int v0, v3, v8

    goto :goto_0

    :cond_0
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    move v1, v8

    move v2, v9

    :cond_1
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    sub-int v3, p1, v0

    sub-int v0, p1, v4

    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
