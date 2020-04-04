.class public Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeRepeatCallersPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private final mRepeatCallersThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    const-string v0, "repeat_callers"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput p3, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    return-void
.end method

.method private setRepeatCallerSummary(Landroid/support/v7/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f122082

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "repeat_callers"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->setRepeatCallerSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1018

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "repeat_callers"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-boolean v1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PrefControllerMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowRepeatCallers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mContext:Landroid/content/Context;

    const/16 v4, 0xab

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/ZenModeBackend;->saveSoundPolicy(IZ)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x1020

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->getZenMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
