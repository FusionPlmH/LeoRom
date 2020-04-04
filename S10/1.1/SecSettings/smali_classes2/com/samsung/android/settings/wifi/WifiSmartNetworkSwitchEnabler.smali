.class public Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;


# instance fields
.field private mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsSwitchForIndividualAppsEnabled:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/support/v7/preference/SecPreferenceScreen;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_switch_for_individual_apps_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v2, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch for individual apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mIsSwitchForIndividualAppsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f1212b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:Ljava/lang/String;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    const-string v2, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_2
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:Ljava/lang/String;

    return-object v0
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSwitchForIndividualApps()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateWFSNBigdata(ZZ)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg2:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method


# virtual methods
.method public onRadioButtonClicked(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string v0, "WifiSmartNetworkSwitchEnabler"

    const-string v3, "Agg on pressed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string v0, "WifiSmartNetworkSwitchEnabler"

    const-string v3, "Agg off pressed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f120938

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSwitchForIndividualApps()V

    return-void
.end method

.method public setSmartNetworkSwitchEnable(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_num_of_switch_to_mobile_data_toggle"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, 0x1

    :goto_1
    move v0, v3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_num_of_switch_to_mobile_data_toggle"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SNS On pressed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    const-string v1, "WifiSmartNetworkSwitchEnabler"

    const-string v2, "SNS Off pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public updateRadioGroup()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
