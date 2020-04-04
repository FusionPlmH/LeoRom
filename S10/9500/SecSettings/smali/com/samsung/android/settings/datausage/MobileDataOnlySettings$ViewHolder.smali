.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroid/support/v7/internal/widget/PreferenceImageView;

.field public appName:Landroid/widget/TextView;

.field public appSwitch:Landroid/widget/Switch;

.field public uid:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0230

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    const v2, 0x1020040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/PreferenceImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroid/support/v7/internal/widget/PreferenceImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroid/support/v7/internal/widget/PreferenceImageView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/PreferenceImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroid/support/v7/internal/widget/PreferenceImageView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/PreferenceImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appIcon:Landroid/support/v7/internal/widget/PreferenceImageView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/PreferenceImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
