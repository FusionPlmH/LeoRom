.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowImageView"
.end annotation


# instance fields
.field private mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v0, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->access$202(Landroid/support/v7/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-gt p1, v0, :cond_0

    new-instance p1, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasNavigationbar()Z
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, v2, Landroid/graphics/Rect;->right:I

    float-to-int v6, v3

    add-int/2addr v5, v6

    iget v6, v4, Landroid/graphics/Point;->x:I

    if-eq v5, v6, :cond_1

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    return v5

    :cond_1
    :goto_0
    const/4 v5, 0x1

    return v5
.end method

.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->View:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->View_android_minHeight:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setMinimumHeight(I)V

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->access$202(Landroid/support/v7/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_android_src:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateOverflowButtonBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    :cond_1
    return v1
.end method

.method public performLongClick()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setTooltipOffset()V

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v5, 0x2

    const/4 v7, 0x0

    add-int v8, v6, v3

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return v0
.end method

.method protected setTooltipOffset()V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getPaddingStart()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getPaddingEnd()I

    move-result v8

    new-array v9, v3, [I

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getLocationInWindow([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Landroid/support/v7/appcompat/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

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

    iget-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v3}, Landroid/support/v7/widget/ActionMenuPresenter;->access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v3}, Landroid/support/v7/widget/ActionMenuPresenter;->access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v17, v1

    instance-of v1, v3, Landroid/support/v7/widget/Toolbar;

    const/16 v18, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v19, v3

    iget v3, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v20, v12

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v12

    if-ge v1, v3, :cond_2

    aget v1, v4, v18

    aget v3, v9, v18

    sub-int/2addr v1, v3

    iget v3, v10, Landroid/graphics/Rect;->left:I

    sub-int v14, v1, v3

    goto :goto_1

    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    :cond_2
    :goto_1
    const/4 v1, 0x1

    aget v3, v9, v1

    add-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getLayoutDirection()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getLayoutDirection()I

    move-result v21

    if-nez v21, :cond_6

    iget v1, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v22, v4

    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    aget v4, v9, v18

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    sub-int v4, v5, v7

    sub-int/2addr v4, v8

    const/16 v16, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    sub-int/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->hasNavigationbar()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    if-eq v15, v4, :cond_4

    const/4 v4, 0x3

    if-ne v15, v4, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v23, v2

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iget v0, v13, Landroid/util/DisplayMetrics;->density:F

    div-float v16, v11, v4

    move-object/from16 v23, v2

    mul-float v2, v16, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v23, v2

    goto :goto_3

    :cond_6
    move-object/from16 v23, v2

    move-object/from16 v22, v4

    aget v0, v9, v18

    add-int/2addr v0, v5

    sub-int v1, v5, v7

    sub-int/2addr v1, v8

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    sub-int v1, v0, v7

    :goto_3
    move v0, v1

    invoke-static {v0, v3, v12}, Landroid/support/v7/widget/TooltipCompat;->setTooltipPosition(III)V

    return-void
.end method
