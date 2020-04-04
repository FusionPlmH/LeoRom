.class Lcom/android/settings/dashboard/DashboardAdapter$SecRecyclerViewDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecRecyclerViewDecoration"
.end annotation


# instance fields
.field private final divHeight:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$SecRecyclerViewDecoration;->divHeight:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$SecRecyclerViewDecoration;->divHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
