.class public Lcom/samsung/android/settings/widget/SecDynamicSwitchPreference;
.super Landroid/support/v14/preference/SecSwitchPreference;
.source "SecDynamicSwitchPreference.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreference;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setSummaryColorPrimaryDark(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreference;->mUri:Landroid/net/Uri;

    return-void
.end method
