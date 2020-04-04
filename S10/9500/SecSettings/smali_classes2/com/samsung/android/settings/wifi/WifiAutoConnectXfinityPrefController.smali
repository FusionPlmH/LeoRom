.class public Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiAutoConnectXfinityPrefController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;,
        Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static mIsComcastWifiSupported:Z


# instance fields
.field private mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsAvailable:Z

.field private mIsNwdCmEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsNwdCmEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.smithmicro.mnd.action.RESUME_CM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK_API_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK_API_SERVICE_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsNwdCmEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsNwdCmEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->updateXfinitySetting(Z)V

    return-void
.end method

.method private sendBroadcastToNetwiseClient(Ljava/lang/String;)V
    .locals 9

    const-string v0, "WifiAutoConnectXfinityPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastToNetwiseClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.smithmicro.netwise.director.comcast.oem"

    const-string v3, "com.smithmicro.mnd.SDKAPIReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    const-string v3, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateTextForGetStatus()V
    .locals 3

    const-string v0, "WifiAutoConnectXfinityPrefController"

    const-string v1, "updateTextForGetStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateXfinitySetting(Z)V
    .locals 3

    const-string v0, "WifiAutoConnectXfinityPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateXfinitySetting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201c9

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201c8

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "auto_connect_xfinity_wifi"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->updateTextForGetStatus()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_connect_xfinity_wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    if-eqz v1, :cond_2

    const-string v1, "auto_connect_xfinity_wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "com.smithmicro.mnd.action.RESUME_CM"

    goto :goto_0

    :cond_0
    const-string v2, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    const v3, 0x7f1212a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    const v4, 0x7f1208a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    if-eqz v0, :cond_1

    const-string v0, "auto_connect_xfinity_wifi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.smithmicro.mnd.action.RESUME_CM"

    goto :goto_0

    :cond_0
    const-string v0, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
