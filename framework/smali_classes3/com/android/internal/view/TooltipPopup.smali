.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final SUPPORT_DEX_MODE:Z = true

.field private static final TAG:Ljava/lang/String; = "TooltipPopup"

.field private static final localLOGV:Z


# instance fields
.field private final mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mIsDeviceDefault:Z

.field private mIsDexMode:Z

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/view/TooltipPopup;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    iput-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x111008d

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104a9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x109012e

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x1090157

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const v3, 0x1040a73

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x3ed

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1030309

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10503a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-boolean v5, v0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ge v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v6

    :goto_1
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    if-lt v7, v4, :cond_2

    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10503a0

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int v9, p3, v7

    sub-int v7, p3, v7

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    move v7, v8

    :goto_2
    const/16 v10, 0x31

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz p4, :cond_3

    const v11, 0x10503a4

    goto :goto_3

    :cond_3
    const v11, 0x10503a3

    :goto_3
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    goto :goto_4

    :cond_4
    const-string v6, "TooltipPopup"

    const-string v8, "Cannot find app view"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_4
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-array v12, v6, [I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v13, Landroid/graphics/Rect;

    aget v14, v12, v8

    const/4 v15, 0x1

    aget v6, v12, v15

    aget v17, v12, v8

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v8, v17, v18

    aget v17, v12, v15

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v15, v17, v18

    invoke-direct {v13, v14, v6, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v13

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    iput v13, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iput v13, v8, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v11, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v13, p1

    invoke-virtual {v13, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-boolean v8, Lcom/android/internal/view/TooltipPopup;->localLOGV:Z

    if-eqz v8, :cond_6

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :displayFrame left:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :displayFrame right:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :displayFrame top:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :displayFrame bottom:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :anchorView locationOnScreen x:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :anchorView locationOnScreen y:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v17, 0x1

    aget v15, v15, v17

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :appView locationOnScreen x:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TooltipPopup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePosition :appView locationOnScreen y:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/16 v17, 0x1

    aget v15, v15, v17

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v14, 0x0

    aget v15, v8, v14

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v1, v1, v14

    sub-int/2addr v15, v1

    aput v15, v8, v14

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v8, 0x1

    aget v15, v1, v8

    iget-object v14, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v14, v14, v8

    sub-int/2addr v15, v14

    aput v15, v1, v8

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v8, v8}, Landroid/view/View;->measure(II)V

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v22, v4

    iget-boolean v4, v0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v23, v8

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v20, 0x1

    aget v8, v8, v20

    sub-int/2addr v8, v1

    iget-object v14, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v14, v14, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v14, v14, v21

    if-eqz p4, :cond_9

    iget-boolean v15, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v15, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v24, v11

    const v11, 0x10502d7

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v19, 0x0

    aget v15, v15, v19

    add-int/2addr v15, v5

    sub-int/2addr v15, v4

    add-int/2addr v15, v11

    add-int v17, v15, v4

    move-object/from16 v25, v12

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v12, v12, v19

    add-int/2addr v12, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v4

    const/16 v16, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v12, v12, v18

    add-int/2addr v12, v11

    iput v12, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v26, v15

    goto :goto_5

    :cond_7
    move-object/from16 v24, v11

    move-object/from16 v25, v12

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10502d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v15, 0x0

    aget v12, v12, v15

    add-int/2addr v12, v5

    sub-int/2addr v12, v11

    add-int v17, v12, v4

    move/from16 v26, v12

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v12, v12, v15

    add-int/2addr v12, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v15

    sub-int/2addr v15, v4

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v12, v15

    sub-int/2addr v12, v11

    iput v12, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_5
    add-int v12, v14, v1

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v12, v15, :cond_8

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6

    :cond_8
    iput v14, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6

    :cond_9
    move-object/from16 v24, v11

    move-object/from16 v25, v12

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v11, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v15

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v11, v15

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v11, v11, v12

    add-int/2addr v11, v5

    div-int/lit8 v12, v4, 0x2

    sub-int v26, v11, v12

    add-int v17, v26, v4

    if-ltz v8, :cond_a

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6

    :cond_a
    add-int v11, v14, v1

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-gt v11, v12, :cond_b

    iput v14, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6

    :cond_b
    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    if-ltz v11, :cond_c

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6

    :cond_c
    iput v14, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-boolean v15, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v15, :cond_10

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v27, v11

    const-string v11, "display"

    invoke-virtual {v15, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    if-eqz v11, :cond_e

    const-string v15, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v11, v15}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v15

    move/from16 v28, v12

    array-length v12, v15

    if-nez v12, :cond_d

    invoke-virtual {v11}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v15

    :cond_d
    array-length v12, v15

    if-lez v12, :cond_f

    const/4 v12, 0x0

    aget-object v18, v15, v12

    if-eqz v18, :cond_f

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v29, v11

    const/16 v18, 0x0

    aget-object v11, v15, v18

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;Z)V

    iget v11, v12, Landroid/graphics/Point;->x:I

    iget v12, v12, Landroid/graphics/Point;->y:I

    goto :goto_7

    :cond_e
    move/from16 v28, v12

    :cond_f
    move/from16 v11, v27

    move/from16 v12, v28

    :goto_7
    move/from16 v35, v12

    move v12, v11

    move/from16 v11, v35

    goto :goto_8

    :cond_10
    move/from16 v27, v11

    move/from16 v28, v12

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move v11, v13

    goto :goto_8

    :cond_11
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v11, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_8
    iget v13, v6, Landroid/graphics/Rect;->left:I

    add-int v13, v26, v13

    iget v15, v6, Landroid/graphics/Rect;->left:I

    add-int v15, v17, v15

    sub-int/2addr v15, v12

    move/from16 v30, v12

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v31, v14

    iget v14, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v14

    sub-int/2addr v12, v11

    const/4 v14, 0x0

    move/from16 v32, v11

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    move/from16 v33, v14

    const-string/jumbo v14, "window"

    invoke-virtual {v11, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getRotation()I

    move-result v14

    move-object/from16 v34, v11

    const/4 v11, 0x3

    if-ne v14, v11, :cond_12

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v2, 0x1050190

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v15, v2

    goto :goto_9

    :cond_12
    if-nez v14, :cond_13

    iget-object v2, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x105018c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_9

    :cond_13
    move/from16 v2, v33

    :goto_9
    if-gez v13, :cond_14

    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v11, v13

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_a

    :cond_14
    if-lez v15, :cond_15

    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v11, v15

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_15
    :goto_a
    if-lez v12, :cond_16

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_16
    if-gez v26, :cond_19

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-lt v11, v4, :cond_18

    if-lez v15, :cond_17

    goto :goto_b

    :cond_17
    div-int/lit8 v11, v4, 0x2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    const/16 v16, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v11, v11, v18

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_c

    :cond_18
    :goto_b
    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_19
    :goto_c
    nop

    move/from16 v14, v31

    goto :goto_d

    :cond_1a
    move/from16 v23, v8

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    iget-object v2, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v2, v7

    sub-int/2addr v2, v10

    sub-int v8, v2, v1

    iget-object v2, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v2, v2, v4

    add-int/2addr v2, v9

    add-int v14, v2, v10

    iget-object v2, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int/2addr v2, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v11, 0x2

    div-int/2addr v4, v11

    sub-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p4, :cond_1c

    if-ltz v8, :cond_1b

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d

    :cond_1b
    iput v14, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d

    :cond_1c
    add-int v4, v14, v1

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gt v4, v11, :cond_1d

    iput v14, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d

    :cond_1d
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_d
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public semShowActionItemTooltip(IIILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
