.class Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemImageOverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    sget-object v0, Lcom/android/internal/R$styleable;->ImageView:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x10102f6

    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/widget/ActionMenuPresenter;->access$1502(Landroid/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1500(Landroid/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method hasNavigationbar()Z
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const v5, 0x105018c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_1

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-ne v6, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    return v6

    :cond_1
    :goto_0
    const/4 v6, 0x1

    return v6
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const v2, 0x10102f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x25

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltip()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    :cond_1
    return v1
.end method

.method public performLongClick()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v5, 0x2

    const/4 v7, 0x0

    add-int v8, v6, v3

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return v0
.end method

.method setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setTooltipOffset()V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingStart()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingEnd()I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v10}, Landroid/widget/ActionMenuPresenter;->access$1600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v10}, Landroid/widget/ActionMenuPresenter;->access$1700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuView;

    invoke-virtual {v10}, Landroid/widget/ActionMenuView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v9, 0x0

    :cond_0
    new-array v10, v3, [I

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationInWindow([I)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v11}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string/jumbo v12, "window"

    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v12, v13}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v15

    iget-object v3, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->access$1800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->access$1900(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v17, v1

    instance-of v1, v3, Landroid/widget/Toolbar;

    const/16 v18, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v19, v3

    iget v3, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v20, v12

    iget v12, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v12

    if-ge v1, v3, :cond_3

    aget v1, v4, v18

    aget v3, v10, v18

    sub-int/2addr v1, v3

    iget v3, v11, Landroid/graphics/Rect;->left:I

    sub-int v14, v1, v3

    goto :goto_1

    :cond_2
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    :cond_3
    :goto_1
    const/4 v1, 0x1

    aget v3, v10, v1

    add-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLayoutDirection()I

    move-result v12

    if-nez v12, :cond_7

    iget v12, v11, Landroid/graphics/Rect;->right:I

    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v1

    aget v1, v10, v18

    add-int/2addr v1, v5

    sub-int/2addr v12, v1

    sub-int v1, v5, v7

    sub-int/2addr v1, v8

    const/16 v16, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v12, v1

    add-int/2addr v12, v8

    sub-int/2addr v12, v14

    const v1, 0x11200ad

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->hasNavigationbar()Z

    move-result v16

    if-eqz v16, :cond_6

    move/from16 v21, v1

    const/4 v1, 0x1

    if-eq v15, v1, :cond_5

    const/4 v1, 0x3

    if-ne v15, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v23, v2

    move-object/from16 v22, v4

    goto :goto_3

    :cond_5
    :goto_2
    const v1, 0x105018c

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    move-object/from16 v22, v4

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v23, v2

    iget v2, v13, Landroid/util/DisplayMetrics;->density:F

    div-float v16, v1, v4

    move/from16 v24, v1

    mul-float v1, v16, v2

    float-to-int v1, v1

    add-int/2addr v12, v1

    goto :goto_3

    :cond_6
    move-object/from16 v23, v2

    move-object/from16 v22, v4

    :goto_3
    goto :goto_4

    :cond_7
    move-object/from16 v23, v2

    move-object/from16 v22, v4

    aget v1, v10, v18

    add-int/2addr v1, v5

    sub-int v2, v5, v7

    sub-int/2addr v2, v8

    const/4 v4, 0x2

    div-int/2addr v2, v4

    sub-int/2addr v1, v2

    sub-int v12, v1, v7

    :goto_4
    move v1, v12

    invoke-virtual {v0, v1, v3}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipPosition(II)V

    return-void
.end method
