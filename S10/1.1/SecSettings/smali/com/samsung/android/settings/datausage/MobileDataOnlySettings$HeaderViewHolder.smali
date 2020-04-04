.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field public spinner:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a02fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$1200(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a02fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    return-void
.end method
