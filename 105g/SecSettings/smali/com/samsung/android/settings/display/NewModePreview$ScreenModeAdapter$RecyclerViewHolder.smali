.class public Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

.field mTitleView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a06b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CheckableLinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    return-void
.end method
