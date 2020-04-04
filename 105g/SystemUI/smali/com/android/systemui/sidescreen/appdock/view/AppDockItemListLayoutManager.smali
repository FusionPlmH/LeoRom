.class public Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "AppDockItemListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager$Attributes;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;->mView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    return-void
.end method
