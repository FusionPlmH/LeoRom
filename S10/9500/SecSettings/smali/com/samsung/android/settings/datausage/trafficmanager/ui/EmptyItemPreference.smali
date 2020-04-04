.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/EmptyItemPreference;
.super Landroid/support/v7/preference/Preference;
.source "EmptyItemPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d015b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/EmptyItemPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method
