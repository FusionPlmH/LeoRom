.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v4, :cond_6

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v2

    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v7, :cond_6

    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;II)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v6

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;II)V

    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4, v1}, Landroid/widget/AbsListView;->access$1602(Landroid/widget/AbsListView;I)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v6

    invoke-static {v4, v6, v1}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;II)V

    :cond_6
    :goto_0
    return-void
.end method
