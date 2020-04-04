.class public Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "BlueLightFilterPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field private static final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field private static final COLOR_BLIND_URI:Landroid/net/Uri;

.field private static final COLOR_LENDS_URI:Landroid/net/Uri;

.field private static final GREY_SCALE_URI:Landroid/net/Uri;

.field private static final HIGH_CONTRAST_URI:Landroid/net/Uri;

.field private static final LOCATION_ALLOWED_URI:Landroid/net/Uri;


# instance fields
.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blue_light_filter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string v0, "blue_light_filter_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    const-string v0, "greyscale_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    const-string v0, "high_contrast"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    const-string v0, "color_blind"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    const-string v0, "color_lens_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    const-string v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "blue_light_filter"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    return-void
.end method

.method private updateBlueLightFilterState()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "blue_light_filter"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v4, :cond_3

    const-class v7, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setFragment(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v6

    if-eq v6, v5, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f120308

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f12136e

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private updateBlueLightFilterSummary()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "blue_light_filter_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "blue_light_filter_scheduled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "location_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v5

    const v6, 0x7f12136c

    if-nez v5, :cond_5

    if-eqz v1, :cond_4

    if-ne v0, v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f12136f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f121361

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f12136d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "blue_light_filter"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "blue_light_filter"

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

    sget-object v1, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilter()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "blue_light_filter"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x107d

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "blue_light_filter_scheduled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f12136a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.bluelightfilter"

    const-string v6, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string v4, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v5, 0x18

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v4, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v2
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->updateBlueLightFilterState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/BlueLightFilterPreferenceController;->updateBlueLightFilterSummary()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
