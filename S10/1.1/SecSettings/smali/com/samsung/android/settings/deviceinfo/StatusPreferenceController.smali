.class public Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSummaryResource()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1206e7

    goto :goto_0

    :cond_0
    const v0, 0x7f1206e6

    :goto_0
    return v0
.end method

.method private isShowBadgeForChnRoot()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSupportRootBadge(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "status_info"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->getSummaryResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->isShowBadgeForChnRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rootbadge_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkRootingCondition()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    :cond_2
    :goto_1
    return-void
.end method
