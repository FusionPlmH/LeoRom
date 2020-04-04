.class public Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FaceWidgetRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyclerHeaderViewHolder"
.end annotation


# instance fields
.field private final mFaceWidgetHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;->mFaceWidgetHeaderView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;->mFaceWidgetHeaderView:Landroid/view/View;

    return-object v0
.end method
