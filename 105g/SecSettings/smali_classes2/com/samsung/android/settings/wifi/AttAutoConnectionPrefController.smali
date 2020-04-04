.class public Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AttAutoConnectionPrefController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static DBG:Z

.field private static final mEnableAutoConnectHotspot:Ljava/lang/String;


# instance fields
.field private mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsAvailable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mEnableAutoConnectHotspot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mEnableAutoConnectHotspot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method private modifyPreferences()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-string v1, "ATT"

    sget-object v2, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mEnableAutoConnectHotspot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_2

    const-string v1, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getAutomaticConnectionToWifi"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "getAutomaticConnectionToWifi"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_auto_connecct"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_1

    move v4, v7

    nop

    :cond_1
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "att_auto_connect"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "ATT"

    sget-object v1, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mEnableAutoConnectHotspot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mAttAutoConnection:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mIsAvailable:Z

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "att_auto_connect"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "att_auto_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v2, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "enable"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_auto_connecct"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mContext:Landroid/content/Context;

    const v6, 0x7f1212e6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mContext:Landroid/content/Context;

    const v7, 0x7f1208bc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_1

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    :goto_0
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->modifyPreferences()V

    return-void
.end method
