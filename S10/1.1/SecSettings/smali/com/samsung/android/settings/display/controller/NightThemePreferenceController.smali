.class public Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "NightThemePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "night_theme"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;-><init>(Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateNightThemeSummary(Z)V
    .locals 10

    const v0, 0x7f121586

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_night_theme"

    invoke-static {v3, v4, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_night_theme_scheduled"

    invoke-static {v5, v6, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-nez v3, :cond_7

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "display_night_theme_scheduled_type"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "location_mode"

    invoke-static {v7, v9, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v4

    nop

    :cond_3
    if-ne v6, v8, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    const v4, 0x7f121384

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    const v4, 0x7f121376

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(I)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    const v1, 0x7f121587

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(I)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "night_theme"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "night_theme"

    return-object v0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "high_text_contrast_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const-string v0, "NightThemePrefCtrl"

    const-string v1, " onPreferenceChange"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0x1d17

    invoke-static {v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "display_night_theme_scheduled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f121585

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_night_theme_scheduled_type"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "location_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_night_theme_scheduled"

    invoke-static {v5, v6, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    if-ne v0, v1, :cond_2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "display_night_theme_scheduled_type"

    invoke-static {v1, v5, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return-void
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightThemeDisabledReasonToastText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$NightThemeSettingsInnerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->updateNightThemeSummary(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_night_theme"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/NightThemePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    return-void
.end method
