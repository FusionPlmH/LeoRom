.class public Lcom/samsung/android/directpeninput/PopupCue;
.super Ljava/lang/Object;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/PopupCue$CueContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_X:Z = false

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_Y:Z = false

.field private static final TAG:Ljava/lang/String; = "DirectPenInputPopupCue"

.field public static final TYPE_MULTILINE_EDITOR:I = 0x2

.field public static final TYPE_NONFORM_VIEW:I = 0x3

.field public static final TYPE_SINGLELINE_EDITOR:I = 0x1


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

.field private mHoverListner:Landroid/view/View$OnHoverListener;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsAirButtonClicked:Z

.field private mIsShowing:Z

.field private mPopupHeight:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field private mPopupWidth:I

.field private mPopupXfromAnchor:I

.field private mPopupYfromAnchor:I

.field private mTouchListner:Landroid/view/View$OnTouchListener;

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->initPopup()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/directpeninput/PopupCue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    return p1
.end method

.method private computePosition(ILandroid/view/MotionEvent;)V
    .locals 35

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v3}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->getHoverCueDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :cond_0
    iget-object v4, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iget-object v4, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v4}, Lcom/samsung/android/directpeninput/PopupCue;->getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz p2, :cond_1

    move-object/from16 v18, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move/from16 v19, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move/from16 v17, v3

    move/from16 v16, v19

    goto :goto_0

    :cond_1
    move-object/from16 v18, v3

    :goto_0
    iget-object v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/EditText;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v20, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingStart()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v7

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v8

    move/from16 v21, v9

    iget-object v9, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v22, v10

    const v10, 0x10504a0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move/from16 v23, v11

    const v11, 0x105049d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->getBaseline()I

    move-result v19

    if-lez v19, :cond_3

    invoke-virtual {v4, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    invoke-virtual {v4, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v24

    sub-int v19, v19, v24

    invoke-virtual {v3}, Landroid/widget/EditText;->getBaseline()I

    move-result v24

    invoke-virtual {v4, v11}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v25

    add-int v24, v24, v25

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int v11, v11, v24

    sub-int v25, v2, v10

    sub-int v11, v11, v25

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    move-object/from16 v28, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v1

    sub-int/2addr v3, v9

    goto :goto_1

    :cond_2
    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    add-int/2addr v3, v9

    :goto_1
    goto :goto_3

    :cond_3
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    iget-object v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v1

    sub-int/2addr v3, v9

    goto :goto_2

    :cond_4
    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    add-int/2addr v3, v9

    :goto_2
    nop

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int v11, v7, v8

    sub-int/2addr v4, v11

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v4

    sub-int v19, v2, v10

    sub-int v11, v11, v19

    :goto_3
    add-int v4, v3, v1

    move/from16 v29, v3

    iget v3, v5, Landroid/graphics/Rect;->right:I

    if-le v4, v3, :cond_5

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    move/from16 v29, v3

    :cond_5
    if-gez v29, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    move/from16 v3, v29

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/PopupCue;->getStatusBarHeight()I

    move-result v4

    if-ge v11, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/directpeninput/PopupCue;->isStatusBarShowing()Z

    move-result v19

    if-eqz v19, :cond_7

    move v11, v4

    :cond_7
    move/from16 v30, v4

    iget-object v4, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v4}, Lcom/samsung/android/directpeninput/PopupCue;->getLowestListParentY(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_9

    if-ge v11, v4, :cond_8

    move/from16 v19, v4

    goto :goto_5

    :cond_8
    move/from16 v19, v11

    :goto_5
    move/from16 v11, v19

    :cond_9
    if-gez v11, :cond_a

    const/16 v26, 0x0

    goto :goto_6

    :cond_a
    move/from16 v26, v11

    :goto_6
    move/from16 v11, v26

    move/from16 v31, v4

    iget v4, v5, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    move/from16 v32, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v11, v3

    nop

    move v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v32

    goto/16 :goto_9

    :cond_b
    move-object/from16 v20, v4

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    iget-object v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105049e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v6, v3

    iget-object v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105049f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v7, v3

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    iget v4, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v7

    add-int v9, v3, v1

    iget v10, v5, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_c

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int v3, v9, v1

    :cond_c
    add-int v9, v4, v2

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_d

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v9, v2

    :cond_d
    iget v9, v5, Landroid/graphics/Rect;->left:I

    if-ge v3, v9, :cond_e

    iget v9, v5, Landroid/graphics/Rect;->left:I

    goto :goto_7

    :cond_e
    move v9, v3

    :goto_7
    move v3, v9

    iget v9, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v9, :cond_f

    iget v9, v5, Landroid/graphics/Rect;->top:I

    goto :goto_8

    :cond_f
    move v9, v4

    :goto_8
    move v11, v9

    iget v4, v5, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v9

    move/from16 v34, v6

    move v6, v3

    move v3, v9

    move v9, v8

    move v8, v7

    move/from16 v7, v34

    :goto_9
    iput v4, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupXfromAnchor:I

    iput v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupYfromAnchor:I

    iput v6, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    iput v11, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    iput v1, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    iput v2, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    sget-boolean v10, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    if-eqz v10, :cond_10

    const-string v10, "DirectPenInputPopupCue"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v1

    const-string v1, "computePosition x : "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y : "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " w : "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h : "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    move/from16 v33, v1

    :goto_a
    return-void
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3

    move-object v0, p2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopup()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;-><init>(Lcom/samsung/android/directpeninput/PopupCue;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    return-void
.end method

.method private createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPenInputPopupCue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPopupLayoutParam() x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  w : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectPenInputCue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x10302f2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private getLowestListParentY(Landroid/view/View;)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Landroid/widget/AbsListView;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecyclerView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v5, 0x1

    aget v6, v4, v5

    if-le v6, v2, :cond_1

    aget v2, v4, v5

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v4, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v4, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getStatusBarHeight()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050367

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DirectPenInputPopupCue"

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "DirectPenInputPopupCue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatusBarHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    move-object v1, p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v3, v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    if-le v6, v3, :cond_0

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v3

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v3, v6

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v6, v4

    sub-int/2addr v7, v8

    neg-int v4, v7

    goto :goto_2

    :cond_2
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int v8, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    :goto_2
    move-object v1, v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v5, "DirectPenInputPopupCue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVisibleRectInWindow : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/PopupCue;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    move-object v1, p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v3, v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    if-le v6, v3, :cond_0

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v3

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v3, v6

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v6, v4

    sub-int/2addr v7, v8

    neg-int v4, v7

    goto :goto_2

    :cond_2
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int v8, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    :goto_2
    move-object v1, v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_3
    instance-of v5, v2, Landroid/view/ViewRootImpl;

    if-eqz v5, :cond_6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v6, "DirectPenInputPopupCue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWindowVisibleDisplayFrame : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-lez v6, :cond_4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-lez v6, :cond_5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->getStatusBarHeight()I

    move-result v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->getStatusBarHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    :cond_6
    const-string v5, "DirectPenInputPopupCue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVisibleRectOnScreen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private initPopup()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    iput v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    iput v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    iput v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    const v3, 0x10302f2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v4, v3, :cond_1

    move-object v4, v0

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v4, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-interface {v4, v5, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    return-void
.end method

.method public getIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public getRectInAnchor()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupXfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupYfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public isAirButtonClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    return v0
.end method

.method public isPointInPopup(FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    return v0
.end method

.method public isStatusBarShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    iput p2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    iput p2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public show(ILandroid/view/MotionEvent;)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->createPopup()V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/directpeninput/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    :cond_1
    return-void
.end method

.method public switchCueButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->switchCueButton(Z)V

    return-void
.end method

.method public updatePopupPosition(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    sget-boolean v1, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPenInputPopupCue"

    const-string/jumbo v2, "updatePopupPosition()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mType:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/directpeninput/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
