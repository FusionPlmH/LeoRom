.class public Lcom/samsung/android/settings/general/ContactUsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ContactUsPreferenceController.java"


# instance fields
.field private final mHost:Lcom/samsung/android/settings/general/GeneralDeviceSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/general/ContactUsPreferenceController;->mHost:Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "device_info_contact_us"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ContactUsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ContactUsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/general/GeneralUtils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ContactUsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/general/ContactUsPreferenceController;->mHost:Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x12d5

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEnteranceLogging(II)V

    invoke-static {v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContactUsPreferenceController"

    const-string v2, "Activity Not Found"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/general/ContactUsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/general/GeneralUtils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
