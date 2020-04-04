.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dragFrom:I

.field dragTo:I

.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    iput v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    return-void
.end method

.method private actuallyMoved(II)V
    .locals 2

    const-string v0, "LocaleDragAndDropAdapter"

    const-string v1, "actuallyMoved called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    iget v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    iget v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->actuallyMoved(II)V

    :cond_0
    iput v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    iput v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$000(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iput v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    :cond_0
    iput v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/4 v2, 0x1

    return v2
.end method

.method public onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
