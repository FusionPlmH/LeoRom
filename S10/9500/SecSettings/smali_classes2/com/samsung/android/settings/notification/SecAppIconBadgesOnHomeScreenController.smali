.class public Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecAppIconBadgesOnHomeScreenController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/Preference;Z)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    const v2, 0x7f120fa2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getBadgeAppIconType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    const v2, 0x7f120fa5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    const v2, 0x7f120fa4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "notification_badging"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;-><init>(Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mSettingObserver:Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_badging"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mSettingObserver:Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mSettingObserver:Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_badging"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->updateSummary(Landroid/support/v7/preference/Preference;Z)V

    const/16 v2, 0xfd2

    const/16 v3, 0xfd4

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v1
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mSettingObserver:Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mSettingObserver:Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_badging"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;->updateSummary(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method
