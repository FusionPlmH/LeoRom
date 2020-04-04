.class public Lcom/samsung/android/knox/SemPersonaManager;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;,
        Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;,
        Lcom/samsung/android/knox/SemPersonaManager$AppType;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final ACTION_CHANGE_CREDENTIAL_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

.field public static final ACTION_CONFIRM_PROFILE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "com.samsung.android.knox.COMFIRM_CREDENTIAL"

.field public static final ACTION_LOCKDOWN_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.LOCKDOWN_SCREEN"

.field public static final ACTION_LOCK_SCREEN_STATE_CHANGED:Ljava/lang/String; = "com.sec.knox.keyguard.show"

.field private static final ACTION_SWITCH_PROFILE:Ljava/lang/String; = "com.samsung.android.knox.ACTION_SWITCH_PROFILE"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final B2C_FILE_SHARE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.fileshare.B2CShareViaActivity"

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field public static final BRIDGE_COMPONENT1:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

.field public static final BRIDGE_COMPONENT2:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity2"

.field public static final BRIDGE_PKG:Ljava/lang/String; = "com.sec.knox.bridge"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final CONTAINER_AGENT_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containeragent.KnoxDeviceAdminReceiver"

.field public static final CONTAINER_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final CONTAINER_COM_TYPE:I = 0x3

.field public static final CONTAINER_CORE_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

.field public static final CONTAINER_CORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final CONTAINER_DESKTOP_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containerdesktop"

.field public static final CONTAINER_LWC_TYPE:I = 0x2

.field public static final CONTAINER_TYPE_CONTAINER_ONLY:I = 0x6

.field public static final CONTAINER_TYPE_LEGACY:I = 0x5

.field public static final CONTAINER_TYPE_MY_KNOX:I = 0x1

.field public static final CONTAINER_TYPE_NONE:I = 0x0

.field public static final CONTAINER_TYPE_PREMIUM:I = 0x4

.field public static final CONTAINER_TYPE_PRIME:I = 0x3

.field public static final CONTAINER_TYPE_SECURE_FOLDER:I = 0x2

.field public static final CUSTOM_BADGE_ICON:Ljava/lang/String; = "custom-badge-icon"

.field public static final CUSTOM_CONTAINER_ICON:Ljava/lang/String; = "custom-container-icon"

.field public static final CUSTOM_NAME_ICON:Ljava/lang/String; = "custom-name-icon"

.field private static final DEBUG:Z

.field public static DEFAULT_KNOX_NAME:Ljava/lang/String; = null

.field public static final DEFAULT_SDP_ACTIVATION_TIME:I = 0x1388

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_EC_MAX_PERSONA_LIMIT_REACHED:I = -0x3f7

.field public static final ERROR_CREATE_PERSONA_EMERGENCY_MODE_FAILED:I = -0x407

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_GENERATE_CMK_FAILED:I = -0x40a

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_RUNTIME_PERMISSION_GRANT:I = -0x40b

.field public static final ERROR_CREATE_PERSONA_SECURE_FOLDER_MAX_PERSONA_LIMIT_REACHED:I = -0x3f5

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SUB_USER_FAILED:I = -0x403

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_CREATE_PERSONA_TIMA_PWD_KEY_FAILED:I = -0x409

.field public static final ERROR_CREATE_PERSONA_USER_INFO_INVALID:I = -0x408

.field public static final ERROR_INVAILD_CONTAINER_ID:I = -0x515

.field public static final ERROR_NO_PERSONA_SERVICE:I = -0x514

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field private static final EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_DUAL_DAR:I = 0x6000

.field public static final FLAG_DUAL_DAR_CUSTOM_CRYPTO:I = 0x4000

.field public static final FLAG_DUAL_DAR_SAMSUNG_CRYPTO:I = 0x2000

.field public static final FLAG_EC_ENABLED:I = 0x10000

.field public static final FLAG_HOME_KEY_INPUT:I = 0x8

.field public static final FLAG_RESET_KNOX_KEYGUARD:I = 0x1

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FLAG_SHOW_KNOX_KEYGUARD:I = 0x0

.field public static final FOLDERCONTAINER_PKG_NAME:Ljava/lang/String; = "com.sec.knox.foldercontainer"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final HOME_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-home-screen-wallpaper"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE1:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile1"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE2:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile2"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE3:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile3"

.field public static final ICON_CLASS_FOR_SECUREFOLDER_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile4"

.field public static final ICON_CLASS_GLOBAL_SETTINGS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.GlobalSettingsIcon"

.field public static final ICON_CLASS_PHONE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

.field public static final ICON_CLASS_SECUREFOLDER_FILE_STORE:Ljava/lang/String; = "switcher.B2CStoreFilesActivity"

.field public static final ICON_CLASS_SMS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SMSIcon"

.field public static final ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToPersonalIcon"

.field public static final ICON_CLASS_SWITCH_TO_KIOSK:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKiosk"

.field public static final ICON_CLASS_SWITCH_TO_KNOX_I:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

.field public static final ICON_CLASS_SWITCH_TO_KNOX_II:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

.field public static final ICON_CLASS_SWITCH_TO_KNOX_III:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

.field public static final IMMEDIATELY_LOCK_TIMEOUT:I = -0x2

.field public static final INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final INTENT_ACTION_CREATE_BBC_CONTAINER:Ljava/lang/String; = "com.sec.knox.action.CREATE_BBC_CONTAINER"

.field public static final INTENT_ACTION_CREATE_SECURE_FOLDER:Ljava/lang/String; = "com.sec.knox.action.CREATE_SECURE_FOLDER"

.field public static final INTENT_ACTION_KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL"

.field public static final INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final INTENT_ACTION_NFC_POLICY:Ljava/lang/String; = "com.samsung.android.knox.nfc.policy"

.field public static final INTENT_ACTION_OBSERVER:Ljava/lang/String; = "com.sec.knox.container.action.observer"

.field public static final INTENT_ACTION_SDP_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

.field public static final INTENT_CATEGORY_OBSERVER_CONTAINERID:Ljava/lang/String; = "com.sec.knox.container.category.observer.containerid"

.field public static final INTENT_CATEGORY_OBSERVER_ONATTRIBUTECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onattributechange"

.field public static final INTENT_CATEGORY_OBSERVER_ONKEYGUARDSTATECHANGED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onkeyguardstatechanged"

.field public static final INTENT_CATEGORY_OBSERVER_ONPERSONASWITCH:Ljava/lang/String; = "com.sec.knox.container.category.observer.onpersonaswitch"

.field public static final INTENT_CATEGORY_OBSERVER_ONSESSIONEXPIRED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onsessionexpired"

.field public static final INTENT_CATEGORY_OBSERVER_ONSTATECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onstatechange"

.field public static final INTENT_CONTAINER_NEED_RESTART:Ljava/lang/String; = "com.sec.knox.container.need.restart"

.field public static final INTENT_EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE_STATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute.state"

.field public static final INTENT_EXTRA_OBSERVER_KEYGUARDSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.keyguardstate"

.field public static final INTENT_EXTRA_OBSERVER_NEWSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.newstate"

.field public static final INTENT_EXTRA_OBSERVER_PREVIOUSSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.previousstate"

.field public static final INTENT_EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final INTENT_EXTRA_SOURCE_SBA:I = 0x1

.field public static final INTENT_EXTRA_SOURCE_SBA_BLACKLIST:I = 0x2

.field public static final INTENT_EXTRA_SOURCE_WHITELIST:I = 0x0

.field public static final INTENT_EXTRA_UPDATED_VALUE:Ljava/lang/String; = "com.sec.knox.container.extra.updated.value"

.field public static final INTENT_PERMISSION_LAUNCH_INFO:Ljava/lang/String; = "com.samsung.container.LAUNCH_INFO"

.field public static final INTENT_PERMISSION_OBSERVER:Ljava/lang/String; = "com.samsung.container.OBSERVER"

.field public static final INTENT_PERMISSION_RECEIVE_KNOX_APPS_UPDATE:Ljava/lang/String; = "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field public static final KNOX_SETTINGS_CLASS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

.field public static final KNOX_SETTINGS_SYNC_PREFIX:Ljava/lang/String; = "knox_container_sync_"

.field public static final KNOX_SWITCH1_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxI"

.field public static final KNOX_SWITCH2_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxII"

.field public static final KNOX_SWITCHER_PKG:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final KNOX_SWITCH_1_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxI"

.field public static final KNOX_SWITCH_2_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxII"

.field public static final KNOX_SWITCH_COMPONENT1:Ljava/lang/String; = "com.samsung.android.knox.containeragent/com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

.field public static final KNOX_SWITCH_COMPONENT2:Ljava/lang/String; = "com.samsung.android.knox.containeragent/com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

.field public static final LOCK_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-lock-screen-wallpaper"

.field public static final MANAGED_PROVISIONING_PACKAGE:Ljava/lang/String; = "com.android.managedprovisioning"

.field public static final MAX_ACTIVE_BUTTONS_ZERO_FOR_KIOSK:I = 0xa

.field public static final MAX_BBC_ID:I = 0xc7

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field public static final MAX_PERSONA_ALLOWED_SECURE_FOLDER:I = 0x1

.field public static final MAX_PERSONA_ID:I = 0xc8

.field public static final MAX_SECURE_FOLDER_ID:I = 0xa0

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_BBC_ID:I = 0xc3

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MIN_SECURE_FOLDER_ID:I = 0x96

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field public static final MOVE_TO_CONTAINER_TYPE_ENTERPRISE_CONTAINER:I = 0x3e8

.field public static final MOVE_TO_CONTAINER_TYPE_KNOX:I = 0x3e9

.field public static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I = 0x3ea

.field public static final MOVE_TO_PERSONAL_TYPE_KNOX:I = 0x3ec

.field public static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I = 0x3eb

.field private static final NOTIFICATION_BADGE_COLORS:[I

.field public static final NOTIFICATION_LIST_FOR_KIOSK:Ljava/lang/String; = "Wifi;MultiWindow;Location;SilentMode;AutoRotate;Bluetooth;NetworkBooster;MobileData;AirplaneMode;Nfc;SmartStay;PowerSaving;TorchLight;WiFiHotspot;custom(com.samsung.android.lool/com.samsung.android.sm.battery.ui.mode.BatteryModeTile);Hotspot;custom(com.android.settings/com.samsung.android.settings.qstile.NightThemeTiles);"

.field public static final NOTIFICATION_LIST_FOR_KIOSK_M:Ljava/lang/String; = "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc,custom(com.android.nfc/com.samsung.android.nfc.quicktile.NfcTile),custom(com.android.settings/com.samsung.android.settings.qstile.PowerSavingTile),BlueLightFilter,custom(com.samsung.android.lool/com.samsung.android.sm.battery.ui.mode.BatteryModeTile),Hotspot,custom(com.android.settings/com.samsung.android.settings.qstile.NightThemeTiles)"

.field public static final PERMISSION_KEYGUARD_ACCESS:Ljava/lang/String; = "com.sec.knox.container.keyguard.ACCESS"

.field public static final PERMISSION_PERIPHERAL_POLICY_UPDATE:Ljava/lang/String; = "com.sec.knox.container.peripheral.POLICY_UPDATE"

.field public static final PERSONA_CACHE_RESET_ON_REBOOT:Ljava/lang/String; = "knoxid.reset_on_reboot"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field public static final PROPERTY_DEVICE_OWNER_EXISTS:Ljava/lang/String; = "persist.sys.knox.device_owner"

.field private static final PROPERTY_KNOX_CONTAINER_INFO:Ljava/lang/String; = "persist.sys.knox.userinfo"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field public static SECOND_KNOX_NAME:Ljava/lang/String; = null

.field public static final SECUREFOLDER_ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.knox.securefolder.switcher.SwitchToPersonalIcon"

.field public static final SECUREFOLDER_PACKAGE:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field public static SECURE_FOLDER_NAME:Ljava/lang/String; = null

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field public static final TIMA_VALIDATION_SUCCESS:I = 0x0

.field private static final UNLAUNCHABLE_REASON_PWD_EXPIRED:I = 0x1

.field public static final WHEN_PHONE_RESTART_LOCK_TIMEOUT:I = -0x1

.field public static final WHEN_SCREEN_TURNS_OFF_LOCK_TIMEOUT:I

.field private static _instance:Lcom/samsung/android/knox/ISemPersonaManager;

.field public static final approvedPackages:[Ljava/lang/String;

.field public static final chinaStorePackages:[Ljava/lang/String;

.field public static final excludedPackages:[Ljava/lang/String;

.field public static final excludedPackagesForMyKnox:[Ljava/lang/String;

.field private static mKeyguardManager:Landroid/app/KeyguardManager;

.field private static mKnoxInfo:Landroid/os/Bundle;

.field private static mMoveToInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static m_bIsKnoxInfoInitialized:Z

.field public static final mdmPackages:[Ljava/lang/String;

.field private static pathstrategy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private static personaPolicyMgr:Landroid/os/PersonaPolicyManager;

.field private static rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    const-string v0, "KNOX"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    const-string v0, "KNOX II"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    const-string/jumbo v0, "secure-folder"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    const-string v0, "SemPersonaManager"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mMoveToInfo:Ljava/util/ArrayList;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.sec.hearingadjust"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/samsung/android/knox/SemPersonaManager;->NOTIFICATION_BADGE_COLORS:[I

    const-string v3, "com.samsung.android.voc"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackagesForMyKnox:[Ljava/lang/String;

    const-string v3, "com.baidu.appsearch"

    const-string v4, "com.qihoo.appstore"

    const-string v5, "com.tencent.android.qqdownloader"

    const-string v6, "com.wandoujia.phoenix2"

    const-string v7, "com.dragon.android.pandaspace"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/knox/SemPersonaManager;->chinaStorePackages:[Ljava/lang/String;

    const/16 v3, 0x74

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v5, "com.android.mms"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "com.android.settings"

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "com.sec.knox.knoxsetupwizardclient"

    const/4 v5, 0x2

    aput-object v1, v3, v5

    const-string v1, "com.sec.chaton"

    const/4 v5, 0x3

    aput-object v1, v3, v5

    const-string v1, "com.sec.pcw"

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.knox.containeragent"

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.knox.containercore"

    const/4 v2, 0x6

    aput-object v1, v3, v2

    const-string v1, "com.sec.watchon.phone"

    const/4 v2, 0x7

    aput-object v1, v3, v2

    const-string v1, "com.sec.android.automotive.drivelink"

    const/16 v2, 0x8

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.app.lifetimes"

    const/16 v2, 0x9

    aput-object v1, v3, v2

    const-string v1, "com.sec.android.app.shealth"

    const/16 v2, 0xa

    aput-object v1, v3, v2

    const-string v1, "com.sec.android.app.voicenote"

    const/16 v2, 0xb

    aput-object v1, v3, v2

    const-string v1, "com.sec.android.app.kidshome"

    const/16 v2, 0xc

    aput-object v1, v3, v2

    const-string v1, "com.sec.knox.app.container"

    const/16 v2, 0xd

    aput-object v1, v3, v2

    const-string v1, "com.sec.knox.containeragent"

    const/16 v2, 0xe

    aput-object v1, v3, v2

    const-string v1, "com.sec.android.app.samsungapps"

    const/16 v2, 0xf

    aput-object v1, v3, v2

    const-string/jumbo v1, "tv.peel.smartremote"

    const/16 v2, 0x10

    aput-object v1, v3, v2

    const-string v1, "com.skt.prod.phonebook"

    const/16 v2, 0x11

    aput-object v1, v3, v2

    const-string v1, "com.sec.enterprise.knox.express"

    const/16 v2, 0x12

    aput-object v1, v3, v2

    const-string v1, "com.google.android.apps.walletnfcrel"

    const/16 v2, 0x13

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.voc"

    const/16 v2, 0x14

    aput-object v1, v3, v2

    const-string v1, "com.skt.tservice"

    const/16 v2, 0x15

    aput-object v1, v3, v2

    const-string v1, "com.sktelecom.minit"

    const/16 v2, 0x16

    aput-object v1, v3, v2

    const-string v1, "com.skt.prod.dialer"

    const/16 v2, 0x17

    aput-object v1, v3, v2

    const-string v1, "com.skt.skaf.A000VODBOX"

    const/16 v2, 0x18

    aput-object v1, v3, v2

    const-string v1, "com.skt.skaf.OA00050017"

    const/16 v2, 0x19

    aput-object v1, v3, v2

    const-string v1, "com.skt.skaf.A000Z00040"

    const/16 v2, 0x1a

    aput-object v1, v3, v2

    const-string v1, "com.skt.skaf.OA00026910"

    const/16 v2, 0x1b

    aput-object v1, v3, v2

    const-string v1, "com.skt.skaf.l001mtm091"

    const/16 v2, 0x1c

    aput-object v1, v3, v2

    const-string v1, "com.skt.prod.phonebook"

    const/16 v2, 0x1d

    aput-object v1, v3, v2

    const-string v1, "com.skt.smartbill"

    const/16 v2, 0x1e

    aput-object v1, v3, v2

    const-string v1, "com.skt.tbagplus"

    const/16 v2, 0x1f

    aput-object v1, v3, v2

    const-string v1, "com.sktelecom.tguard"

    const/16 v2, 0x20

    aput-object v1, v3, v2

    const-string v1, "com.skt.tdatacoupon"

    const/16 v2, 0x21

    aput-object v1, v3, v2

    const-string v1, "com.skb.btvmobile"

    const/16 v2, 0x22

    aput-object v1, v3, v2

    const-string v1, "com.iloen.melon"

    const/16 v2, 0x23

    aput-object v1, v3, v2

    const-string v1, "com.nate.android.portalmini"

    const/16 v2, 0x24

    aput-object v1, v3, v2

    const-string v1, "com.tms"

    const/16 v2, 0x25

    aput-object v1, v3, v2

    const-string v1, "com.skmc.okcashbag.home_google"

    const/16 v2, 0x26

    aput-object v1, v3, v2

    const-string v1, "com.elevenst"

    const/16 v2, 0x27

    aput-object v1, v3, v2

    const-string v1, "com.elevenst.deals"

    const/16 v2, 0x28

    aput-object v1, v3, v2

    const-string v1, "com.moent.vas"

    const/16 v2, 0x29

    aput-object v1, v3, v2

    const-string v1, "com.skmnc.gifticon"

    const/16 v2, 0x2a

    aput-object v1, v3, v2

    const-string v1, "com.skt.tmaphot"

    const/16 v2, 0x2b

    aput-object v1, v3, v2

    const-string v1, "com.skplanet.mbuzzer"

    const/16 v2, 0x2c

    aput-object v1, v3, v2

    const-string v1, "com.skt.tgift"

    const/16 v2, 0x2d

    aput-object v1, v3, v2

    const-string v1, "com.sktelecom.tsmartpay"

    const/16 v2, 0x2e

    aput-object v1, v3, v2

    const-string v1, "com.cyworld.camera"

    const/16 v2, 0x2f

    aput-object v1, v3, v2

    const-string v1, "com.kt.android.showtouch"

    const/16 v2, 0x30

    aput-object v1, v3, v2

    const-string v1, "com.kt.wificm"

    const/16 v2, 0x31

    aput-object v1, v3, v2

    const-string v1, "com.ktshow.cs"

    const/16 v2, 0x32

    aput-object v1, v3, v2

    const-string v1, "com.kt.olleh.storefront"

    const/16 v2, 0x33

    aput-object v1, v3, v2

    const-string v1, "com.kth.kshop"

    const/16 v2, 0x34

    aput-object v1, v3, v2

    const-string v1, "com.show.greenbill"

    const/16 v2, 0x35

    aput-object v1, v3, v2

    const-string v1, "com.estsoft.alyac"

    const/16 v2, 0x36

    aput-object v1, v3, v2

    const-string v1, "com.kt.accessory"

    const/16 v2, 0x37

    aput-object v1, v3, v2

    const-string/jumbo v1, "kt.navi"

    const/16 v2, 0x38

    aput-object v1, v3, v2

    const-string v1, "com.olleh.android.oc2"

    const/16 v2, 0x39

    aput-object v1, v3, v2

    const-string v1, "com.kt.ollehfamilybox"

    const/16 v2, 0x3a

    aput-object v1, v3, v2

    const-string v1, "com.kt.otv"

    const/16 v2, 0x3b

    aput-object v1, v3, v2

    const-string v1, "com.olleh.webtoon"

    const/16 v2, 0x3c

    aput-object v1, v3, v2

    const-string v1, "com.kt.shodoc"

    const/16 v2, 0x3d

    aput-object v1, v3, v2

    const-string v1, "com.ktmusic.geniemusic"

    const/16 v2, 0x3e

    aput-object v1, v3, v2

    const-string v1, "com.ktcs.whowho"

    const/16 v2, 0x3f

    aput-object v1, v3, v2

    const-string v1, "com.kt.apptong"

    const/16 v2, 0x40

    aput-object v1, v3, v2

    const-string v1, "com.mtelo.ktAPP"

    const/16 v2, 0x41

    aput-object v1, v3, v2

    const-string v1, "com.kt.bellringolleh"

    const/16 v2, 0x42

    aput-object v1, v3, v2

    const-string v1, "com.kt.mpay"

    const/16 v2, 0x43

    aput-object v1, v3, v2

    const-string v1, "com.kt.aljjapackplus"

    const/16 v2, 0x44

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.appstore"

    const/16 v2, 0x45

    aput-object v1, v3, v2

    const-string v1, "com.uplus.onphone"

    const/16 v2, 0x46

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.mobile.cs"

    const/16 v2, 0x47

    aput-object v1, v3, v2

    const-string/jumbo v1, "lg.uplusbox"

    const/16 v2, 0x48

    aput-object v1, v3, v2

    const-string v1, "com.lgu.app.appbundle"

    const/16 v2, 0x49

    aput-object v1, v3, v2

    const-string/jumbo v1, "lgt.call"

    const/16 v2, 0x4a

    aput-object v1, v3, v2

    const-string v1, "com.mnet.app"

    const/16 v2, 0x4b

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.usimsvcm"

    const/16 v2, 0x4c

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.navi"

    const/16 v2, 0x4d

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.paynow"

    const/16 v2, 0x4e

    aput-object v1, v3, v2

    const-string v1, "com.uplus.movielte"

    const/16 v2, 0x4f

    aput-object v1, v3, v2

    const-string v1, "com.estsoft.alyac"

    const/16 v2, 0x50

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.ltealive"

    const/16 v2, 0x51

    aput-object v1, v3, v2

    const-string v1, "com.uplus.ipagent"

    const/16 v2, 0x52

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.homeiot"

    const/16 v2, 0x53

    aput-object v1, v3, v2

    const-string v1, "com.uplus.baseballhdtv"

    const/16 v2, 0x54

    aput-object v1, v3, v2

    const-string v1, "com.lgu"

    const/16 v2, 0x55

    aput-object v1, v3, v2

    const-string v1, "com.lgt.tmoney"

    const/16 v2, 0x56

    aput-object v1, v3, v2

    const-string v1, "com.lguplus.smartotp"

    const/16 v2, 0x57

    aput-object v1, v3, v2

    const-string/jumbo v1, "net.daum.android.map"

    const/16 v2, 0x58

    aput-object v1, v3, v2

    const-string v1, "com.sds.mms.ui"

    const/16 v2, 0x59

    aput-object v1, v3, v2

    const-string v1, "com.navitime.local.naviwalk"

    const/16 v2, 0x5a

    aput-object v1, v3, v2

    const-string/jumbo v1, "jp.id_credit_sp.android"

    const/16 v2, 0x5b

    aput-object v1, v3, v2

    const-string/jumbo v1, "jp.id_credit_sp.android.devappli"

    const/16 v2, 0x5c

    aput-object v1, v3, v2

    const-string v1, "com.nttdocomo.android.dpoint"

    const/16 v2, 0x5d

    aput-object v1, v3, v2

    const-string v1, "com.nttdocomo.android.voicetranslation"

    const/16 v2, 0x5e

    aput-object v1, v3, v2

    const-string v1, "com.nttdocomo.android.moneyrecord"

    const/16 v2, 0x5f

    aput-object v1, v3, v2

    const-string v1, "com.kddi.android.videopass"

    const/16 v2, 0x60

    aput-object v1, v3, v2

    const-string v1, "com.nttdocomo.android.photocollection"

    const/16 v2, 0x61

    aput-object v1, v3, v2

    const-string v1, "com.android.systemui"

    const/16 v2, 0x62

    aput-object v1, v3, v2

    const-string v1, "com.sec.sprint.wfcstub"

    const/16 v2, 0x63

    aput-object v1, v3, v2

    const-string v1, "com.sec.sprint.wfc"

    const/16 v2, 0x64

    aput-object v1, v3, v2

    const-string v1, "com.oculus.horizon"

    const/16 v2, 0x65

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.app.watchmanager"

    const/16 v2, 0x66

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.spay"

    const/16 v2, 0x67

    aput-object v1, v3, v2

    const-string v1, "com.sec.android.easyMover"

    const/16 v2, 0x68

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.wms"

    const/16 v2, 0x69

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.gear360manager"

    const/16 v2, 0x6a

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.samsunggear360manager"

    const/16 v2, 0x6b

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.video360"

    const/16 v2, 0x6c

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.app.vrsetupwizard"

    const/16 v2, 0x6d

    aput-object v1, v3, v2

    const-string v1, "com.oculus.horizon"

    const/16 v2, 0x6e

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.game.gamehome"

    const/16 v2, 0x6f

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.globalroaming"

    const/16 v2, 0x70

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.visionintelligence"

    const/16 v2, 0x71

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.oneconnect"

    const/16 v2, 0x72

    aput-object v1, v3, v2

    const-string v1, "com.samsung.android.knox.analytics.uploader"

    const/16 v2, 0x73

    aput-object v1, v3, v2

    sput-object v3, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    const-string v5, "com.android.chrome"

    const-string v6, "com.google.android.apps"

    const-string v7, "com.google.android.apps.plus"

    const-string v8, "com.google.android.apps.docs"

    const-string v9, "com.google.android.gm"

    const-string v10, "com.google.android.googlequicksearchbox"

    const-string v11, "com.google.android.talk"

    const-string v12, "com.google.android.apps.maps"

    const-string v13, "com.google.android.apps.books"

    const-string v14, "com.google.android.play.games"

    const-string v15, "com.google.android.music"

    const-string v16, "com.google.android.videos"

    const-string v17, "com.google.android.apps.magazines"

    const-string v18, "com.google.android.youtube"

    const-string v19, "com.samsung.android.app.memo"

    const-string v20, "com.sec.keystringscreen"

    const-string v21, "com.infraware.polarisoffice5"

    const-string v22, "com.microsoft.office.excel"

    const-string v23, "com.microsoft.office.powerpoint"

    const-string v24, "com.microsoft.office.word"

    const-string v25, "com.hancom.androidpc.viewer.launcher"

    const-string v26, "com.hancom.office.editor"

    const-string v27, "com.whatsapp"

    const-string v28, "com.tencent.mm"

    const-string v29, "com.facebook.katana"

    const-string v30, "com.facebook.orca"

    const-string v31, "com.instagram.android"

    const-string v32, "com.skype.raider"

    const-string v33, "com.microsoft.office.onenote"

    const-string v34, "com.microsoft.skydrive"

    const-string v35, "com.samsung.android.contacts"

    const-string v36, "com.sec.android.app.myfiles"

    const-string v37, "com.sec.android.gallery3d"

    const-string v38, "com.samsung.android.app.notes"

    const-string v39, "com.samsung.android.calendar"

    const-string v40, "com.samsung.android.email.provider"

    const-string v41, "com.sec.android.app.camera"

    const-string v42, "com.sec.android.app.sbrowser"

    filled-new-array/range {v5 .. v42}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    const-string v5, "com.samsung.mdmtest1"

    const-string v6, "com.samsung.mdmtest2"

    const-string v7, "com.samsung.edmtest"

    const-string v8, "com.samsung.edmtest1"

    const-string v9, "com.samsung.edmtest2"

    const-string v10, "com.samsung.containertool"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    return-void

    nop

    :array_0
    .array-data 4
        0x1060300
        0x1060301
        0x1060302
        0x1060026
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static checkContainerType(I)Z
    .locals 10

    const-string v0, ":"

    const-string v1, ","

    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-object v8, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    and-int v9, p0, v8

    if-lez v9, :cond_0

    return v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private static checkContainerType(II)Z
    .locals 11

    const-string v0, ":"

    const-string v1, ","

    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v7, p0, :cond_0

    and-int v10, p1, v9

    if-lez v10, :cond_0

    return v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static clearAttributes(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->clearAttributes(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "clearAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createChangeCredentialIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createConfirmProfileCredentialIntent(I)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "KnoxKeyguardEventFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.containeragent"

    const-string v3, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public static createLockdownIntent(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSwitchProfileIntent(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.ACTION_SWITCH_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static drawKnoxAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x55

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v3}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    nop

    :try_start_0
    const-string v1, "RequestProxy"

    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0, v2, p1}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "MoveTo"

    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "action"

    const-string/jumbo v3, "moveToContactPreProcess"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modifying the action in bundle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "action"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, p0, v3, p1}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    :cond_3
    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "please add proper log here"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method public static getAdminComponentName(I)Landroid/content/ComponentName;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAdminComponentName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAgentAdminReceiver()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.samsung.android.knox.containeragent.KnoxDeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttributes(I)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAttributes(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getBBCBadgeIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "com.samsung.android.knoxenabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput v4, v6, Landroid/util/TypedValue;->density:I

    const/4 v4, 0x0

    invoke-static {v4, v6, v5, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v7, "EDM:ApplicationIcon got from EDM database "

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EDM: Get Icon EX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getBbcEnabled()I
    .locals 2

    const-string/jumbo v0, "sys.knox.bbcid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x2710

    return v1
.end method

.method private getContainerInfo()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ":"

    const-string v1, ","

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "persist.sys.knox.userinfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "API test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getContainerInfo: value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_1

    aget-object v7, v4, v6

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    aget-object v8, v7, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "com.samsung.knox.securefolder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v2, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.samsung.android.knox.containeragent"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    :goto_0
    const/4 v3, 0x0

    const-string v4, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4
    const-string v4, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const-string v4, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v3, 0x20000

    goto :goto_4

    :cond_8
    return-object v1

    :cond_9
    :goto_1
    const/high16 v3, 0x800000

    goto :goto_4

    :cond_a
    :goto_2
    const/high16 v3, 0x200000

    goto :goto_4

    :cond_b
    :goto_3
    const/high16 v3, 0x100000

    :goto_4
    const/4 v4, 0x0

    invoke-interface {v0, v4, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v8, v3

    if-ne v8, v3, :cond_18

    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isMyKnoxContainer(I)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v4, "My Knox"

    move-object v2, v4

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v6

    const/high16 v8, 0x800000

    const/high16 v9, 0x200000

    const/high16 v10, 0x100000

    if-nez v6, :cond_f

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v6

    if-nez v6, :cond_f

    if-ne v3, v10, :cond_d

    invoke-interface {v0, v7, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto/16 :goto_9

    :cond_d
    if-ne v3, v9, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v7, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " II"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto/16 :goto_9

    :cond_e
    if-ne v3, v8, :cond_17

    invoke-interface {v0, v7, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_9

    :cond_f
    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v6}, Lcom/samsung/android/knox/ISemPersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_9

    :cond_10
    if-eq v3, v10, :cond_16

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_8

    :cond_11
    if-eq v3, v9, :cond_15

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_7

    :cond_12
    if-eq v3, v8, :cond_14

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_6

    :cond_13
    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_17

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_9

    :cond_14
    :goto_6
    invoke-interface {v0, v7, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_9

    :cond_15
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v7, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " II"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_9

    :cond_16
    :goto_8
    invoke-interface {v0, v7, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :cond_17
    :goto_9
    return-object v2

    :cond_18
    goto/16 :goto_5

    :cond_19
    nop

    goto :goto_a

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to call Persona service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_a
    return-object v1
.end method

.method public static getCustomBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "custom-badge-icon"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    array-length v6, v0

    invoke-static {v0, v1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCustomBadgeForCustomContainer/getUserInfo is null, user id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080c39

    invoke-virtual {v4, v5, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_3
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108040f

    invoke-virtual {v4, v5, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108040a

    invoke-virtual {v4, v5, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_5
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080c3a

    invoke-virtual {v4, v5, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_7
    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108040d

    invoke-virtual {v4, v5, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v1, "com.samsung.knox.securefolder"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "ic_sf_badge_bottom"

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, p1, v4}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080569

    invoke-virtual {v5, v6, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_9
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getCustomResource(ILjava/lang/String;)[B
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->readECFile(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getCustomResource failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getCustomResource failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static getDrawableCustomBadge(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "custom-badge-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrawableCustomBadge failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getFloatingPackageName failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static getKnoxAdminReceiver()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containercore"

    const-string v2, "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getKnoxBadge(I)[B
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxBadge(I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxBadge failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-boolean v2, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 2.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_1
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_2
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_3
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_4
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_5
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_6
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_7
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_8
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_9
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_a
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_b
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_c
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_d
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_e

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_e
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_f

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_f
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_10

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_10
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_11

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_11
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_12

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_12
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_13

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_13
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_14

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_14
    const-string v2, "19"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_17

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_15
    const-string v2, "1.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_16
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    :cond_17
    :goto_0
    sget-boolean v2, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v2, :cond_18

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxContainerVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-object v1
.end method

.method public static getKnoxCorePackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.knox.containercore"

    return-object v0
.end method

.method public static getKnoxIcon(I)[B
    .locals 6

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p0, :cond_1

    move-object v0, v4

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not getUserInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.samsung.knox.securefolder"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    :cond_5
    const-string v2, "com.samsung.android.knox.containeragent"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getKnoxIcon failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "2.0"

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1.0"

    move-object v1, v2

    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "isSupportCallerInfo"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "failed to putString to mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    :cond_0
    :try_start_0
    const-string v0, "2.0"

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "isSupportMoveTo"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get knox info for APP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    :try_start_1
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    const/4 v3, 0x1

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKnoxMode"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "getService() returns null, set isBlockExternalSD to true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockBluetoothMenu"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isSamsungAccountBlocked"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isBlockExternalSD"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKioskModeEnabled"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKioskModeEnabled"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sput-boolean v3, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    :cond_6
    const-string/jumbo v2, "true"

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isKioskModeEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    invoke-static {p0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    :cond_7
    const-string/jumbo v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKnoxModeActive"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKnoxModeActive"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    const-string/jumbo v2, "isKioskModeEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKioskModeEnabled"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isKioskModeEnabled"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    const-string/jumbo v2, "isSecureFolderExist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_c

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    const-string/jumbo v2, "isSmartSwitchBnRAvailable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x2000000

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isMyknoxExist"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isMyknoxExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_f

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_6
    const-string v2, "getContainerLabel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "getContainerLabel"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v2, "getContainerAppIcon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v2

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "getContainerAppIcon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_12
    const-string v2, "getActiveUserId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_13

    :try_start_2
    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v5

    goto :goto_7

    :catch_0
    move-exception v5

    :try_start_3
    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to get focused Knox id"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_7
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getActiveUserId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_14
    const-string v2, "getAllPersonaInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getContainerCount"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1b

    :try_start_4
    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1a

    sget-object v8, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v9, "getContainerCount"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v8, v4

    move-object v4, v2

    move v2, v7

    :goto_8
    :try_start_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_19

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v10

    move-object v4, v10

    invoke-static {p0, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v11

    if-eqz v11, :cond_15

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerOrder_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    :cond_15
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v11

    if-eqz v11, :cond_16

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerOrder_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    :cond_16
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v11

    if-eqz v11, :cond_18

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerOrder_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    :cond_17
    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v12, "getUserInfo returns null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerOrder_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    :goto_9
    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerId_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerLabel_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerAppIcon_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isPremiumContainer_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isSecureFolder_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v11, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isLegacyClId_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_19
    move-object v2, v4

    move-object v4, v8

    goto :goto_a

    :catch_1
    move-exception v2

    goto :goto_b

    :cond_1a
    :goto_a
    goto :goto_c

    :catch_2
    move-exception v3

    move-object v8, v4

    move-object v4, v2

    move-object v2, v3

    :goto_b
    :try_start_6
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "failed to get container info:"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getContainerCount"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    :goto_c
    const-string/jumbo v2, "isSupportSecureFolder"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportSecureFolder"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1c
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1d
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_d
    const-string/jumbo v2, "isSupportImpKeyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "isSupportImpKeyguard"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1f
    goto :goto_e

    :catch_3
    move-exception v2

    :try_start_7
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "failed to get mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public static getNotificationBadge(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "custom-badge-icon"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    array-length v8, v0

    invoke-static {v0, v3, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNotificationBadge/getUserInfo is null, user id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v7

    const v8, 0x1080a2d

    const v9, 0x1080a2e

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager;->NOTIFICATION_BADGE_COLORS:[I

    aget v2, v7, v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_4
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->NOTIFICATION_BADGE_COLORS:[I

    aget v2, v3, v4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_7
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->NOTIFICATION_BADGE_COLORS:[I

    const/4 v7, 0x2

    aget v2, v3, v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_8
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1080a10

    invoke-virtual {v3, v7, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->NOTIFICATION_BADGE_COLORS:[I

    const/4 v7, 0x3

    aget v2, v3, v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_9
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static getPathStrategy(I)Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;

    const-string v2, "bbcfileprovider"

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getPersonaCacheValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const-string v0, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, p1, :cond_4

    const/4 v3, 0x0

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    const-string v5, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    move-object v3, v5

    goto :goto_1

    :cond_2
    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    const-string v5, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    move-object v3, v5

    goto :goto_1

    :cond_3
    const-string v5, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    move-object v3, v5

    :goto_1
    const-string v5, "com.samsung.android.knox.containeragent"

    invoke-static {v5, v3, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_4
    goto :goto_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v2

    :cond_6
    :goto_2
    invoke-static {v1, v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method

.method private static getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "rcp"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getSecureFolderId(Landroid/content/Context;)I
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get SemPersonaManagerService in getSecureFolderId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x514

    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureFolder personaId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x20000

    invoke-static {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_1
    goto :goto_0

    :cond_2
    const/16 v2, -0x515

    return v2
.end method

.method public static getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getUserInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method public static hideMultiWindows(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->hideMultiWindows(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "hideMultiWindows failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static hideScrim()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->hideScrim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "hideScrim failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static isBBCContainer(I)Z
    .locals 1

    const/16 v0, 0xc3

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isContainerService(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAgentAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isContainerService(Landroid/content/Context;I)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x1482

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x1482

    if-ne v2, v4, :cond_0

    return v3

    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAgentAdminReceiver()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public static isDarDualEncrypted(I)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method public static isDarDualEncryptionEnabled(I)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    return v1
.end method

.method public static isDeviceOrProfileOwnerEnabled()Z
    .locals 3

    const-string/jumbo v0, "persist.sys.knox.device_owner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isDoEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "persist.sys.knox.device_owner"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDualDARCustomCrypto(I)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    return v1
.end method

.method public static isDualDARNativeCrypto(I)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    return v1
.end method

.method public static isExternalStorageEnabled(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isExternalStorageEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "isExternalStorageEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 1

    const/high16 v0, 0x8000000

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v0

    return v0
.end method

.method public static isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "switcher.B2CStoreFilesActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public static isKnoxId(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public static isKnoxProfileActivePasswordSufficientForParent(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isKnoxProfileActivePasswordSufficientForParent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isKnoxVersionSupported(I)Z
    .locals 2

    if-lez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v1

    if-lt v1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKnoxWindowExist(III)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxWindowExist(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isKnoxWindowExist failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLegacyClId(I)Z
    .locals 1

    const/high16 v0, 0x400000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method private static isMyKnoxContainer(I)Z
    .locals 6

    const-string v0, "com.samsung.knoxpb.mdm"

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "com.samsung.knoxpb.mdm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    return v5

    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5
.end method

.method public static isPkgAllowedToListenKnoxNoti(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v2

    if-nez v3, :cond_3

    const-string v3, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v2, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "com.samsung.permission.READ_KNOX_NOTIFICATION not granted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto :goto_0

    :cond_1
    sget-boolean v4, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "com.samsung.permission.READ_KNOX_NOTIFICATION granted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_5

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_5

    sget-boolean v3, Lcom/samsung/android/knox/SemPersonaManager;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Application under /system partition"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    nop

    return v1

    :catch_0
    move-exception v2

    return v1
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isPremiumContainer(I)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSamsungWorkspace(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSecureFolderId()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v1

    return v1
.end method

.method public static isSecureFolderId(I)Z
    .locals 1

    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method private isSecureFolderMetaDataEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.knox.securefolder"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "com.samsung.knox.securefolder.enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "please add proper log here"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-class v2, Landroid/os/PersonaPolicyManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/PersonaPolicyManager;

    const-string/jumbo v4, "persona_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    sput-object v3, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    const-string/jumbo v2, "move-file-to-container"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v0, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v0

    return v0

    :cond_4
    const-string/jumbo v2, "move-file-to-owner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v0, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v0

    return v0

    :cond_5
    const-string v2, "contacts-import-export"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static notifyKeyguardShow(IZ)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyKeyguardShow failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static processProfileNameChange(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processProfileNameChange is called for userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caller_id_to_show_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processProfileNameChange isCallerToShow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller_id_to_show_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processProfileNameChange update is done..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processProfileNameChange ignoring for userId- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static readECFile(Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    nop

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    long-to-int v5, v3

    new-array v2, v5, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_1

    array-length v7, v2

    sub-int/2addr v7, v5

    invoke-virtual {v1, v2, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    move v6, v7

    if-ltz v7, :cond_1

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    array-length v7, v2

    if-lt v5, v7, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v2

    :cond_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The file was not completely read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The file is too big"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :goto_1
    return-object v2
.end method

.method public static refreshLockTimer(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->refreshLockTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshLockTimer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static removePartialContainer()V
    .locals 0

    return-void
.end method

.method public static sendContainerEvent(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public static sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static setAttributes(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttributes(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setFocusedLauncherId(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->setFocusedLauncherId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 10

    const-string/jumbo v0, "isSupportMoveTo"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "action"

    const-string v6, "RequestProxy"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cmd"

    const-string/jumbo v6, "queryPersonaInfos"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v5, "personaIds"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v5, "personaTypes"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "personaNames"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "personaIds"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "personaTypes"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "personaNames"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v2, :cond_2

    array-length v6, v2

    if-lez v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_1

    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v8, v4, v6

    invoke-virtual {v5, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.android.app.voicenote"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "com.samsung.android.snote"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "isSupportMoveTo"

    const-string/jumbo v9, "true"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v6, "KnoxIdNamePair"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v7, "Please add proper log here"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.voicenote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.android.snote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "isSupportMoveTo"

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "please add proper log here"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public static setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPackageSettingInstalled failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldBlockUsbInterface(ILandroid/hardware/usb/UsbInterface;)Z
    .locals 6

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox:: claimInterface : request for user -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and interface reuqest -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xdc

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard for user- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and callingUid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p0, v2}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v3

    move v1, v3

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard allowed-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "doBind(): isPackageAllowedToAccessExternalSdcard on EDMProxy failed! "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Knox:: claimInterface : blocking claim interface request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x1

    return v2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "claimInterface exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    nop

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static showScrim(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->showScrim(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showScrim failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updatePersonaCache failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addAppPackageNameToWhiteList(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->addAppPackageNameToWhiteList(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "addAddPackageNameToWhiteList failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 10

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    move-object v3, p1

    move-object v6, p2

    move v8, p4

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/ISemPersonaManager;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not broadcastIntentThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public exists(I)Z
    .locals 1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public getAllKnoxNamesAndIds(Z)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getContainerName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerTypeForUserId(I)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x6

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    return v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    return v1

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentContainerType()I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x6

    return v2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    return v2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    return v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    return v2

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    return v2

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public getFocusedKnoxId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    return v0
.end method

.method public getFocusedLauncherId()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedLauncherId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFocusedUser()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedUser()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public getKeyguardShowState()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method public getKeyguardShowState(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getKeyguardShowState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKioskId()I
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x8000000

    and-int/2addr v5, v4

    if-lez v5, :cond_0

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKnoxId(IZ)I
    .locals 7

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getKnoxIds not null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_2

    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    :cond_3
    goto :goto_1

    :cond_4
    nop

    :goto_2
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isMyKnoxContainer false, return -1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKnoxIds(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not getKnoxIds"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "We will never get null from ui.name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v3, "KNOX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "KNOX II"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getKnoxUserHandles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Landroid/os/UserHandle;

    aget v4, v1, v2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xe6

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call Persona service:getMoveToKnoxMenuList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getPersonaIds()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaService() name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "in getRCPInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public isFOTAUpgrade()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFOTAUpgrade()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get FOTAUpgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFotaUpgradeVersionChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/ISemPersonaManager;->isFotaUpgradeVersionChanged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isFotaUpgradeVersionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_13

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "null"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_7

    aget-object v5, v2, v0

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-class v2, Landroid/os/PersonaPolicyManager;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v0, :cond_8

    new-instance v0, Landroid/os/PersonaPolicyManager;

    const-string/jumbo v3, "persona_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    :cond_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "DisallowPackage"

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v2, v0, p2}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    return v1

    :cond_9
    goto :goto_3

    :cond_a
    if-nez v4, :cond_c

    const-string v3, "AllowPackage"

    move-object v0, v3

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v3, v0, p2}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_b

    const/4 v4, 0x1

    :cond_b
    goto :goto_4

    :cond_c
    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-nez v4, :cond_11

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v0, v2

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v5, 0x1

    if-eqz v2, :cond_e

    const-string v6, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v5

    goto :goto_6

    :cond_e
    move v6, v1

    :goto_6
    if-eqz v2, :cond_f

    if-eqz v6, :cond_f

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOnlyForOwner() true - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :cond_f
    nop

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v5

    if-eq v2, v5, :cond_10

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_11

    :cond_10
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has System flag() true - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception v2

    return v1

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_12

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p3, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    return v0

    :catch_2
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not get isPossibleAddAppsToContainer , inside SemPersonaManager with exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_13
    :goto_7
    return v1
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz p4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isKioskModeEnabled(I)Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerInfo()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x8000000

    and-int v4, v2, v3

    if-ne v4, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isKnoxActivated()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public isKnoxKeyguardShown()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getKeyguardShowState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getknoxKeyguardShowingState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxReachedToMax()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    nop

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    add-int/lit8 v2, v2, 0x1

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    goto :goto_0

    :cond_3
    sub-int v5, v2, v3

    if-lt v5, v4, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v3

    :catch_0
    move-exception v2

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "getProfiles failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public isLightWeightContainer(I)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isLightWeightContainer()Z

    move-result v1

    return v1
.end method

.method public isSecureFolderKeyguardShown()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getKeyguardShowState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getSecureFolderKeyguardShowingState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserManaged()Z
    .locals 2

    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderMetaDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public launchPersonaHome(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    const/4 p1, 0x0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return v0
.end method

.method public lockPersona(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.COMMAND_LOCK_PROFILE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendRequestKeyStatus(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->sendRequestKeyStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendRequestKeyStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setComponentEnabledSettingForKnox(Landroid/content/ComponentName;III)V
    .locals 2

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "knoxId is not for knox user."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showKeyguard(II)Z
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->showKeyguard(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not showKeyguard"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Knox Keyguard is unlocked"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not startActivityThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
