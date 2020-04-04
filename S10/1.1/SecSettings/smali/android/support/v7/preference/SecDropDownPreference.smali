.class public Landroid/support/v7/preference/SecDropDownPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "SecDropDownPreference.java"


# instance fields
.field private mIsSoundEffectEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400b7

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/SecDropDownPreference;->mIsSoundEffectEnabled:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/support/v7/preference/SecDropDownPreference;->mIsSoundEffectEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColor(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/preference/SecDropDownPreference;->mIsSoundEffectEnabled:Z

    return-void
.end method

.method public updateState()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/preference/SecDropDownPreference;->notifyChanged()V

    return-void
.end method
