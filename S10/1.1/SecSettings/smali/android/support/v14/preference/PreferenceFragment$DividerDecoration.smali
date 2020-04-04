.class Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v14/preference/PreferenceFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    return-void
.end method

.method private canScrollUp(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v2, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    if-ge v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v0, v3

    :cond_2
    return v0
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 9

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v4, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    instance-of v8, v7, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v3

    nop

    :cond_2
    move v4, v2

    :cond_3
    return v4
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v6

    move-object v6, v5

    move v5, v8

    :goto_0
    if-ge v5, v3, :cond_7

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    instance-of v12, v11, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v12, :cond_0

    move-object v12, v11

    check-cast v12, Landroid/support/v7/preference/PreferenceViewHolder;

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-nez v5, :cond_1

    move-object v6, v12

    goto :goto_2

    :cond_1
    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    move-object v9, v12

    :cond_2
    :goto_2
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_3

    invoke-direct {v0, v10, v2}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v15, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v15, v13

    invoke-virtual {v14, v8, v13, v4, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v14}, Landroid/support/v14/preference/PreferenceFragment;->access$300(Landroid/support/v14/preference/PreferenceFragment;)I

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceViewHolder;->seslIsBackgroundDrawn()Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceViewHolder;->seslIsDrawSubheaderRound()Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v14}, Landroid/support/v14/preference/PreferenceFragment;->access$400(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    move-result-object v14

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceViewHolder;->seslGetDrawCorners()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v14}, Landroid/support/v14/preference/PreferenceFragment;->access$400(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    move-result-object v14

    invoke-virtual {v14, v10, v1}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_5
    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v14}, Landroid/support/v14/preference/PreferenceFragment;->access$500(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v14

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceViewHolder;->seslGetDrawCorners()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v14, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v14}, Landroid/support/v14/preference/PreferenceFragment;->access$500(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v14

    invoke-virtual {v14, v10, v1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v5, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v5}, Landroid/support/v14/preference/PreferenceFragment;->access$300(Landroid/support/v14/preference/PreferenceFragment;)I

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v5}, Landroid/support/v14/preference/PreferenceFragment;->access$300(Landroid/support/v14/preference/PreferenceFragment;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_9

    if-eqz v6, :cond_9

    invoke-direct {v0, v2}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->canScrollUp(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceViewHolder;->seslIsDrawSubheaderRound()Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v9, :cond_8

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceViewHolder;->seslGetDrawCorners()I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_9

    :cond_8
    iget-object v5, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v5}, Landroid/support/v14/preference/PreferenceFragment;->access$600(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void

    :cond_9
    iget-object v5, v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v5}, Landroid/support/v14/preference/PreferenceFragment;->access$700(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    iput p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method
