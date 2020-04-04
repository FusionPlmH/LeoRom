.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field public static final CONVENTIONAL_MODE_BAR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final DEBUG_DEX:Z = false

.field private static final DEBUG_DEX_COMPAT:Z = false

.field private static final DEBUG_MEASURE:Z = false

.field private static final DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x5

.field private static final DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x3

.field private static final DESKTOP_DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0xa

.field private static final DESKTOP_DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0xa

.field public static final DEX_COMPAT_LOG_PREFIX:Ljava/lang/String; = "[DexCompat] "

.field public static final NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final SEM_ROUNDED_CORNER_BOTTOM:I = 0xc

.field private static final SEM_ROUNDED_CORNER_LEFT:I = 0x5

.field private static final SEM_ROUNDED_CORNER_RIGHT:I = 0xa

.field private static final SEM_ROUNDED_CORNER_TOP:I = 0x3

.field public static final STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "DecorView"


# instance fields
.field private mAllowUpdateElevation:Z

.field private mApplyFloatingHorizontalInsets:Z

.field private mApplyFloatingVerticalInsets:Z

.field private mAvailableWidth:F

.field private mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field mCalledOnAttachedToWindow:Z

.field mCalledUpdateDexInfo:Z

.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChanging:Z

.field mContentRoot:Landroid/view/ViewGroup;

.field public mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

.field private final mConventionalModeBarViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field private mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

.field mDefaultOpacity:I

.field private mDensityDpi:I

.field private mDensityRatio:F

.field private mDisplayCutoutBackgroundColor:I

.field private mDisplayCutoutBackgroundColorByAPI:Z

.field private mDisplayCutoutBackgroundView:Landroid/view/View;

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mDualAppBadge:Landroid/graphics/drawable/Drawable;

.field private mElevationAdjustedForStack:Z

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final mFloatingInsets:Landroid/graphics/Rect;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mForceRoundedCorner:Z

.field final mForceWindowDrawsStatusBarBackground:Z

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mGestureNavBarEnabled:Z

.field private mHasCaption:Z

.field private mHasDisplayCutout:Z

.field private mHasWindowFocus:Z

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field mIsDesktopMode:Z

.field mIsDexCompatWindow:Z

.field private mIsInPictureInPictureMode:Z

.field private mIsPenSelectionMode:Z

.field private mIsSamsungBasicInteraction:Z

.field private mIsShowNavigationBar:Z

.field private mIsSidescreen:Z

.field private mKnoxBadge:Landroid/graphics/drawable/Drawable;

.field private mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private mLastBackgroundResource:I

.field private mLastBottomInset:I

.field private mLastConventionalModeBarSize:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasLeftStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastLeftInset:I

.field mLastOrientation:I

.field private mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mLastRightInset:I

.field private mLastShouldAlwaysConsumeNavBar:Z

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field mLogTag:Ljava/lang/String;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mOutsets:Landroid/graphics/Rect;

.field private final mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

.field mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mResizeMode:I

.field private final mResizeShadowSize:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootScrollY:I

.field private mRoundedCornerMode:I

.field private final mSemiTransparentStatusBarColor:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field mStayFocus:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTmpColorViewBounds:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private mWatchingForMenu:Z

.field private mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowResizeCallbacksAdded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v10, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const-string v6, "android:status:background"

    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const/4 v4, 0x3

    const/4 v5, 0x5

    const v7, 0x102002f

    const/16 v8, 0x400

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V

    sput-object v10, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const-string v17, "android:navigation:background"

    const/4 v12, 0x2

    const/high16 v13, 0x8000000

    const/16 v14, 0x50

    const/4 v15, 0x5

    const/16 v16, 0x3

    const v18, 0x1020030

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const-string v7, "android:conventionalmode:background"

    const/4 v2, 0x2

    const/high16 v3, 0x8000000

    const/16 v4, 0x50

    const/4 v6, 0x3

    const v8, 0x1020030

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->CONVENTIONAL_MODE_BAR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDualAppBadge:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    new-instance v1, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v2, Lcom/android/internal/policy/DecorView;->CONVENTIONAL_MODE_BAR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mConventionalModeBarViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastConventionalModeBarSize:I

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    new-instance v3, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v4, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    new-instance v3, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v4, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    new-instance v3, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v3}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    const-string v3, "DecorView"

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCalledUpdateDexInfo:Z

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsSidescreen:Z

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColorByAPI:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsSamsungBasicInteraction:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const v2, 0x10c000e

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    const v2, 0x10c000f

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060203

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11200ad

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105021b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    new-instance v2, Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-direct {v2, p0, p3}, Lcom/android/internal/policy/MultiWindowDecorSupport;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->updateDexInfoIfNeeded()V

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    sget-boolean v4, Lcom/android/internal/policy/DecorView;->sIsSamsungBasicInteraction:Z

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsSamsungBasicInteraction:Z

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_3

    :cond_4
    move-object v5, v0

    :goto_3
    move-object v2, v5

    goto :goto_5

    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsSamsungBasicInteraction:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_4

    :cond_6
    move-object v7, v0

    :goto_4
    move-object v2, v7

    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    const-string v4, "SamsungBasicInteraction"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SEP10"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsSamsungBasicInteraction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    goto :goto_6

    :catch_0
    move-exception v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    const-string v5, "Failed to get SamsungBasicInteraction metadata"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "config_mainBuiltInDisplayCutout"

    const-string/jumbo v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move v1, v3

    nop

    :cond_a
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not update hasDisplayCutout. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method private calculateStatusBarColor()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(III)I

    move-result v0

    return v0
.end method

.method public static calculateStatusBarColor(III)I
    .locals 1

    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    :goto_0
    return v0
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setType(I)V

    return-object v0
.end method

.method private createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionWindowIfNeeded()V

    :cond_3
    const/4 v1, 0x0

    return-object v1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    if-eq v3, v2, :cond_6

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v3, v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v9

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_3

    :cond_7
    move v9, v4

    :goto_3
    const-string v10, "DecorView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createDecorCaptionView >> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", isFloating: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isApplication: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", hasWindowDecorCaption: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", hasWindowControllerCallback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_9

    if-eqz v3, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    :cond_8
    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v10, v5}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_a

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    move v2, v4

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    return-object v0
.end method

.method private createDecorCaptionWindowIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->addDecorCaptionWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLastRequestedOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->dispatchRequestedOrientation(I)V

    :cond_0
    const-string v1, "DecorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecorCaptionWindow is generated, Window="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " DecorView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/DecorView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    :goto_0
    move-object v5, v6

    new-instance v6, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v6, v5}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x1110005

    invoke-direct {v6, v5, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10102eb

    invoke-virtual {v6, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v7, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    goto :goto_1

    :cond_2
    const v0, 0x10201db

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_4

    move v1, v3

    nop

    :cond_4
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    return-object v0

    :cond_5
    return-object v2
.end method

.method private dipToPx(F)F
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private drawDualAppBadge(Landroid/graphics/Canvas;I)V
    .locals 8

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDualAppBadge:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mDualAppBadge:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mDualAppBadge:Landroid/graphics/drawable/Drawable;

    sub-int v6, v1, v3

    sub-int v7, v2, v4

    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mDualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private drawKnoxBadge(Landroid/graphics/Canvas;I)V
    .locals 9

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    sub-int v7, v2, v4

    sub-int v8, v3, v5

    invoke-virtual {v6, v7, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V
    .locals 8

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/DisplayListCanvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private drawableChanged()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, -0x3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v2, :cond_8

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gtz v4, :cond_7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, -0x1

    :goto_1
    goto :goto_2

    :cond_7
    const/4 v0, -0x3

    :cond_8
    :goto_2
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    :cond_9
    return-void
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method private static enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-nez p1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    nop

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-object v2

    :cond_0
    return-object p0
.end method

.method public static getColorViewBottomInset(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getColorViewLeftInset(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getColorViewRightInset(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getColorViewTopInset(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getNavBarSize(III)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v3

    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sub-int v4, p0, v3

    invoke-virtual {p4, v4, v5, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p4, v5, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sub-int v4, p1, v3

    invoke-virtual {p4, v5, v4, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public static getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private static getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1

    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method private inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    const-string v4, "DecorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inflateDecorCaptionView: APPCTX_DPI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", CTX_DPI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "DecorView"

    const-string v5, "inflateDecorCaptionView: Changed candiateContext"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v7, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-lez v7, :cond_1

    iget v7, v5, Landroid/content/res/Configuration;->densityDpi:I

    iget v8, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v7, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "DecorView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflateDecorCaptionView: cannot use appContext, threadConfig="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", appConfig="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_3

    const v4, 0x1030128

    goto :goto_1

    :cond_3
    const v4, 0x103012b

    :goto_1
    invoke-direct {v3, v1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v3

    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inflateDecorCaptionView: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inflateDecorCaptionView: config="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " resConfig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "DecorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateDecorCaptionView: Final densityDpi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x1090058

    goto :goto_2

    :cond_5
    const v1, 0x1090057

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    return-object v1
.end method

.method private initResizingPaints()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1060141

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060140

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    add-int v3, v1, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v10, v6

    const/4 v15, 0x3

    new-array v11, v15, [I

    const/16 v16, 0x0

    aput v1, v11, v16

    const/16 v17, 0x1

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v9, v6

    new-array v11, v15, [I

    aput v1, v11, v16

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_1

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeElevation()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    return-void
.end method

.method private isChildIntersectsWith(Landroid/view/View;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mConventionalModeBarViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-ne v3, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isNavBarToLeftEdge(II)Z
    .locals 1

    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNavBarToRightEdge(II)Z
    .locals 1

    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOutOfBounds(II)Z
    .locals 1

    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_0

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

.method private isOutOfInnerBounds(II)Z
    .locals 1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_0

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

.method private loadBackgroundDrawablesIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find background drawable for PhoneWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10802a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    return-void
.end method

.method private refreshGestureNavBarSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mGestureNavBarEnabled:Z

    return-void
.end method

.method private releaseThreadedRenderer()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    :cond_1
    return-void
.end method

.method private removeDecorCaptionView()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->clearDisappearingChildren()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static setColor(Landroid/view/View;IIZZ)V
    .locals 11

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p3, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_4

    :cond_1
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    nop

    move v6, v2

    :goto_1
    if-nez p3, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    nop

    move v7, v2

    :goto_2
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    nop

    :goto_4
    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_5
    return-void
.end method

.method private setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2

    const v0, 0x1020398

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x10802a9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x102026a

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x10802a7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/internal/widget/DecorCaptionView;->setDecorCaptionShade()V

    return-void
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    new-instance v2, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v2, Lcom/android/internal/view/FloatingActionMode;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2

    const v0, 0x1020398

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x10802aa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x102026a

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x10802a8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    invoke-interface {v4, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v4, v5, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v4, :cond_6

    move v2, v3

    nop

    :cond_6
    return v2
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 4

    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez p3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v3

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_3
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    :cond_4
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_7

    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :cond_7
    :goto_2
    return-object v1
.end method

.method private updateAvailableWidth()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    return-void
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p10

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v10, p2

    invoke-virtual {v8, v10, v9, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v8, v9, v2, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v12

    if-nez v12, :cond_0

    if-lez p5, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    iget-object v15, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/16 v16, -0x1

    if-eqz v4, :cond_1

    move/from16 v17, v16

    goto :goto_1

    :cond_1
    move/from16 v17, p5

    :goto_1
    move/from16 v18, v17

    if-eqz v4, :cond_2

    move/from16 v16, p5

    nop

    :cond_2
    move/from16 v19, v16

    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_2

    :cond_3
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_2

    :cond_4
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    :goto_2
    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mConventionalModeBarViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    if-ne v11, v1, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getPaddingLeft()I

    move-result v16

    if-gtz v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getPaddingTop()I

    move-result v16

    if-gtz v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getPaddingRight()I

    move-result v16

    if-gtz v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getPaddingBottom()I

    move-result v16

    if-lez v16, :cond_7

    :cond_6
    const/16 v16, 0x0

    move/from16 v13, v16

    move/from16 v8, v16

    :cond_7
    if-nez v15, :cond_c

    if-eqz v13, :cond_b

    if-eqz v11, :cond_8

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

    move-object v15, v7

    iput-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_4

    :cond_8
    new-instance v7, Landroid/view/View;

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v10, v7

    iput-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v15, v10

    :goto_4
    invoke-static {v15, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v15, v7}, Landroid/view/View;->setId(I)V

    const/4 v14, 0x1

    const/4 v7, 0x4

    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v10, 0x0

    iput v10, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v7, v18

    move/from16 v12, v19

    invoke-direct {v10, v12, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz v5, :cond_9

    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_9
    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_5
    if-eqz v11, :cond_a

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-virtual {v6, v10}, Lcom/samsung/android/view/ConventionalModeBar;->layout(Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_a
    invoke-virtual {v0, v15, v10}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    nop

    move/from16 v25, v8

    goto/16 :goto_b

    :cond_b
    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v25, v8

    goto/16 :goto_b

    :cond_c
    move/from16 v7, v18

    move/from16 v12, v19

    if-eqz v13, :cond_d

    const/4 v6, 0x0

    goto :goto_6

    :cond_d
    const/4 v6, 0x4

    :goto_6
    iget v10, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v10, v6, :cond_e

    const/16 v20, 0x1

    goto :goto_7

    :cond_e
    const/16 v20, 0x0

    :goto_7
    move/from16 v14, v20

    iput v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_f

    const/16 v16, 0x0

    goto :goto_8

    :cond_f
    move/from16 v16, p8

    :goto_8
    move/from16 v21, v16

    if-eqz v5, :cond_10

    move/from16 v16, p8

    goto :goto_9

    :cond_10
    const/16 v16, 0x0

    :goto_9
    move/from16 v22, v16

    move/from16 v23, v6

    iget v6, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v6, v7, :cond_12

    iget v6, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v6, v12, :cond_12

    iget v6, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v6, v9, :cond_12

    iget v6, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v24, v14

    move/from16 v14, v21

    if-ne v6, v14, :cond_11

    iget v6, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v8

    move/from16 v8, v22

    if-eq v6, v8, :cond_14

    goto :goto_a

    :cond_11
    move/from16 v25, v8

    move/from16 v8, v22

    goto :goto_a

    :cond_12
    move/from16 v25, v8

    move/from16 v24, v14

    move/from16 v14, v21

    move/from16 v8, v22

    :goto_a
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v14, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v11, :cond_13

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-virtual {v6, v10}, Lcom/samsung/android/view/ConventionalModeBar;->layout(Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_13
    invoke-virtual {v15, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    if-eqz v13, :cond_15

    invoke-static {v15, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    :cond_15
    move/from16 v14, v24

    :goto_b
    if-eqz v14, :cond_1a

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p9, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v10

    if-nez v10, :cond_18

    const/4 v10, 0x0

    if-eqz v13, :cond_17

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_16

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v15, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v3, v10

    invoke-virtual {v6, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_d

    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/DecorView$2;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v15, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz v13, :cond_19

    goto :goto_c

    :cond_19
    const/4 v6, 0x4

    :goto_c
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    :goto_d
    move/from16 v3, v25

    iput-boolean v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return-void
.end method

.method private updateColorViewTranslations()V
    .locals 4

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_0

    int-to-float v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_2

    int-to-float v2, v0

    nop

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method private updateDexCompatEnabled(Landroid/content/res/Configuration;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->removeDecorCaptionWindow()V

    goto/16 :goto_5

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    iget v5, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-ne v5, v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    if-eqz v3, :cond_6

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    const-string v6, "DecorView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Invalid window type("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") set. DecorView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v2, :cond_7

    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v6

    if-nez v6, :cond_7

    move v6, v4

    goto :goto_4

    :cond_7
    move v6, v1

    :goto_4
    iput-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    const-string v6, "DecorView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateDexCompatEnabled >> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isDexCompatWindow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isApplication: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDecorCaptionWindow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDexCompatEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", hasContainer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v8

    if-nez v8, :cond_8

    move v1, v4

    nop

    :cond_8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return-void
.end method

.method private updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColorByAPI:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/View;->sIsDisplayCutoutBackground:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    add-int v11, v2, v5

    if-nez v11, :cond_3

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v11

    if-lez v11, :cond_4

    const/4 v7, 0x1

    const/4 v8, 0x3

    move v9, v2

    const/4 v10, -0x1

    goto :goto_0

    :cond_4
    if-lez v5, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v11

    if-lez v11, :cond_5

    const/4 v7, 0x1

    const/4 v8, 0x5

    move v9, v5

    const/4 v10, -0x1

    goto :goto_0

    :cond_5
    if-lez v4, :cond_6

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v7, 0x1

    const/16 v8, 0x30

    const/4 v9, -0x1

    move v10, v4

    goto :goto_0

    :cond_6
    if-lez v6, :cond_7

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v7, 0x1

    const/16 v8, 0x50

    const/4 v9, -0x1

    move v10, v6

    :cond_7
    :goto_0
    if-eqz v7, :cond_b

    iget v11, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    if-eqz v11, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-nez v3, :cond_8

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_9

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const-string v11, "DisplayCutoutBackgroundView"

    invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v3, v11}, Landroid/view/View;->setElevation(F)V

    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget v12, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    :cond_b
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, p0, :cond_c

    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    :cond_c
    :goto_2
    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    :cond_e
    :goto_3
    return-void
.end method

.method private updateElevation()V
    .locals 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v2, :cond_0

    const/16 v2, 0xa

    const/16 v3, 0xa

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x3

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v8, 0x1

    if-ne v4, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v5, :cond_6

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v7, 0x40400000    # 3.0f

    :goto_1
    move v0, v7

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v5, :cond_3

    const/high16 v0, 0x40a00000    # 5.0f

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_4

    move v6, v8

    nop

    :cond_4
    move v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v6

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    const/4 v0, 0x0

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v0

    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_2

    :cond_6
    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v0

    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_2

    :cond_7
    iput-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    :goto_2
    if-nez v1, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v5, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v0}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    :cond_9
    return-void
.end method

.method private updateRoundedCornerConfigIfNeeded()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    invoke-super {v0, v4}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7db

    if-ne v8, v9, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_0
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7f5

    if-ne v9, v10, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v10

    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, 0x400

    if-nez v11, :cond_5

    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/2addr v11, v2

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    move v11, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v11, v5

    :goto_3
    const/4 v12, 0x0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-boolean v14, v0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    const/4 v15, 0x2

    if-eqz v14, :cond_e

    iget v14, v13, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v15, :cond_e

    if-nez v8, :cond_6

    iget v14, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v14, v5, :cond_e

    if-eqz v10, :cond_e

    :cond_6
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getLetterboxDirectionForDisplayCutout()I

    move-result v17

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    :goto_4
    and-int/lit8 v18, v17, 0x1

    if-eqz v18, :cond_a

    if-eqz v8, :cond_9

    if-eqz v10, :cond_8

    if-nez v11, :cond_9

    :cond_8
    move/from16 v18, v2

    goto :goto_5

    :cond_9
    const/16 v18, 0x5

    :goto_5
    or-int v14, v14, v18

    :cond_a
    and-int/lit8 v18, v17, 0x2

    if-eqz v18, :cond_d

    if-eqz v8, :cond_c

    if-eqz v10, :cond_b

    if-nez v11, :cond_c

    :cond_b
    const/16 v18, 0x8

    goto :goto_6

    :cond_c
    const/16 v18, 0xa

    :goto_6
    or-int v14, v14, v18

    :cond_d
    if-eqz v14, :cond_e

    invoke-super {v0, v14}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    const/high16 v15, -0x1000000

    invoke-super {v0, v14, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    const/4 v12, 0x1

    :cond_e
    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    if-eqz v4, :cond_20

    if-nez v9, :cond_20

    if-nez v8, :cond_20

    iget v4, v13, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_20

    const/4 v4, 0x0

    const/4 v14, 0x0

    iget-boolean v15, v0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    const/16 v2, 0xc

    if-eqz v15, :cond_13

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v15, :cond_10

    if-eq v1, v5, :cond_f

    if-ne v1, v3, :cond_10

    :cond_f
    iget v15, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    and-int/2addr v15, v3

    if-ne v15, v3, :cond_10

    move v15, v5

    goto :goto_7

    :cond_10
    const/4 v15, 0x0

    :goto_7
    move v4, v15

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v15, :cond_12

    if-eq v1, v5, :cond_11

    const/4 v15, 0x4

    if-ne v1, v15, :cond_12

    :cond_11
    iget v15, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    and-int/2addr v15, v2

    if-ne v15, v2, :cond_12

    move v15, v5

    goto :goto_8

    :cond_12
    const/4 v15, 0x0

    :goto_8
    move v14, v15

    goto :goto_e

    :cond_13
    if-eq v1, v5, :cond_14

    const/4 v15, 0x4

    if-ne v1, v15, :cond_1a

    :cond_14
    iget-boolean v15, v0, Lcom/android/internal/policy/DecorView;->mIsSamsungBasicInteraction:Z

    if-eqz v15, :cond_15

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v15, :cond_15

    move v15, v5

    goto :goto_9

    :cond_15
    const/4 v15, 0x0

    :goto_9
    move v14, v15

    if-eqz v14, :cond_1a

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v15, :cond_16

    move v15, v5

    goto :goto_a

    :cond_16
    const/4 v15, 0x0

    :goto_a
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    :goto_b
    add-int/2addr v15, v5

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    :goto_c
    add-int/2addr v15, v5

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mConventionalModeBarViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto :goto_d

    :cond_19
    const/4 v5, 0x0

    :goto_d
    add-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v5

    if-ge v15, v5, :cond_1a

    if-eqz v14, :cond_1a

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v5, :cond_1a

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-direct {v0, v5}, Lcom/android/internal/policy/DecorView;->isChildIntersectsWith(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v14, 0x0

    :cond_1a
    :goto_e
    if-eqz v14, :cond_1b

    iget-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mGestureNavBarEnabled:Z

    if-eqz v5, :cond_1b

    const/4 v14, 0x0

    :cond_1b
    if-eqz v4, :cond_1c

    invoke-super {v0, v3}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v0, v5}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v5

    invoke-super {v0, v3, v5}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_1c
    if-eqz v14, :cond_1d

    invoke-super {v0, v2}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v0, v3}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v3

    invoke-super {v0, v2, v3}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_1d
    if-nez v4, :cond_1f

    if-eqz v14, :cond_1e

    goto :goto_f

    :cond_1e
    const/16 v19, 0x0

    goto :goto_10

    :cond_1f
    :goto_f
    const/16 v19, 0x1

    :goto_10
    move/from16 v12, v19

    :cond_20
    if-eqz v12, :cond_22

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iget v3, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    const/16 v16, 0x0

    goto :goto_11

    :cond_21
    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    move/from16 v16, v4

    :goto_11
    move/from16 v3, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v4

    iget v5, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v5

    iget v14, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    sub-int/2addr v5, v14

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_12

    :cond_22
    const/4 v2, 0x0

    invoke-super {v0, v2}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :goto_12
    return-void
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, p1, v4}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v6, v5, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v6, :cond_2

    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v8, 0x106007a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v7

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v11, 0x800033

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_3

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    move v0, v6

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    move v6, v7

    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    invoke-virtual {p1, v2, v7, v2, v2}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_6
    goto :goto_4

    :cond_7
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_8

    const/4 v3, 0x1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-object p1
.end method


# virtual methods
.method public applyActivityStayFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    :cond_0
    return-void
.end method

.method clearContentView()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mConventionalModeBarViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->removeDecorCaptionWindow()V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dispatchHoverEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v5, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v5, v6, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_4

    return v3

    :cond_4
    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_2
    return v2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_2

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v3, v6, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_4

    return v1

    :cond_4
    return v4
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method dispatchRequestedOrientation(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dispatchRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xd4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    nop

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_3

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dispatchWindowSystemUiVisiblityChanged(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowSystemUiVisiblityChanged(I)V

    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dispatchWindowVisibilityChanged(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowVisibilityChanged(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateRoundedCornerConfigIfNeeded()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->drawDualAppBadge(Landroid/graphics/Canvas;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    const-string v2, "add dualapp badge fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->drawKnoxBadge(Landroid/graphics/Canvas;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    const-string v2, "failed to add knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method enableCaption(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_0
    return-void
.end method

.method finishChanging()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityViewId()I
    .locals 1

    const v0, 0x7ffffffe

    return v0
.end method

.method protected getBottomLeftRound()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getBottomLeftRound()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomRightRound()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getBottomRightRound()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getCaptionHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLastBackgroundResource()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    return v0
.end method

.method public getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    return-object v0
.end method

.method public getNavBarColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method getNeedsShowingCaption()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isTransientShowingDecorCaption()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getTopLeftRound()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getTopLeftRound()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getTopRightRound()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getTopRightRound()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    return v0
.end method

.method isResizing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isShowingCaption()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransitionGroup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {p1, v3, v1, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionWindowIfNeeded()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->refreshGestureNavBarSettings()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_1

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionView()V

    :cond_5
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "DecorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContentRoot is null, Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionIfNeeded(Landroid/content/res/Configuration;)Z

    move-result v2

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-nez v3, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v4

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v7}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, -0x1

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v5, v9}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v10, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v4

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    :cond_6
    move v4, v2

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v6, p1, v4}, Lcom/android/internal/policy/MultiWindowDecorSupport;->onConfigurationChanged(Landroid/content/res/Configuration;Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v1, 0x1080bbf

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v3, v2

    if-lez v3, :cond_7

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v1, 0x1080bbc

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v1, 0x1080bbd

    if-ne v0, v1, :cond_c

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_a
    instance-of v2, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_b

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v4, v3

    if-lez v4, :cond_b

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->refreshGestureNavBarSettings()V

    return-void
.end method

.method public onContentDrawn(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->removeDecorCaptionWindow()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v4, :cond_6

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    :cond_7
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080bbf

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080bbc

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080bbd

    if-ne v3, v4, :cond_9

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->drawFreeformFrameIfNeeded(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->forceLayoutIfNeeded()V

    :cond_1
    return-void
.end method

.method public onFinishMovingTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->notifyMovingTask(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->getLastEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    move-result v6

    if-eqz v6, :cond_1

    return v4

    :cond_1
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    return v4

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-eqz p1, :cond_4

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    :cond_4
    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-eqz p1, :cond_5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const-string/jumbo v2, "onLayout"

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/4 v7, 0x0

    iput-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, -0x80000000

    if-ne v5, v11, :cond_5

    if-eqz v2, :cond_1

    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v12, :cond_5

    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-eqz v13, :cond_5

    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v9, :cond_2

    invoke-virtual {v12, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    :goto_2
    goto :goto_3

    :cond_2
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v8, :cond_3

    iget v13, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    iget v14, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v13

    float-to-int v13, v13

    goto :goto_2

    :cond_3
    move v13, v3

    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    if-lez v13, :cond_4

    nop

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int v15, v14, v15

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v10

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    move v15, v10

    goto :goto_4

    :cond_5
    move/from16 v15, p1

    :goto_4
    iput-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-ne v6, v11, :cond_a

    if-eqz v2, :cond_6

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_5

    :cond_6
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_5
    if-eqz v10, :cond_a

    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_a

    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-ne v12, v9, :cond_7

    invoke-virtual {v10, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    :goto_6
    goto :goto_7

    :cond_7
    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-ne v12, v8, :cond_8

    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    goto :goto_6

    :cond_8
    move v12, v3

    :goto_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    if-lez v12, :cond_9

    nop

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    goto :goto_8

    :cond_9
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v13, v3

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    move v14, v3

    goto :goto_8

    :cond_a
    move/from16 v14, p2

    :goto_8
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_b

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_c

    :cond_b
    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v10

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    :cond_c
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gtz v3, :cond_d

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_e

    :cond_d
    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v10

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :cond_e
    invoke-super {v0, v15, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v3

    const/4 v10, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    if-nez v7, :cond_13

    if-ne v5, v11, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    iget v12, v0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    if-eq v12, v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v15, 0x1010357

    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v12, v15, v8, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v12, 0x1010356

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v15, v15, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v8, v12, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iput v11, v0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    :cond_f
    if-eqz v2, :cond_10

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_9

    :cond_10
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_9
    iget v8, v4, Landroid/util/TypedValue;->type:I

    if-eqz v8, :cond_13

    iget v8, v4, Landroid/util/TypedValue;->type:I

    if-ne v8, v9, :cond_11

    invoke-virtual {v4, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    :goto_a
    goto :goto_b

    :cond_11
    iget v8, v4, Landroid/util/TypedValue;->type:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    iget v8, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    iget v9, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    invoke-virtual {v4, v8, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    float-to-int v8, v8

    goto :goto_a

    :cond_12
    const/4 v8, 0x0

    :goto_b
    if-ge v3, v8, :cond_13

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v10, 0x1

    :cond_13
    if-eqz v10, :cond_14

    invoke-super {v0, v13, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_14
    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->drawFreeformFrameIfNeeded(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getLastMeasuredWithCaptionHeight()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveMode(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    :cond_1
    :goto_0
    return-void
.end method

.method onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateDexCompatEnabled(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const-string/jumbo v2, "resource-loading"

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonFocus(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v2, v4

    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    :cond_6
    return-void
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    return-void
.end method

.method public onSideScreenMenuModeChanged(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMenuMode;
        .end annotation
    .end param

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowDragResizeEnd()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->setResizeMode(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 16

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    return-void

    :cond_0
    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    new-instance v15, Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v4, v13, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v13, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v13, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v13, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v13, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    move-object v0, v15

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v15, v13, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    :cond_2
    move/from16 v0, p5

    iput v0, v13, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    iget-object v1, v13, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    iget v2, v13, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->setResizeMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_4

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread;->mayStayActivityFocus(Landroid/view/Window$Callback;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    return-void
.end method

.method public releaseActivityFocusIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    return-void
.end method

.method removeDecorCaptionIfNeeded(Landroid/content/res/Configuration;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    if-eq v4, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v1, v5

    :cond_1
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    iget v6, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v6, v3, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsDesktopMode:Z

    if-eq v5, v6, :cond_3

    move v2, v3

    nop

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->updateDexInfoIfNeeded()V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDexCompatEnabled(Landroid/content/res/Configuration;)V

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v1, :cond_6

    const/4 v3, 0x1

    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionView()V

    const/4 v4, 0x1

    :cond_7
    return v4
.end method

.method public requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :cond_1
    return-void
.end method

.method public semSetRoundedCorners(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetRoundedCorners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->semIsA11yServiceEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :goto_0
    return-void
.end method

.method setBackgroundFallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    return-void
.end method

.method public setDisplayCutoutBackgroundColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColorByAPI:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return v0
.end method

.method public setLastBackgroundResource(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    return-void
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public setOverrideRoundedCornerBounds(Landroid/graphics/Rect;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSurfaceFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public setSurfaceType(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    return-void
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorContext;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    :cond_0
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v3, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    invoke-static {v2, v1, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_6
    return-void
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_1
    return-void
.end method

.method shouldAnimatePrimaryActionModeView()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method startChanging()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touchFocusTransferred()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->changeBorderColor(Z)V

    :cond_0
    return-void
.end method

.method updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v14, v0, v1

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v15, v0

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v16, -0x80000000

    if-eqz v0, :cond_2

    if-eqz v15, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v24, v9

    move/from16 v25, v10

    goto/16 :goto_1a

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    xor-int/2addr v0, v10

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    and-int v1, v1, v16

    if-eqz v1, :cond_3

    move v1, v10

    goto :goto_2

    :cond_3
    move v1, v9

    :goto_2
    or-int/2addr v0, v1

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    if-eqz v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v10

    goto :goto_3

    :cond_4
    move v1, v9

    :goto_3
    iget-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v1, v2, :cond_5

    move v2, v10

    goto :goto_4

    :cond_5
    move v2, v9

    :goto_4
    or-int/2addr v0, v2

    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v10

    goto :goto_5

    :cond_6
    move v2, v9

    :goto_5
    iget-boolean v3, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v2, v3, :cond_7

    move v3, v10

    goto :goto_6

    :cond_7
    move v3, v9

    :goto_6
    or-int/2addr v0, v3

    iput-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v10

    goto :goto_7

    :cond_8
    move v3, v9

    :goto_7
    iget-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v3, v4, :cond_9

    move v4, v10

    goto :goto_8

    :cond_9
    move v4, v9

    :goto_8
    or-int/2addr v0, v4

    iput-boolean v3, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v10

    goto :goto_9

    :cond_a
    move v4, v9

    :goto_9
    iget-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v4, v5, :cond_b

    move v5, v10

    goto :goto_a

    :cond_b
    move v5, v9

    :goto_a
    or-int/2addr v0, v5

    iput-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeNavBar()Z

    move-result v5

    iput-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    :goto_b
    move/from16 v17, v0

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v18

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v19

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v0

    iput v9, v11, Lcom/android/internal/policy/DecorView;->mLastConventionalModeBarSize:I

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v10, :cond_d

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v10, :cond_e

    move v1, v10

    goto :goto_c

    :cond_e
    move v1, v9

    :goto_c
    move/from16 v20, v1

    if-eqz v20, :cond_15

    move/from16 v1, v18

    move/from16 v2, v19

    iput v9, v11, Lcom/android/internal/policy/DecorView;->mLastConventionalModeBarSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v3, v8, Landroid/view/ViewRootImpl;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    if-eqz v3, :cond_f

    iget v4, v3, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iget v5, v3, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    invoke-static {v4, v5}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v1

    iget v4, v3, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iget v5, v3, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    invoke-static {v4, v5}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v2

    iget v4, v3, Lcom/samsung/android/view/ConventionalModeBar$Info;->barBottomSize:I

    iget v5, v3, Lcom/samsung/android/view/ConventionalModeBar$Info;->barRightSize:I

    iget v6, v3, Lcom/samsung/android/view/ConventionalModeBar$Info;->barLeftSize:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v4

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastConventionalModeBarSize:I

    :cond_f
    move/from16 v21, v1

    move/from16 v22, v2

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastConventionalModeBarSize:I

    if-eqz v1, :cond_11

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

    if-nez v1, :cond_10

    new-instance v1, Lcom/samsung/android/view/ConventionalModeBar;

    iget-object v2, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v1, v11, v2}, Lcom/samsung/android/view/ConventionalModeBar;-><init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    iput-object v1, v11, Lcom/android/internal/policy/DecorView;->mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

    :cond_10
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

    iget-object v2, v8, Landroid/view/ViewRootImpl;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    iget v3, v11, Lcom/android/internal/policy/DecorView;->mLastConventionalModeBarSize:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/view/ConventionalModeBar;->setInfo(Lcom/samsung/android/view/ConventionalModeBar$Info;II)V

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mConventionalModeBar:Lcom/samsung/android/view/ConventionalModeBar;

    invoke-virtual {v1}, Lcom/samsung/android/view/ConventionalModeBar;->getRecomputedNavBarSize()I

    move-result v0

    :cond_11
    move/from16 v23, v0

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mConventionalModeBarViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    iget v5, v11, Lcom/android/internal/policy/DecorView;->mLastConventionalModeBarSize:I

    if-nez v21, :cond_13

    if-eqz v22, :cond_12

    goto :goto_d

    :cond_12
    move v6, v9

    goto :goto_e

    :cond_13
    :goto_d
    move v6, v10

    :goto_e
    const/16 v24, 0x0

    if-eqz p2, :cond_14

    if-nez v17, :cond_14

    move/from16 v25, v10

    goto :goto_f

    :cond_14
    move/from16 v25, v9

    :goto_f
    const/16 v26, 0x0

    move-object v0, v11

    move v2, v14

    move/from16 v7, v22

    move-object/from16 v27, v8

    move/from16 v8, v24

    move/from16 v24, v9

    move/from16 v9, v25

    move/from16 v25, v10

    move/from16 v10, v26

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V

    goto :goto_10

    :cond_15
    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v23, v0

    :goto_10
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_16

    or-int/lit8 v0, v14, 0x2

    move v2, v0

    goto :goto_11

    :cond_16
    move v2, v14

    :goto_11
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v18, :cond_18

    if-eqz v19, :cond_17

    goto :goto_12

    :cond_17
    move/from16 v6, v24

    goto :goto_13

    :cond_18
    :goto_12
    move/from16 v6, v25

    :goto_13
    const/4 v8, 0x0

    if-eqz p2, :cond_19

    if-nez v17, :cond_19

    move/from16 v9, v25

    goto :goto_14

    :cond_19
    move/from16 v9, v24

    :goto_14
    const/4 v10, 0x0

    move-object v0, v11

    move/from16 v5, v23

    move/from16 v7, v19

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V

    if-eqz v18, :cond_1a

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_1a

    move/from16 v0, v25

    goto :goto_15

    :cond_1a
    move/from16 v0, v24

    :goto_15
    move/from16 v20, v0

    if-eqz v19, :cond_1b

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_1b

    move/from16 v0, v25

    goto :goto_16

    :cond_1b
    move/from16 v0, v24

    :goto_16
    move/from16 v21, v0

    if-eqz v20, :cond_1c

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    :goto_17
    move v8, v0

    goto :goto_18

    :cond_1c
    if-eqz v21, :cond_1d

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    goto :goto_17

    :cond_1d
    move/from16 v8, v24

    :goto_18
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor()I

    move-result v3

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    const/4 v6, 0x0

    if-eqz p2, :cond_1e

    if-nez v17, :cond_1e

    move/from16 v9, v25

    goto :goto_19

    :cond_1e
    move/from16 v9, v24

    :goto_19
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    move-object v0, v11

    move v2, v14

    move/from16 v7, v21

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V

    :goto_1a
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v16

    if-eqz v0, :cond_1f

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_1f

    and-int/lit8 v0, v14, 0x2

    if-eqz v0, :cond_20

    :cond_1f
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    if-eqz v0, :cond_21

    :cond_20
    move/from16 v0, v25

    goto :goto_1b

    :cond_21
    move/from16 v0, v24

    :goto_1b
    and-int/lit16 v1, v14, 0x400

    if-nez v1, :cond_22

    and-int v1, v14, v16

    if-nez v1, :cond_22

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_22

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_22

    iget-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    if-eqz v1, :cond_22

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-eqz v1, :cond_22

    goto :goto_1c

    :cond_22
    move/from16 v25, v24

    :goto_1c
    move/from16 v1, v25

    if-eqz v1, :cond_23

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    goto :goto_1d

    :cond_23
    move/from16 v9, v24

    :goto_1d
    move v2, v9

    if-eqz v0, :cond_24

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    goto :goto_1e

    :cond_24
    move/from16 v9, v24

    :goto_1e
    move v3, v9

    if-eqz v0, :cond_25

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    goto :goto_1f

    :cond_25
    move/from16 v9, v24

    :goto_1f
    move v4, v9

    if-eqz v0, :cond_26

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    goto :goto_20

    :cond_26
    move/from16 v9, v24

    :goto_20
    move v5, v9

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v6, :cond_29

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_29

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v7, v2, :cond_27

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v7, v3, :cond_27

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v7, v4, :cond_27

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v7, v5, :cond_28

    :cond_27
    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v7, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v12, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    :cond_28
    if-eqz v12, :cond_29

    invoke-virtual {v12, v5, v2, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    move-object v12, v6

    :cond_29
    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v12

    :cond_2a
    return-object v12
.end method

.method updateDecorCaptionShade()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    :cond_0
    return-void
.end method

.method updateDexInfoIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCalledUpdateDexInfo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCalledUpdateDexInfo:Z

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateDexInfo()V

    :cond_0
    return-void
.end method

.method updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method public updatePictureInPictureOutlineProvider(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    return-void
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
