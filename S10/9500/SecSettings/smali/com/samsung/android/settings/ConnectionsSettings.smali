.class public Lcom/samsung/android/settings/ConnectionsSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ConnectionsSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static CMC_ACTION:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final isFaver3:Z

.field private static final isGlobal:Z


# instance fields
.field private mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

.field private mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothEnablerPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

.field private mCmcModeEnabler:Lcom/samsung/android/settings/SecCmcModeEnabler;

.field private mCmcSettings:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

.field private mDeviceVisibilityPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mEpdgObserver:Landroid/database/ContentObserver;

.field private mKnoxCustomIsProKioskMode:Z

.field private mNetworklockutils:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mNfcJapanPreference:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSimCardMgr:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mUm:Landroid/os/UserManager;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettingsPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isFaver3:Z

    const-string/jumbo v0, "settings.CMC_SETTINGS"

    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->CMC_ACTION:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/ConnectionsSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/ConnectionsSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/ConnectionsSettings$7;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ConnectionsSettings$1;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings$2;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings$3;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEpdgObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings$4;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateMobileNetworkMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcSettings:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isFaver3:Z

    return v0
.end method

.method private getUNWFCIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->getVowifiPackageNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v0, v2

    const-string/jumbo v2, "settings"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private setLinkedDataView()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungBackup(Landroid/content/Context;Z)Z

    move-result v2

    const/16 v3, 0x2329

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    move-object v0, v2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.scloud"

    const-string v6, "com.samsung.android.scloud.app.ui.SCloudActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "flowId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f1204db

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v4, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "flowId"

    const/16 v6, 0x233c

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getMetricsCategory()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v5, 0x7f120cee

    iput v5, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/16 v5, 0x400

    invoke-static {v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    move-object v1, v5

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$ResetNetworkActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v5, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v6, "flowId"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getMetricsCategory()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v3, 0x7f1211e9

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v3, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private updateMobileNetworkMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ConnectionsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMobileNetworkMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mobile_network_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mobile_network_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private updateVoiceNetworksMenu()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportVoiceNetworks()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isRemoveVoiceNetworks(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "spr_voice_networks"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->getSprintExtension()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVoiceNetworksMenu: extension = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "wificalling"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f121d70

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    const v3, 0x7f121bb5

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_1
    const-string v3, "callingplus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f121bb4

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ConnectionsSettings;->getUNWFCIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ConnectionsSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xbbd

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500a6

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    iget-object v2, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->checkForKnoxCustomProKioskEnabledItems()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "simcard_management"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mSimCardMgr:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v9, "wifi_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const-string v9, "cmc_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcSettings:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isCMCAvailable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "cmc_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    new-instance v9, Lcom/samsung/android/settings/SecCmcModeEnabler;

    iget-object v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcSettings:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {v9, v8, v10}, Lcom/samsung/android/settings/SecCmcModeEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcModeEnabler:Lcom/samsung/android/settings/SecCmcModeEnabler;

    :goto_1
    new-instance v9, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {v9, v8, v10}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.nfc"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_3

    const-string v9, "nfc_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    const-string v9, "nfc_osaifukeitai_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_3
    sget-boolean v9, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    if-nez v9, :cond_5

    sget-boolean v9, Lcom/samsung/android/settings/ConnectionsSettings;->isFaver3:Z

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const-string v9, "nfc_osaifukeitai_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcJapanPreference:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const-string v9, "nfc_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    :goto_2
    const-string v9, "nfc_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v9, Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v11, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {v9, v8, v11}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const-string v9, "nfc_osaifukeitai_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :goto_3
    const/4 v9, 0x4

    invoke-static {v9}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v9

    if-nez v9, :cond_6

    iget-boolean v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    if-nez v9, :cond_6

    const-string/jumbo v9, "toggle_airplane"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    new-instance v9, Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    iget-object v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-direct {v9, v8, v10}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;)V

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    goto :goto_4

    :cond_6
    const-string v9, "mobile_network_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v9, :cond_7

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setDependency(Ljava/lang/String;)V

    :cond_7
    :goto_4
    iget-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v9, :cond_8

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v10, 0x7f1200dc

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    :cond_8
    const-string v9, "bluetooth_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v9, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {v9, v8, v10}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-nez v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "device_visibility_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v9, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    iget-object v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-direct {v9, v8, v10}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;-><init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V

    iput-object v9, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    goto :goto_5

    :cond_9
    const-string v9, "device_visibility_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :goto_5
    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isHideAdvancedCalling(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string/jumbo v9, "vzw_provision_volte"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportVoiceNetworks()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isRemoveVoiceNetworks(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    const-string/jumbo v9, "spr_voice_networks"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string/jumbo v9, "toggle_airplane"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_d
    if-eqz v2, :cond_e

    if-nez v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_e
    const-string v9, "mobile_network_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/ConnectionsUtils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v5, "mobile_network_settings"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_8

    :cond_10
    const-string v9, "CDMA"

    invoke-static {v9}, Lcom/samsung/android/settings/ConnectionsUtils;->isDuosModel(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "mobile_network_settings"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const-string v10, "gsm.sim.currentcardstatus"

    const-string v11, "9"

    invoke-static {v10, v6, v11}, Lcom/samsung/android/settings/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "gsm.sim.currentcardstatus"

    const-string v12, "9"

    invoke-static {v11, v5, v12}, Lcom/samsung/android/settings/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x3

    if-eq v13, v15, :cond_11

    if-eq v14, v15, :cond_11

    const-string v5, "mobile_network_settings"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_7

    :cond_11
    if-ne v14, v15, :cond_12

    goto :goto_6

    :cond_12
    move v5, v6

    :goto_6
    const-string/jumbo v15, "sim_id"

    invoke-virtual {v12, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_7
    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setIntent(Landroid/content/Intent;)V

    :cond_13
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez v7, :cond_14

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    const-string/jumbo v5, "simcard_management"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mSimCardMgr:Landroid/support/v7/preference/SecPreferenceScreen;

    const v9, 0x7f1217db

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :cond_16
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticOPENModel()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_18

    if-eqz v7, :cond_19

    :cond_18
    const-string v5, "kt_roaming_settings"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_19
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1a

    if-eqz v7, :cond_1b

    :cond_1a
    const-string v5, "global_roaming_settings"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportMptcp()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1d

    :cond_1c
    const-string v5, "avea_mptcp"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1d
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportMptcp()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    const-string v5, "ais_mptcp"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1f
    const-string/jumbo v5, "tethering_and_hotspot"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v5, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string v9, "connectivity"

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/ConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v10

    if-eqz v10, :cond_20

    iget-boolean v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    if-nez v10, :cond_20

    iget-object v10, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const v11, 0x7f1219fb

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setTitle(I)V

    :cond_20
    const-string v10, "persist.sys.tether_data"

    const/4 v11, -0x1

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "ConnectionsSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mTetheredData: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "ConnectionsSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cm.isTetheringSupported: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_21

    const-string v11, "AIO"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    :cond_21
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_22

    const-string v11, "ATT"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    goto :goto_9

    :cond_22
    iget-object v11, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    const-string v12, "no_config_tethering"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_23

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v11

    if-nez v11, :cond_23

    const-string/jumbo v6, "tethering_and_hotspot"

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_a

    :cond_23
    iget-object v11, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    const-string v12, "no_config_tethering"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    iget-object v11, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v11, v6}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    goto :goto_a

    :cond_24
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsingSPRTetheringConcept()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-static {v9}, Lcom/samsung/android/settings/ConnectionsUtils;->getSPRTetheringEnableStatus(Landroid/net/ConnectivityManager;)Z

    move-result v6

    if-nez v6, :cond_26

    const-string/jumbo v6, "tethering_and_hotspot"

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_a

    :cond_25
    :goto_9
    const-string/jumbo v6, "tethering_and_hotspot"

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_26
    :goto_a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v6

    if-eqz v6, :cond_27

    new-instance v6, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-direct {v6, v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNetworklockutils:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    :cond_27
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->pause()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcModeEnabler:Lcom/samsung/android/settings/SecCmcModeEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcModeEnabler:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->pause()V

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->disconnectEpdgManager()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEpdgObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNetworklockutils:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->unbindFromService(Landroid/content/Context;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile_network_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xbbd

    const/16 v2, 0xdde

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEnteranceLogging(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mSimCardMgr:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x58

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_1
    const-string v1, "data_usage_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->resume()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcModeEnabler:Lcom/samsung/android/settings/SecCmcModeEnabler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCmcModeEnabler:Lcom/samsung/android/settings/SecCmcModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecCmcModeEnabler;->resume()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "device_visibility_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)Z

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->resume()V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "check_epdg_connect"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEpdgObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cmc_activation_intermediate"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->getEpdgManager(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateVoiceNetworksMenu()V

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateMobileNetworkMenu()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNetworklockutils:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->getSPROemSimLock(Landroid/content/Context;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "vowifi_menu_enable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->setLinkedDataView()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiEnabler;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStop()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->stop()V

    :cond_0
    return-void
.end method
