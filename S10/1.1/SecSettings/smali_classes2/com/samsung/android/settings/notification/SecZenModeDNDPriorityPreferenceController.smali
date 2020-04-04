.class public Lcom/samsung/android/settings/notification/SecZenModeDNDPriorityPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "SecZenModeDNDPriorityPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "allow_exceptions"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDPriorityPreferenceController;->mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDPriorityPreferenceController;->getZenMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->getPrioritySettingSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method
