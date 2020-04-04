.class Landroid/widget/SemHorizontalAbsListView$PerformClick;
.super Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$700(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v4, :cond_7

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->sameWindow()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v6, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    :try_start_0
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$800(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$900(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v6

    move v2, v6

    :cond_2
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$800(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$900(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$900(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->access$1000(Landroid/widget/SemHorizontalAbsListView;II)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$800(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v6}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$1100(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v6

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->access$1000(Landroid/widget/SemHorizontalAbsListView;II)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4, v1}, Landroid/widget/SemHorizontalAbsListView;->access$1102(Landroid/widget/SemHorizontalAbsListView;I)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->access$1100(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v6

    invoke-static {v4, v6, v1}, Landroid/widget/SemHorizontalAbsListView;->access$1000(Landroid/widget/SemHorizontalAbsListView;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method
