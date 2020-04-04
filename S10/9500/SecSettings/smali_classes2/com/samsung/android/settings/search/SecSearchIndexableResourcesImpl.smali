.class public Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;
.super Ljava/lang/Object;
.source "SecSearchIndexableResourcesImpl.java"

# interfaces
.implements Lcom/android/settings/search/SearchIndexableResources;


# instance fields
.field private final sProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    const-class v0, Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/TetherSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/AirplaneModeSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    :goto_0
    const-class v0, Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/ethernet/EthernetSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/DomesticSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecVolumeSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecVibrationIntensitySettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecSoundAdvancedSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecSoundEffectSoundController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/display/ScreenZoomSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/lockscreen/DualClockSetting;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/accessories/DockSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/ResetNetwork;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/deviceinfo/Status;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/LegalSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/DefaultAppSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/assist/ManageAssist;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/SpecialAccessSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/RunningServices;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/development/qstile/DevelopmentTileConfigFragment;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/webview/WebViewAppPicker;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->addIndex(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method addIndex(Ljava/lang/Class;)V
    .locals 3

    const-string v0, "SecSearchIndexableResourcesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIndex: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/search/SecIndexable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/settings/search/SecIndexable;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/android/settings/search/Indexable;

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    return-object v0
.end method
