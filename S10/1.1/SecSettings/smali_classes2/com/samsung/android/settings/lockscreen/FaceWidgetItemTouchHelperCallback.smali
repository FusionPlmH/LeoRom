.class public Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "FaceWidgetItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;
    }
.end annotation


# instance fields
.field private mHasFooter:Z

.field private mOnItemMoveListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;->mHasFooter:Z

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;->mOnItemMoveListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;->mHasFooter:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    return v1
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;->mOnItemMoveListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;->onItemMove(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
