.class public Lcom/samsung/android/settings/datetime/TimeDisplaySchemePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeDisplaySchemePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mHost:Landroid/app/Fragment;

.field private final mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemePreferenceController;->mIsFromSUW:Z

    iput-object p2, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemePreferenceController;->mHost:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "time_display_scheme_setting"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "time_display_scheme_setting"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x7f121a70

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->newInstance(I)Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemePreferenceController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "CTC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemePreferenceController;->mIsFromSUW:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->isDataRoamingSecondary()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->timeZoneDisplaySchemeBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method
