.class Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$4;
.super Ljava/lang/Object;
.source "FaceWidgetRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

.field final synthetic val$dragCellViewHolder:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$4;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$4;->val$dragCellViewHolder:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$4;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->access$300(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$4;->val$dragCellViewHolder:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;->onStartDrag(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
