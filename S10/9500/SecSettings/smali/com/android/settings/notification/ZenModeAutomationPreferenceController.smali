.class public Lcom/android/settings/notification/ZenModeAutomationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModeAutomationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;->mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "zen_mode_automation_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;->mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->getAutomaticRulesSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method
