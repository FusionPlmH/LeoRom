.class public Lcom/samsung/android/settings/widget/SecGearPreference;
.super Lcom/samsung/android/settings/widget/SecRestrictedPreference;
.source "SecGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d031e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecGearPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    const v0, 0x7f0d0297

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0745

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0745

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;->onGearClick(Lcom/samsung/android/settings/widget/SecGearPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecGearPreference;->notifyChanged()V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
