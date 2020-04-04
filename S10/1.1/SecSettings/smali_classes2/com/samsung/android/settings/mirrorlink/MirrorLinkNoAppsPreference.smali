.class public Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "MirrorLinkNoAppsPreference.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mBaseView:Landroid/view/View;

.field private mEmptyHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d01ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->setLayoutResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->setSelectable(Z)V

    iput-object p2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mBaseView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->seslSetRoundedBg(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mBaseView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mBaseView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mBaseView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mEmptyHeight:I

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mEmptyHeight:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mEmptyHeight:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->mEmptyHeight:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
