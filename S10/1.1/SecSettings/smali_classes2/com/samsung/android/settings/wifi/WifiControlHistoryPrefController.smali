.class public Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiControlHistoryPrefController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static DBG:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mControlHistory:Landroid/support/v7/preference/Preference;

.field private final mFragment:Landroid/app/Fragment;

.field private mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mIsAvailable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "wifi_control_history"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mControlHistory:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_control_history"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mControlHistory:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "wifi_control_history"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    check-cast v2, Lcom/android/settings/SettingsActivity;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    const-class v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f121dd6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f1212b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mContext:Landroid/content/Context;

    const v2, 0x7f1208c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v0, "ConfigureWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/samsung/android/settings/wifi/WifiControlHistory;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
