.class public Lcom/android/settings/datetime/AutoTimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mIsFromSUW:Z

    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iput-boolean p3, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mIsFromSUW:Z

    return-void
.end method

.method private getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_time"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x26

    const/16 v2, 0x128e

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object v2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-boolean v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mIsFromSUW:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->applyEDMDateTimeChangePolicy(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f120668

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setChecked(Z)V

    return-void
.end method
