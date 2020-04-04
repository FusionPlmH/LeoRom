.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final HOVER_DETECT_TIME_MS_DEX:I = 0x2ee

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8

.field private static final localLOGV:Z = false

.field private static final sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;


# instance fields
.field private final ANCHOR_VIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHOR_VIEW_COORDINATES_TYPE_WINDOW:I

.field private final ID_TOOLTIP_VIEW:I

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCurrentDensity:F

.field private mDeviceRotation:I

.field private mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mEnabled:Z

.field private mFontScale:F

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsCheckedRealDisplayMetricsInDexMode:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsPopupTouchable:Z

.field private mIsSPenPointChanged:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mIsUspFeature:Z

.field private mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private mNavigationBarHeight:I

.field private mNeedNotWindowOffset:Z

.field private mNeedToMeasureContentView:Z

.field protected final mParentView:Landroid/view/View;

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHOR_VIEW_COORDINATES_TYPE_WINDOW:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHOR_VIEW_COORDINATES_TYPE_SCREEN:I

    const v2, 0x102058d

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ID_TOOLTIP_VIEW:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v2, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    :cond_1
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return v0
.end method

.method private computePopupPosition(Landroid/view/View;III)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    iput-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v4, p4

    iput v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    iget-object v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v7, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getDeviceRotation()I

    move-result v7

    iput v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    :cond_2
    const/4 v7, 0x2

    new-array v8, v7, [I

    new-array v9, v7, [I

    invoke-virtual {v5, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v10, 0x1

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    :goto_1
    instance-of v13, v12, Landroid/view/View;

    if-eqz v13, :cond_5

    move-object v13, v12

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v10, 0x0

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v10, :cond_6

    invoke-virtual {v5, v11}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    aget v14, v9, v13

    iget v15, v11, Landroid/graphics/Rect;->left:I

    aget v16, v8, v13

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v9, v13

    aget v14, v9, v12

    iget v15, v11, Landroid/graphics/Rect;->top:I

    aget v16, v8, v12

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v9, v12

    iget v14, v11, Landroid/graphics/Rect;->left:I

    aput v14, v8, v13

    iget v14, v11, Landroid/graphics/Rect;->top:I

    aput v14, v8, v12

    :cond_6
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v16

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v18

    aget v19, v8, v13

    aget v20, v9, v13

    sub-int v13, v19, v20

    iput v13, v15, Landroid/graphics/Rect;->left:I

    iget v13, v15, Landroid/graphics/Rect;->left:I

    add-int v13, v13, v16

    iput v13, v15, Landroid/graphics/Rect;->right:I

    aget v13, v8, v12

    aget v19, v9, v12

    sub-int v13, v13, v19

    iput v13, v15, Landroid/graphics/Rect;->top:I

    iget v13, v15, Landroid/graphics/Rect;->top:I

    add-int v13, v13, v18

    iput v13, v15, Landroid/graphics/Rect;->bottom:I

    iget v13, v14, Landroid/graphics/Rect;->left:I

    iget v12, v15, Landroid/graphics/Rect;->left:I

    if-ne v13, v12, :cond_7

    iget v12, v14, Landroid/graphics/Rect;->right:I

    iget v13, v15, Landroid/graphics/Rect;->right:I

    if-ne v12, v13, :cond_7

    iget v12, v14, Landroid/graphics/Rect;->top:I

    iget v13, v15, Landroid/graphics/Rect;->top:I

    if-ne v12, v13, :cond_7

    iget v12, v14, Landroid/graphics/Rect;->bottom:I

    iget v13, v15, Landroid/graphics/Rect;->bottom:I

    if-eq v12, v13, :cond_d

    :cond_7
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFreeFormMode()Z

    move-result v19

    if-nez v19, :cond_b

    if-nez v19, :cond_8

    iget v2, v12, Landroid/graphics/Rect;->left:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_8

    iget v2, v12, Landroid/graphics/Rect;->right:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_8

    iget v2, v12, Landroid/graphics/Rect;->top:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_8

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v3, 0x2710

    if-eq v2, v3, :cond_9

    :cond_8
    if-nez v19, :cond_a

    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v2, v3, :cond_9

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_9

    goto :goto_3

    :cond_9
    move-object/from16 v21, v1

    goto :goto_4

    :cond_a
    :goto_3
    if-nez v19, :cond_d

    iget v2, v14, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    aget v20, v9, v3

    add-int v2, v2, v20

    move-object/from16 v21, v1

    aget v1, v8, v3

    if-ne v2, v1, :cond_c

    iget v1, v14, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    aget v3, v9, v2

    add-int/2addr v1, v3

    aget v3, v8, v2

    if-eq v1, v3, :cond_d

    goto :goto_4

    :cond_b
    move-object/from16 v21, v1

    :cond_c
    :goto_4
    iget v1, v15, Landroid/graphics/Rect;->left:I

    iput v1, v14, Landroid/graphics/Rect;->left:I

    iget v1, v15, Landroid/graphics/Rect;->right:I

    iput v1, v14, Landroid/graphics/Rect;->right:I

    iget v1, v15, Landroid/graphics/Rect;->top:I

    iput v1, v14, Landroid/graphics/Rect;->top:I

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    :cond_d
    invoke-virtual {v5}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    aget v2, v8, v1

    aget v3, v9, v1

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-eqz v10, :cond_e

    new-instance v3, Landroid/graphics/Rect;

    aget v12, v9, v1

    aget v13, v9, v2

    aget v17, v9, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v1, v17, v1

    aget v17, v9, v2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, v17, v2

    invoke-direct {v3, v12, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v3

    :goto_5
    goto :goto_7

    :cond_e
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v12, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v12

    iget v12, v11, Landroid/graphics/Rect;->right:I

    iget v13, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v4

    invoke-direct {v1, v2, v3, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    if-eqz v10, :cond_10

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v8, v1

    const/4 v4, 0x1

    aget v12, v8, v4

    aget v13, v8, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v13, v1

    aget v1, v8, v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v1, v1, v17

    invoke-direct {v2, v3, v12, v13, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    goto :goto_6

    :cond_10
    const/4 v4, 0x1

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v8, v2

    aget v2, v8, v4

    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v2, v4, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_6
    iget v2, v14, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_11

    iget v2, v14, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_11

    const/4 v2, 0x0

    iput v2, v14, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v14, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    :cond_11
    :goto_7
    iget v2, v14, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_14

    iget v2, v14, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_14

    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_14

    move-object v4, v3

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget v12, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v12, v13

    and-int/lit16 v12, v12, 0x404

    if-nez v12, :cond_12

    const/4 v12, 0x1

    goto :goto_8

    :cond_12
    const/4 v12, 0x0

    :goto_8
    const/4 v13, 0x0

    move-object/from16 v22, v2

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    move-object/from16 v23, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    if-eqz v12, :cond_13

    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050367

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    :cond_13
    const/4 v2, 0x0

    iput v2, v14, Landroid/graphics/Rect;->left:I

    iput v13, v14, Landroid/graphics/Rect;->top:I

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    :cond_14
    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, -0x80000000

    if-nez v2, :cond_15

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_9
    goto :goto_b

    :cond_15
    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ltz v2, :cond_16

    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_a

    :cond_16
    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_a
    iget-object v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v12, :cond_17

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_9

    :cond_17
    iget v4, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_b
    iget-object v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iget-object v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v13, :cond_18

    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v12}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v24, v2

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v13, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_c

    :cond_18
    move/from16 v24, v2

    :goto_c
    invoke-direct {v0, v1, v14, v4, v12}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move-object/from16 v25, v1

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-nez v1, :cond_19

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move/from16 v26, v3

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    goto :goto_d

    :cond_19
    move/from16 v26, v3

    :goto_d
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_e

    :cond_1a
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    :cond_1b
    :goto_e
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1d

    const-string v1, "SemHoverPopupWindow"

    const-string v3, "computePopupPosition: Call resetTimeout()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto :goto_f

    :cond_1c
    move/from16 v26, v3

    :cond_1d
    :goto_f
    iput v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return-void
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iput v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iget v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v7, v7, 0xf0f

    iget v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    const v9, 0xf0f0

    and-int/2addr v8, v9

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget-object v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    const/4 v14, 0x0

    instance-of v15, v13, Landroid/view/WindowManager$LayoutParams;

    move/from16 v16, v5

    if-eqz v15, :cond_1

    move-object v15, v13

    check-cast v15, Landroid/view/WindowManager$LayoutParams;

    iget v5, v15, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v17, v6

    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v5, v6

    and-int/lit16 v5, v5, 0x404

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v14, v5

    goto :goto_1

    :cond_1
    move/from16 v17, v6

    :goto_1
    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v6, 0x10502ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v15, 0x1050367

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v15, 0x0

    if-eqz v14, :cond_2

    move v15, v6

    :cond_2
    move-object/from16 v18, v12

    iget v12, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v19, v13

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v14

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v21, v13

    const/4 v13, 0x2

    if-nez v14, :cond_5

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-ne v14, v13, :cond_3

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v22, v13

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    move/from16 v23, v7

    move/from16 v7, v22

    goto/16 :goto_4

    :cond_3
    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v7

    move v7, v13

    move v13, v14

    goto/16 :goto_4

    :cond_4
    move/from16 v23, v7

    move/from16 v7, v16

    move/from16 v13, v17

    goto/16 :goto_4

    :cond_5
    const/4 v13, 0x1

    if-eq v7, v13, :cond_f

    const/4 v13, 0x3

    if-eq v7, v13, :cond_e

    const/4 v13, 0x5

    if-eq v7, v13, :cond_d

    const/16 v13, 0x101

    if-eq v7, v13, :cond_c

    const/16 v13, 0x103

    if-eq v7, v13, :cond_b

    const/16 v13, 0x105

    if-eq v7, v13, :cond_a

    const/16 v13, 0x201

    if-eq v7, v13, :cond_8

    const/16 v13, 0x303

    if-eq v7, v13, :cond_7

    const/16 v13, 0x505

    if-eq v7, v13, :cond_6

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    goto :goto_2

    :cond_6
    iget v13, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_7
    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v3

    goto :goto_2

    :cond_8
    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    div-int/lit8 v14, v3, 0x2

    sub-int/2addr v13, v14

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    if-eqz v14, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v14

    if-nez v14, :cond_10

    :cond_9
    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v13, v14

    goto :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    goto :goto_2

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int/2addr v13, v3

    goto :goto_2

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    div-int/lit8 v14, v3, 0x2

    sub-int/2addr v13, v14

    goto :goto_2

    :cond_d
    iget v13, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v3

    goto :goto_2

    :cond_e
    iget v13, v1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    div-int/lit8 v14, v3, 0x2

    sub-int/2addr v13, v14

    nop

    :cond_10
    :goto_2
    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    add-int/2addr v13, v14

    const/16 v14, 0x10

    if-eq v8, v14, :cond_15

    const/16 v14, 0x30

    if-eq v8, v14, :cond_14

    const/16 v14, 0x50

    if-eq v8, v14, :cond_13

    const/16 v14, 0x3030

    if-eq v8, v14, :cond_12

    const/16 v14, 0x5050

    if-eq v8, v14, :cond_11

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto :goto_3

    :cond_11
    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v9

    goto :goto_3

    :cond_12
    iget v14, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v4

    sub-int/2addr v14, v9

    goto :goto_3

    :cond_13
    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v4

    goto :goto_3

    :cond_14
    iget v14, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    div-int/lit8 v16, v4, 0x2

    sub-int v14, v14, v16

    nop

    :goto_3
    move/from16 v23, v7

    iget v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v7, v14

    move/from16 v26, v13

    move v13, v7

    move/from16 v7, v26

    :goto_4
    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v6

    const/4 v6, 0x2

    if-ne v14, v6, :cond_1e

    add-int v6, v13, v4

    iget v14, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v14, :cond_17

    const/16 v6, 0x5050

    if-ne v8, v6, :cond_16

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-lt v6, v4, :cond_17

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v13, v6, v14

    goto :goto_5

    :cond_16
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v13, v6, v4

    :cond_17
    :goto_5
    if-gez v7, :cond_18

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_6
    move v7, v6

    goto :goto_7

    :cond_18
    add-int v6, v7, v3

    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v6, v14, :cond_19

    iget v6, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v3

    sub-int/2addr v6, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_6

    :cond_19
    :goto_7
    if-ge v13, v15, :cond_1d

    const/16 v6, 0x3030

    if-ne v8, v6, :cond_1c

    iget v6, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v14

    if-lt v6, v4, :cond_1a

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int v13, v6, v14

    goto :goto_8

    :cond_1a
    iget v6, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    if-le v6, v14, :cond_1b

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int v13, v6, v9

    goto :goto_8

    :cond_1b
    move v13, v15

    goto :goto_8

    :cond_1c
    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_1d
    :goto_8
    move/from16 v25, v5

    move/from16 v5, v21

    move/from16 v14, v24

    goto/16 :goto_12

    :cond_1e
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v14, 0x1

    if-ne v6, v14, :cond_35

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    if-gtz v6, :cond_20

    sub-int v6, v12, v3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v14, 0x3

    if-ne v7, v14, :cond_1f

    iget v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v7, :cond_1f

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v6

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v7, v14, :cond_1f

    iget v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    add-int/2addr v7, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_9

    :cond_1f
    iget v7, v2, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    add-int/2addr v7, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_9
    move v7, v6

    goto :goto_b

    :cond_20
    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v6, v14, :cond_21

    iget v6, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v14

    sub-int/2addr v6, v3

    sub-int/2addr v6, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_a
    goto :goto_9

    :cond_21
    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-ltz v6, :cond_26

    if-ge v12, v3, :cond_22

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v12

    sub-int/2addr v6, v3

    if-ltz v6, :cond_26

    sub-int v6, v12, v3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_a

    :cond_22
    add-int v6, v7, v3

    if-le v6, v12, :cond_24

    add-int v6, v3, v5

    if-lt v12, v6, :cond_23

    sub-int v6, v12, v3

    sub-int/2addr v6, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_a

    :cond_23
    if-lt v12, v3, :cond_26

    sub-int v6, v12, v3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_a

    :cond_24
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v14, 0x3

    if-ne v6, v14, :cond_25

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v6, :cond_25

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v6, v14, :cond_25

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    add-int/2addr v6, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_a

    :cond_25
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_a

    :cond_26
    :goto_b
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v13

    move/from16 v14, v24

    if-ge v6, v14, :cond_2c

    const/16 v6, 0x3030

    if-ne v8, v6, :cond_2b

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v21, v6

    sub-int/2addr v6, v14

    if-lt v6, v4, :cond_28

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v9

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v13, v6, v13

    if-lt v13, v4, :cond_27

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v3, v13

    :cond_27
    move v13, v3

    move/from16 v25, v5

    goto :goto_e

    :cond_28
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v3, :cond_2a

    iget v3, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    if-le v3, v4, :cond_29

    goto :goto_c

    :cond_29
    move v3, v14

    goto :goto_d

    :cond_2a
    move/from16 v25, v5

    :goto_c
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v9

    :goto_d
    move v13, v3

    :goto_e
    goto :goto_f

    :cond_2b
    move/from16 v25, v5

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_f
    move/from16 v5, v21

    goto/16 :goto_12

    :cond_2c
    move/from16 v25, v5

    add-int v3, v13, v4

    move/from16 v5, v21

    if-le v3, v5, :cond_31

    const/16 v3, 0x5050

    if-ne v8, v3, :cond_2e

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_36

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_2d

    add-int v3, v13, v4

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v6, :cond_36

    :cond_2d
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v13

    add-int/2addr v3, v4

    iget v6, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v6, :cond_36

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v13, v3, v6

    goto/16 :goto_12

    :cond_2e
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v3, v15, :cond_30

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-nez v3, :cond_2f

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v3, :cond_2f

    iget v3, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v4

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_12

    :cond_2f
    sub-int v3, v5, v4

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_12

    :cond_30
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_12

    :cond_31
    const/16 v3, 0x3030

    if-ne v8, v3, :cond_32

    if-ge v13, v14, :cond_33

    add-int v3, v13, v4

    add-int/2addr v3, v14

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-le v3, v6, :cond_33

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v6

    iget v6, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v6, :cond_33

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v13, v3, v9

    goto :goto_10

    :cond_32
    if-ge v13, v14, :cond_33

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_33

    move v13, v14

    :cond_33
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v3

    if-eqz v3, :cond_34

    const/16 v3, 0x28

    goto :goto_11

    :cond_34
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    :goto_11
    if-eqz v3, :cond_36

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v13

    add-int/2addr v6, v4

    iget v1, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v1, :cond_36

    iget v1, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v6

    sub-int v13, v1, v4

    goto :goto_12

    :cond_35
    move/from16 v25, v5

    move/from16 v5, v21

    move/from16 v14, v24

    :cond_36
    :goto_12
    iput v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return-void
.end method

.method private dismissPopup()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    :cond_2
    return-void
.end method

.method private getDeviceRotation()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v3, Landroid/view/DisplayInfo;->rotation:I

    :cond_0
    return v1
.end method

.method private getNavigationBarHeight()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v1, 0x11200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x105018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;Z)Z

    :cond_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "SemHoverPopupWindow"

    const-string v5, "getApplicationContext() is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    if-nez v4, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    sget-object v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_2
    sget-object v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object v2

    :cond_3
    return-object v3
.end method

.method private getStateHashCode()I
    .locals 5

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x2

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    new-array v1, v4, [I

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x14

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initCoverManager()V
    .locals 0

    return-void
.end method

.method private initInstance()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getNavigationBarHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const v2, 0x10302f9

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCurrentDensity:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    :cond_0
    return-void
.end method

.method private isFreeFormMode()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

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

.method private isHoveringSettingEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isLockScreenMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private isMouseHoveringSettingsEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isSPenHoveringSettingsEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isTalkBackEnabledForDeX()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isViewCoverClose()Z
    .locals 2

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private setPopupContent()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    :pswitch_2
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_3
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPopup()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    return-void
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public isHoverPopupPossible()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :pswitch_2
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isUspFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v5, 0x7

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v5, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    return v9

    :pswitch_1
    cmp-long v5, v3, v6

    if-lez v5, :cond_1

    return v9

    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    :cond_2
    :goto_0
    return v8

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v5, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v10, :cond_5

    cmp-long v6, v3, v6

    if-lez v6, :cond_4

    iput-boolean v8, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    return v9

    :cond_4
    iput-boolean v9, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    return v9

    :cond_5
    if-nez v5, :cond_6

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v6, :cond_6

    iput-boolean v8, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return v9

    :cond_6
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    :cond_7
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected postDismiss(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$3;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    :cond_1
    return-void
.end method

.method public setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 0

    return-void
.end method

.method public setNeedNotWindowOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    return-void
.end method

.method public setTouchable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v3, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isTalkBackEnabledForDeX()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_5
    new-instance v3, Lcom/samsung/android/widget/SemHoverPopupWindow$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$2;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method protected showPenPointEffect(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public update()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    :goto_1
    return-void
.end method
