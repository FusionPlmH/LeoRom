.class public Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NotifyWifiRecommendController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static DBG:Z

.field public static final SUPPORT_RECOMMEND_NOTIFICATION_MENU:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsAvailable:Z

.field private mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_RECOMMEND_WIFI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->SUPPORT_RECOMMEND_NOTIFICATION_MENU:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController$1;-><init>(Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method private modifyPreferences()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->SUPPORT_RECOMMEND_NOTIFICATION_MENU:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sem_wifi_recommend_networks_notification_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "notify_wifi_recommend"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->SUPPORT_RECOMMEND_NOTIFICATION_MENU:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sem_wifi_recommend_networks_notification_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v1, v4

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mIsAvailable:Z

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mIsAvailable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notify_wifi_recommend"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify_wifi_recommend"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mNotifyWifiRecommend:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sem_wifi_recommend_networks_notification_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/NotifyWifiRecommendController;->modifyPreferences()V

    return-void
.end method