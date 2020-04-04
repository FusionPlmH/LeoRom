.class public Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "EdgeScreenPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "edge_screen"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "edge_screen"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "edge_screen"

    return-object v0
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

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x1d24

    invoke-static {v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EdgeScreenPreferenceController"

    const-string v2, "Activity Not Found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportEdgeScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    nop

    :cond_2
    move v0, v2

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
