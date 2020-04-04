.class public Lcom/samsung/android/settings/datetime/TimeZoneRecommendPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeZoneRecommendPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/samsung/android/settings/datetime/TimeZoneRecommendPreferenceController;->mIsFromSUW:Z

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

    const-string/jumbo v0, "time_zone_recommend"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const-string/jumbo v0, "time_zone_recommend"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    nop

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.irsettings"

    const-string v3, "com.sec.android.app.irsettings.TimeZoneRecommend"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/datetime/TimeZoneRecommendPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
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

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/datetime/TimeZoneRecommendPreferenceController;->mIsFromSUW:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->timeZoneRcmndAvail()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->timeZoneRcmndBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeZoneRecommendPreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method
