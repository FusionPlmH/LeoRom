.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 3

    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getCollapsedHeight()F

    move-result v1

    invoke-static {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroid/support/design/widget/AppBarLayout;->mIsSetCollapsedHeight:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getPaddingBottom()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->sesl_action_bar_default_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    :goto_1
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/support/design/widget/AppBarLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/AppBarLayout;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e3851eb    # 0.17999999f

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    iget-object v7, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    const v9, 0xcccccc

    const-wide v10, 0x406fe00000000000L    # 255.0

    const v12, 0xcccccc

    iget-object v13, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput v1, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    iget-object v13, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v13}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$100(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v13

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget v14, v14, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v14, v14

    div-int/lit8 v14, v14, 0x3

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v13, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v13, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v13, :cond_0

    iget-object v13, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v13, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v13}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v13

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    iget-object v15, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v15}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v15

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMinimumHeight()I

    move-result v14

    sub-int/2addr v15, v14

    sub-int/2addr v15, v13

    const/4 v14, 0x0

    move-object/from16 v16, v2

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v2

    :goto_1
    move/from16 v17, v8

    if-ge v14, v2, :cond_3

    iget-object v8, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8, v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move/from16 v21, v9

    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v9

    move-wide/from16 v22, v10

    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v10

    if-eqz v10, :cond_2

    instance-of v10, v8, Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$300(Landroid/support/design/widget/CollapsingToolbarLayout;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v8

    check-cast v10, Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v10}, Landroid/support/v7/widget/ActionBarContextView;->getIsActionModeAccessibilityOn()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/Toolbar;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_1
    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/Toolbar;->setImportantForAccessibility(I)V

    :cond_2
    :goto_2
    iget v10, v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    neg-int v10, v1

    int-to-float v10, v10

    iget v11, v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_3

    :pswitch_1
    neg-int v10, v1

    iget-object v11, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v11, v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v11

    move-object/from16 v24, v2

    const/4 v2, 0x0

    invoke-static {v10, v2, v11}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    nop

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v17

    move/from16 v2, v20

    move/from16 v9, v21

    move-wide/from16 v10, v22

    goto :goto_1

    :cond_3
    move/from16 v21, v9

    move-wide/from16 v22, v10

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    if-lez v13, :cond_4

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    int-to-float v8, v4

    sub-float/2addr v8, v6

    mul-float/2addr v2, v8

    const/high16 v8, 0x437f0000    # 255.0f

    sub-float v2, v8, v2

    const/4 v9, 0x0

    cmpg-float v10, v2, v9

    if-gez v10, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    cmpl-float v10, v2, v8

    if-lez v10, :cond_6

    const/high16 v2, 0x437f0000    # 255.0f

    :cond_6
    :goto_4
    div-float v8, v2, v8

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$100(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    if-eqz v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-nez v2, :cond_7

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/support/v7/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    goto :goto_5

    :cond_7
    cmpl-float v2, v8, v9

    if-nez v2, :cond_8

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/support/v7/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    :cond_8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v2

    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)F

    move-result v10

    float-to-int v10, v10

    const/16 v11, 0xff

    if-gt v2, v10, :cond_9

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$100(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result v9

    invoke-static {v9, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result v12

    invoke-static {v12, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    iget-object v11, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    goto/16 :goto_6

    :cond_9
    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    if-eqz v2, :cond_11

    const/high16 v2, 0x43160000    # 150.0f

    div-float/2addr v2, v5

    int-to-float v9, v4

    sub-float/2addr v9, v7

    mul-float/2addr v2, v9

    float-to-double v9, v2

    const-wide/16 v17, 0x0

    cmpl-double v2, v9, v17

    if-ltz v2, :cond_b

    const-wide v19, 0x406fe00000000000L    # 255.0

    cmpg-double v2, v9, v19

    if-gtz v2, :cond_b

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result v2

    double-to-int v11, v9

    invoke-static {v2, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result v12

    double-to-int v14, v9

    invoke-static {v12, v14}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    move/from16 v25, v2

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    move-wide/from16 v22, v9

    move/from16 v9, v25

    goto/16 :goto_6

    :cond_a
    move/from16 v25, v2

    move-wide/from16 v22, v9

    move/from16 v9, v25

    goto/16 :goto_6

    :cond_b
    cmpg-double v2, v9, v17

    if-gez v2, :cond_d

    const-wide/16 v10, 0x0

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result v9

    double-to-int v2, v10

    invoke-static {v9, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    iget-object v14, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v14}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result v12

    double-to-int v14, v10

    invoke-static {v12, v14}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    move/from16 v26, v2

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    :cond_c
    move-wide/from16 v22, v10

    goto :goto_6

    :cond_d
    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result v2

    invoke-static {v2, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    iget-object v11, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v11, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result v12

    const/16 v11, 0xff

    invoke-static {v12, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    move/from16 v27, v2

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    move-wide/from16 v22, v9

    move/from16 v9, v27

    goto :goto_6

    :cond_e
    move/from16 v27, v2

    move-wide/from16 v22, v9

    move/from16 v9, v27

    goto :goto_6

    :cond_f
    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$500(Landroid/support/design/widget/CollapsingToolbarLayout;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v15

    div-float/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :cond_10
    move/from16 v8, v17

    :cond_11
    move/from16 v9, v21

    :cond_12
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
