.class public Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FaceWidgetRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field private final mFaceWidgetDragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;->mFaceWidgetDragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    return-void
.end method


# virtual methods
.method public getFaceWidgetDragCell()Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;->mFaceWidgetDragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    return-object v0
.end method
