.class public Lcom/samsung/android/settings/wifi/PasspointPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PasspointPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field public static final CONFIG_MENU_HOTSPOT20:Ljava/lang/String;

.field private static DBG:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAvailable:Z

.field private mIsWifiEnabled:Z

.field private mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->CONFIG_MENU_HOTSPOT20:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsWifiEnabled:Z

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method private setSummary()V
    .locals 3

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->DCM:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v1, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v0, v1, :cond_0

    const v0, 0x7f121deb

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->TMB:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v1, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v0, v1, :cond_1

    const v0, 0x7f121dec

    goto :goto_0

    :goto_1
    nop

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "wifi_hs20_enable"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_hotspot20_connected_history"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_hotspot20_useable_vendor_usim"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIS:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v4, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v3, "ConfigureWifiSettings"

    const-string v4, "displayPreference, Unuseable Vendor USIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsAvailable:Z

    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->CONFIG_MENU_HOTSPOT20:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "MENU_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsAvailable:Z

    :cond_2
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_hs20_enable"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot20_enable"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1212a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f1208b6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    invoke-static {v2, v3, v5, v6}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v4

    :catch_0
    move-exception v1

    const-string v2, "ConfigureWifiSettings"

    const-string v3, "onPreferenceChange, NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onResume()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsWifiEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_hotspot20_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->setSummary()V

    :cond_2
    return-void
.end method
