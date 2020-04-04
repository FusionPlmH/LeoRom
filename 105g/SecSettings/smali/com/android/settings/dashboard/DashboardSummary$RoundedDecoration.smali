.class Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7

    const-string v0, "DashboardSummary#RoundedDecoration"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardSummary;->access$100(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v5

    iget v6, v4, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->mRoundMode:I

    invoke-virtual {v5, v6}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardSummary;->access$100(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v5

    invoke-virtual {v5, v2, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardSummary;->access$200(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method
