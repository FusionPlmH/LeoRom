.class public Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecVibrationIntensitySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SecVibrationIntensitySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa2

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150100

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f150100

    const-string v2, "UPSM"

    invoke-static {v0, v1, v2}, Landroid/support/v7/preference/SecPreferenceUtils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
