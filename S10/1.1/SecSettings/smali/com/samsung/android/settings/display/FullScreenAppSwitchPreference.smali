.class public Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "FullScreenAppSwitchPreference.java"


# instance fields
.field private listner:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mSwitchVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->mSwitchVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->listner:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->mSwitchVisible:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference$1;-><init>(Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListner(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->listner:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setSwitchVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->mSwitchVisible:Z

    return-void
.end method
