.class public Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "IconBackgroundPreferenceController.java"


# instance fields
.field private mPreference:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "icon_backgrounds"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    return-void
.end method

.method private isEnable()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "current_sec_appicon_theme_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultEasyLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v3

    const-string v4, "IconBackgroundPreferenceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnable() isDefaultLauncher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDefaultEasyLauncher() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", currentTheme : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentIcon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    return v4

    :cond_3
    :goto_0
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "icon_backgrounds"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "icon_backgrounds"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tap_to_icon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120b7e

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120b83

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportIconFrame()Z

    move-result v0

    return v0
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/IconBackgroundPreferenceController;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    return-void
.end method
