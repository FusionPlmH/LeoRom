.class public Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SamsungLegalInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2524

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "warranty"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_user_license_agreement"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "end_user_license_agreement"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7735a404

    if-eq v1, v2, :cond_3

    const v2, -0x4ee6da36

    if-eq v1, v2, :cond_2

    const v2, 0x1de500fc

    if-eq v1, v2, :cond_1

    const v2, 0x35a4fa15

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "health_safety"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "warranty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "arbitration_agreement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v1, "end_user_license_agreement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x2528

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x2527

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x2526

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x2525

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    nop

    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
