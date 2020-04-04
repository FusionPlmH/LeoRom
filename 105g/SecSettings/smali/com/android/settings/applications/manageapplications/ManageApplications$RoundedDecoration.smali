.class Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    new-instance v0, Landroid/support/v7/util/SeslRoundedCorner;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    new-instance v1, Landroid/support/v7/util/SeslRoundedCorner;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v5}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    new-instance v3, Landroid/support/v7/util/SeslRoundedCorner;

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v5}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v6}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_0

    invoke-virtual {v0, v6, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    invoke-virtual {v1, v6, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    const/4 v9, 0x5

    if-eq v8, v9, :cond_2

    if-ne v8, v2, :cond_3

    :cond_2
    invoke-virtual {v3, v6, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
