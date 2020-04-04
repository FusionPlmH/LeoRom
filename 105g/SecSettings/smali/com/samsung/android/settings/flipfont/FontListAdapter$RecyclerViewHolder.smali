.class public Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FontListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/FontListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

.field mTitleView:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a017a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CheckableLinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    return-void
.end method
