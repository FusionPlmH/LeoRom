.class public Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
.super Landroid/support/v7/preference/SecPreference;
.source "DisplayDisabledAppearancePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mIsChecked:Z

.field protected mIsEnabled:Z

.field private mMsg:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsChecked:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onClick()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsChecked:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference$1;-><init>(Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public setEnabledAppearance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->notifyChanged()V

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsChecked:Z

    return-void
.end method
