.class public Landroid/os/PersonaPolicyManager;
.super Ljava/lang/Object;
.source "PersonaPolicyManager.java"


# static fields
.field public static final AIRCOMMAND:Ljava/lang/String; = "airCommand"

.field public static final AIRCOMMAND_DEFAULT:Z = true

.field public static final ALLSHARE:Ljava/lang/String; = "allShare"

.field public static final ALLSHARE_DEFAULT:Z = false

.field public static final BLOCKED_SHARING_COMP_COMMON:Ljava/lang/String; = "blockedcompcommon"

.field public static final BLOCKED_SHARING_COMP_FOR_OWNER:Ljava/lang/String; = "blockedcompknox"

.field public static final BLOCKED_SHARING_COMP_FOR_SECUREFOLDER:Ljava/lang/String; = "blockedcompsecurefolder"

.field public static final BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final CAMERA_MODE:Ljava/lang/String; = "cameraMode"

.field public static final CAMERA_MODE_DEFAULT:Z = false

.field public static final CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field private static final CLONE_TO_KNOX_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_IMPORT_EXPORT:Ljava/lang/String; = "contacts-import-export"

.field public static final CONTAINER_RESET:Ljava/lang/String; = "containerReset"

.field public static final CONTAINER_RESET_DEFAULT:Z = false

.field public static final CUSTOM_BADGEICON:Ljava/lang/String; = "customBadgeIcon"

.field public static final CUSTOM_BADGEICON_DEFAULT:Z = true

.field public static final CUSTOM_COLORIDENTIFICATION:Ljava/lang/String; = "customColorIdentification"

.field public static final CUSTOM_COLORIDENTIFICATION_DEFAULT:Z = true

.field public static final CUSTOM_PERSONAICON:Ljava/lang/String; = "customPersonaIcon"

.field public static final CUSTOM_PERSONAICON_DEFAULT:Z = true

.field public static final DEFAULT_APPS:Ljava/lang/String; = "DefaultApps"

.field public static final DISABLE_SWITCHWIDGET:Ljava/lang/String; = "disableSwitchWidget"

.field public static final DISABLE_SWITCHWIDGET_DEFAULT:Z = false

.field public static final DLNA_DATATRANSFER:Ljava/lang/String; = "dlnaDataTransfer"

.field public static final DLNA_DATATRANSFER_DEFAULT:Z = false

.field public static final ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final ENCRYPTION_DEFAULT:Z = true

.field private static final EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCLUDE_IN_COM:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPORT_AND_DELETE_FILES:Ljava/lang/String; = "exportAndDeleteFiles"

.field public static final EXPORT_AND_DELETE_FILES_DEFAULT:Z = false

.field public static final EXPORT_DATA:Ljava/lang/String; = "knox-export-data"

.field public static final EXPORT_FILES:Ljava/lang/String; = "exportFiles"

.field public static final EXPORT_FILES_DEFAULT:Z = false

.field public static final GEAR_SUPPORT:Ljava/lang/String; = "gearSupport"

.field public static final GEAR_SUPPORT_DEFAULT:Z = true

.field public static final IMPORT_DATA:Ljava/lang/String; = "knox-import-data"

.field public static final IMPORT_FILES:Ljava/lang/String; = "importFiles"

.field public static final IMPORT_FILES_DEFAULT:Z = true

.field public static final MODIFY_TIMEOUT:Ljava/lang/String; = "modifyTimeout"

.field public static final MODIFY_TIMEOUT_DEFAULT:Z = true

.field public static final MOVE_FILE_TO_CONTAINER:Ljava/lang/String; = "move-file-to-container"

.field public static final MOVE_FILE_TO_OWNER:Ljava/lang/String; = "move-file-to-owner"

.field public static final NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final PASSWORD_LOCK:Ljava/lang/String; = "passwordLock"

.field public static final PASSWORD_LOCK_DEFAULT:Z = true

.field public static final PENWINDOW:Ljava/lang/String; = "penWindow"

.field public static final PENWINDOW_DEFAULT:Z = true

.field public static final PRINT:Ljava/lang/String; = "print"

.field public static final PRINT_DEFAULT:Z = false

.field public static final SANITIZE_DATA:Ljava/lang/String; = "knox-sanitize-data"

.field public static final SANITIZE_DATA_LOCKSCREEN:Ljava/lang/String; = "knox-sanitize-data-lockscreen"

.field public static final SCREEN_CAPTURE_DEFAULT:Z = false

.field public static final SECURE_KEYSTORE:Ljava/lang/String; = "secureKeystore"

.field public static final SECURE_KEYSTORE_DEFAULT:Z = true

.field private static final SETTINGS_FOR_COM:[Ljava/lang/String;

.field private static final SHARE_WITH_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORTCUTS:Ljava/lang/String; = "Shortcuts"

.field public static final SHORTCUT_CREATION:Ljava/lang/String; = "shortcutCreation"

.field public static final SHORTCUT_CREATION_DEFAULT:Z = true

.field public static final SMS:Ljava/lang/String; = "Sms"

.field public static final SWITCH_NOTIF:Ljava/lang/String; = "switchNotif"

.field public static final SWITCH_NOTIF_DEFAULT:Z = true

.field public static final SYNC_ALL_CONTACTS:Ljava/lang/String; = "all_contacts"

.field public static final SYNC_FAVOURITE_CONTACTS:Ljava/lang/String; = "fav_contacts"

.field private static TAG:Ljava/lang/String; = null

.field public static final UNIVERSAL_CALLER_ID:Ljava/lang/String; = "universalCallerId"

.field public static final UNIVERSAL_CALLER_ID_DEFAULT:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IPersonaPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "PersonaPolicyManager"

    sput-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.bluetooth"

    const-string v3, "com.sec.knox.bluetooth.BluetoothFileTransfer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.AddFavoriteUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.switcher"

    const-string v3, "com.sec.knox.switcher.SwitchB2bActivityI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.switcher"

    const-string v3, "com.sec.knox.switcher.SwitchB2bActivityII"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.switcher"

    const-string v3, "com.sec.knox.switcher.SwitchAliasActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.switcher"

    const-string v3, "com.sec.knox.switcher.SwitchSfActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.simplesharing"

    const-string v3, "com.samsung.android.app.simplesharing.dialog.RelayActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.express"

    const-string v3, "com.sec.enterprise.knox.express.WelcomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.express"

    const-string v3, "com.sec.enterprise.knox.express.WelcomeActivityII"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.knox.securefolder.switcher.SwitchAliasActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.knox.securefolder.switcher.SwitchSfActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.switcher"

    const-string v3, "com.sec.knox.switcher.B2CShareViaActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.knox.securefolder.switcher.B2CShareViaActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enable_smart_capture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_keyboard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "fingerprint_samsungaccount_confirmed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "fingerprint_webpass"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "iris_webpass"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "sound_alive_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "k2hd_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tube_amp_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "intelligent_sleep_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "intelligent_rotation_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "all_sound_off"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "callsettings_answer_memo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "mono_audio_db"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_chaton_call_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_gridui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_music_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_ring_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_notification_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_mode_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "flip_font_style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_low_battery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_bonding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hdmi_audio_output"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "cradle_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "automatic_unlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_sharing_cable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_off_timeout_rollback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_s_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_large_cursor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_cursor_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "show_button_background"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_brightness_detail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_ring"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_alarm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_bluetooth_sco"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_master"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_waiting_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "vibrate_in_silent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_replace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_caps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_punctuate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "high_contrast"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "font_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "flash_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "easy_interaction"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_reminder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "time_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_negative"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access_control"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hover_zoom_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hover_zoom_magnifier_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_test"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "lcd_curtain"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "rapid_key_input"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "rapid_key_input_menu_checked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "date_format"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "user_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dtmf_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "sip_key_feedback_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "sip_key_feedback_vibration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_saving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "blackgrey_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "data_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_adjust_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "button_key_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_light_pulse"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pointer_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "show_touches"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pointer_speed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_web_navigate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_note_swap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_item_move"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_wake_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_side_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "side_motion_one_hand_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "side_motion_peek"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_arc_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_all_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_web_page"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_contact_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_email_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_album_and_photo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_email_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_single_photo_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_internet_window"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_now_playing_on_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_note_page_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_call_accept_auto_start_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_view_master_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_view_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_highlight"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_show_up_indicator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_information_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_full_text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_pregress_bar_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_speed_dial_tip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_sound_and_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_charing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_missed_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_voice_recording"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "led_indicator_incoming_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "any_screen_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "display_battery_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation_second"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "key_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "key_backlight_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_progress_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_speed_dial_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_air_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detachment_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detachment_alert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detect_mode_disabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_buddy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_buddy_text_suggestion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdseverity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_icon_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_icon_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_name_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_name_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "hearing_aid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "torch_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_pen_gesture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "voicecall_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "show_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "allowed_geolocation_origins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "location_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "short_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "long_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "double_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_support"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "caller_id_to_show_KNOX"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "caller_id_to_show_KNOX II"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "caller_id_to_show_Secure Folder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "system_locales"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dtmf_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "blue_light_filter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "blue_light_filter_opacity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "allowed_geolocation_origins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "location_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_support"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_s_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_large_cursor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_cursor_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_rtt_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_rtt_automatic_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "fingerprint_webpass"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bold_text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "display_cutout_hide_notch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    const-string v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1fb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_ap_settings"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "nfc_android_beam_help"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android_beam_settings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_android_beam"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "nfc_payment_settings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_airplane"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "smart_bonding_settings"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "wfc_settings_holder_key"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "volume_setting"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "notifications"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound_mode"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "ringtone"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "ringtone_2"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "ds_ring_tone"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_sound"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ds_notification_sound"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_2"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "touch_sounds"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "keyboard_sound"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "keyboard_vibration"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "dial_pad_tones"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "notifications_sub_settings"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "category_sound_mode_key_tap_feedback"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "vibrate_on_touch"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_sounds"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound_system_feedback"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound_advanced"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "mms_sound"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "mms_sound_ds"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "vibrations"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "vibration_feedback_intensity"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone_vibration"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "vibrate_when_ringing"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "vibrate_on_touch"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_simple_led_indicator_settings"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "secbrightness"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "outdoor_mode"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "font_preview"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_timeout"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "smartscreen_stay"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "pick_up_to_call_out_switch"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "pick_up_switch"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "merged_mute_or_pause_switch"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_pinning_settings"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "show_password"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "security_policy_updates"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_security_policy_update_now"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_auto_update"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_wifi_only"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "other_security_settings"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_security_category"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "sdcard_encrypt_status"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "set_visibility"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_icons_only"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "registered_iris"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "iris_manage_category"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_privacy"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_location"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "location_e911"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "location_mode"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "improve_location"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "permission_location"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "managed_profile_location_category"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "managed_profile_location_switch"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string/jumbo v1, "recent_location_requests"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string/jumbo v1, "location_services"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "vision_preferences"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "audio_preference_key"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "mobility_preference_key"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "categories_category"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string/jumbo v1, "moresettings_category"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "direct_access"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "direct_access_guide"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "direct_access_category"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "direct_accessibility"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "direct_talkback"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "direct_s_talkback"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "direct_page_reader"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "direct_magnifier"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "direct_negative"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "direct_greyscale"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "direct_color_adjustment"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "direct_accesscontrol"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_easy_interaction_preference"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "com.samsung.SMT"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "com.google.android.tts"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string/jumbo v1, "voice_assistant_tutorial_preference_screen"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "dark_screen"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_rapid_key_input"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_speak_password_preference"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string/jumbo v1, "magnification_preference_screen"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_magnification_window_preference_screen"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_magnification_gestures_preference_screen"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_magnification_navbar_preference_screen"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string/jumbo v1, "horizontal_focus_lock"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_negative_color"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string/jumbo v1, "greyscale_mode"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string/jumbo v1, "high_contrast"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "color_blind"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_inversion_preference"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "daltonizer_preference_screen"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "enable_global_gesture_preference_screen"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_settings_preference"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_engine_preference_section"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_engine_preference"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_engine_preference_category"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_default_lang"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_general_section"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_default_rate"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_default_pitch"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "action_buttons"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_play_example"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string/jumbo v1, "tts_status"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound_detector_plus_preference"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "flash_notification_key"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "all_sound_off_key"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string/jumbo v1, "google_captioning_preference_screen"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string/jumbo v1, "standard"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "captioning_locale"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "captioning_font_size"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "captioning_preset"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "custom"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "captioning_typeface"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "captioning_foreground_color"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "captioning_foreground_opacity"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "captioning_edge_type"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "captioning_edge_color"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "captioning_background_color"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "captioning_background_opacity"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "captioning_window_color"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "captioning_window_opacity"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string/jumbo v1, "mono_audio_key"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "auto_haptic_key"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "assistant_menu_preference"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "air_wake_up"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_long_press_timeout_preference"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string/jumbo v1, "menu_edit"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "dominant_hand_side"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "fmpad_size"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "fmpointer_size"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "fmpointer_speed"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string/jumbo v1, "magnifier_settings"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string/jumbo v1, "magnifier_size"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "auto_time"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "auto_zone"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "date"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string/jumbo v1, "time"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string/jumbo v1, "timezone"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "24 hour"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string/jumbo v1, "time_zone_region_preference_category"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string/jumbo v1, "region"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string/jumbo v1, "region_zone"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "footer_preference"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string/jumbo v1, "time_zone_fixed_offset_preference_category"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "fixed_offset"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string/jumbo v1, "software_version"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string/jumbo v1, "hardware_version_spr"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_update_settings"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string/jumbo v1, "software_update_settings"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string/jumbo v1, "software_update_settings_no_subtree"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_update_settings_na_gsm"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "additional_system_update_settings"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "diagnostics_and_usage"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string/jumbo v1, "icon_glossary"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string/jumbo v1, "plmn_update_settings"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string/jumbo v1, "status_info"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string/jumbo v1, "status_info_vzw"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string/jumbo v1, "sim_card_status"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "ctc_epush"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string/jumbo v1, "legal_container"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_my_device_info_header"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_device_info_header"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string/jumbo v1, "my_device_info_header"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string/jumbo v1, "telespree_activation"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string/jumbo v1, "service_information"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string/jumbo v1, "ntc_approval"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "device_name"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string/jumbo v1, "regulatory_info"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "device_feedback"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "device_model"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string/jumbo v1, "software_info"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "firmware_version"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string/jumbo v1, "security_patch"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "fcc_equipment_id"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "baseband_version"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string/jumbo v1, "installed_variant_version"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string/jumbo v1, "kernel_version"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "build_number"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string/jumbo v1, "selinux_status"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "csb_value"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string/jumbo v1, "hardware_version"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "country_certification_info"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string/jumbo v1, "security_sw_version"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string/jumbo v1, "knox_version"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string/jumbo v1, "omc_version"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string/jumbo v1, "sdm_config_version"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "battery_life"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "battery_level"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "battery_status"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "battery_info"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "fcc_id"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string/jumbo v1, "rated_value"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "battery_capacity"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "customer_services"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string/jumbo v1, "update"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "auto_update"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "device_info_software_update"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "device_info_software_update_auto_update"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string/jumbo v1, "scheduled_update"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_only"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_update"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_auto_download"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_scheduled_update"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_scheduled_update_time"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_last_update"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string/jumbo v1, "update_prl"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string/jumbo v1, "update_profile"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string/jumbo v1, "uicc_unlock"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "copyright"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string/jumbo v1, "license"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string/jumbo v1, "terms"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string/jumbo v1, "webview_license"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpaper_attributions"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string/jumbo v1, "samsung_legal"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string/jumbo v1, "safetyinfomation"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string/jumbo v1, "privacy_alert"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string/jumbo v1, "knox_privacy_notice"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string/jumbo v1, "samsung_privacy_policy"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string/jumbo v1, "legal_phrase_version"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "divx_license_settings"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string/jumbo v1, "ring_volume"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string/jumbo v1, "media_volume"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_volume"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "alarm_volume"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_volume"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string/jumbo v1, "waiting_tone_volume"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string/jumbo v1, "waiting_tone_volume_explanation"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string/jumbo v1, "show_information"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string/jumbo v1, "secured_lock_settigns"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string/jumbo v1, "swipe_lock_settings"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string/jumbo v1, "use_screen_lock"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "advanced_security"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string/jumbo v1, "security_category"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string/jumbo v1, "sdEncpref"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "battery_usage_desc"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string/jumbo v1, "powersaving"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string/jumbo v1, "ultra_powersaving"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "display_battery_level"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "battery_graph"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string/jumbo v1, "psm_screen_seekbar"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string/jumbo v1, "psm_restricted_device"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string/jumbo v1, "psm_restricted_bgdata"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    const-string/jumbo v1, "psm_restricted_network"

    const/16 v2, 0x100

    aput-object v1, v0, v2

    const-string/jumbo v1, "psm_aod_disable"

    const/16 v2, 0x101

    aput-object v1, v0, v2

    const-string/jumbo v1, "support_web_signin"

    const/16 v2, 0x102

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_fingerprint_add"

    const/16 v2, 0x103

    aput-object v1, v0, v2

    const-string/jumbo v1, "unlock_set_pattern"

    const/16 v2, 0x104

    aput-object v1, v0, v2

    const-string/jumbo v1, "unlock_set_pin"

    const/16 v2, 0x105

    aput-object v1, v0, v2

    const-string/jumbo v1, "unlock_set_password"

    const/16 v2, 0x106

    aput-object v1, v0, v2

    const-string v1, "fingerprint_category"

    const/16 v2, 0x107

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_fingerprint_item_1"

    const/16 v2, 0x108

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_fingerprint_item_2"

    const/16 v2, 0x109

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_fingerprint_item_3"

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_fingerprint_item_4"

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    const-string/jumbo v1, "mac_address"

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    const-string v1, "current_ip_address"

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    const-string v1, "frequency_band"

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    const-string/jumbo v1, "notify_open_networks"

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    const-string/jumbo v1, "sleep_policy"

    const/16 v2, 0x110

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_poor_network_detection"

    const/16 v2, 0x111

    aput-object v1, v0, v2

    const-string v1, "att_auto_connect"

    const/16 v2, 0x112

    aput-object v1, v0, v2

    const-string/jumbo v1, "install_credentials"

    const/16 v2, 0x113

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_assistant"

    const/16 v2, 0x114

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_hs20_enable"

    const/16 v2, 0x115

    aput-object v1, v0, v2

    const-string/jumbo v1, "wlan_notify_cmcc"

    const/16 v2, 0x116

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_connection_type"

    const/16 v2, 0x117

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_reset"

    const/16 v2, 0x118

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_space"

    const/16 v2, 0x119

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_used"

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    const-string v1, "change_storage_button"

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    const-string/jumbo v1, "total_size"

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    const-string v1, "app_size"

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    const-string v1, "data_size"

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    const-string v1, "clear_data_button"

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    const-string v1, "cache_size"

    const/16 v2, 0x120

    aput-object v1, v0, v2

    const-string v1, "clear_cache_button"

    const/16 v2, 0x121

    aput-object v1, v0, v2

    const-string/jumbo v1, "header_view"

    const/16 v2, 0x122

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_settings"

    const/16 v2, 0x123

    aput-object v1, v0, v2

    const-string v1, "data_settings"

    const/16 v2, 0x124

    aput-object v1, v0, v2

    const-string/jumbo v1, "permission_settings"

    const/16 v2, 0x125

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_settings"

    const/16 v2, 0x126

    aput-object v1, v0, v2

    const-string/jumbo v1, "preferred_settings"

    const/16 v2, 0x127

    aput-object v1, v0, v2

    const-string v1, "battery"

    const/16 v2, 0x128

    aput-object v1, v0, v2

    const-string/jumbo v1, "memory"

    const/16 v2, 0x129

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_always_scanning"

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    const-string v1, "bluetooth_always_scanning"

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    const-string/jumbo v1, "header_view"

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_settings"

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    const-string v1, "data_settings"

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    const-string/jumbo v1, "permission_settings"

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_settings"

    const/16 v2, 0x130

    aput-object v1, v0, v2

    const-string/jumbo v1, "preferred_settings"

    const/16 v2, 0x131

    aput-object v1, v0, v2

    const-string/jumbo v1, "high_accuracy"

    const/16 v2, 0x132

    aput-object v1, v0, v2

    const-string v1, "battery_saving"

    const/16 v2, 0x133

    aput-object v1, v0, v2

    const-string/jumbo v1, "sensors_only"

    const/16 v2, 0x134

    aput-object v1, v0, v2

    const-string v1, "category_sound_mode"

    const/16 v2, 0x135

    aput-object v1, v0, v2

    const-string v1, "category_sound_ringtone"

    const/16 v2, 0x136

    aput-object v1, v0, v2

    const-string v1, "category_sound_volume"

    const/16 v2, 0x137

    aput-object v1, v0, v2

    const-string v1, "category_sound_system_feedback"

    const/16 v2, 0x138

    aput-object v1, v0, v2

    const-string v1, "category_sound_advanced"

    const/16 v2, 0x139

    aput-object v1, v0, v2

    const-string/jumbo v1, "ring_vibration"

    const/16 v2, 0x13a

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_vibration"

    const/16 v2, 0x13b

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_vibration"

    const/16 v2, 0x13c

    aput-object v1, v0, v2

    const-string v1, "force_touch"

    const/16 v2, 0x13d

    aput-object v1, v0, v2

    const-string/jumbo v1, "interval_sound_mode"

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    const-string/jumbo v1, "vibrate"

    const/16 v2, 0x13f

    aput-object v1, v0, v2

    const-string/jumbo v1, "mute"

    const/16 v2, 0x140

    aput-object v1, v0, v2

    const-string/jumbo v1, "volume_key_control"

    const/16 v2, 0x141

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound_effect"

    const/16 v2, 0x142

    aput-object v1, v0, v2

    const-string/jumbo v1, "temporary_mute"

    const/16 v2, 0x143

    aput-object v1, v0, v2

    const-string/jumbo v1, "mute_duration"

    const/16 v2, 0x144

    aput-object v1, v0, v2

    const-string/jumbo v1, "remaining_time"

    const/16 v2, 0x145

    aput-object v1, v0, v2

    const-string/jumbo v1, "limiter_descryption"

    const/16 v2, 0x146

    aput-object v1, v0, v2

    const-string/jumbo v1, "maximum_volume"

    const/16 v2, 0x147

    aput-object v1, v0, v2

    const-string/jumbo v1, "use_password"

    const/16 v2, 0x148

    aput-object v1, v0, v2

    const-string/jumbo v1, "health_safety"

    const/16 v2, 0x149

    aput-object v1, v0, v2

    const-string/jumbo v1, "warranty"

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    const-string v1, "end_user_license_agreement"

    const/16 v2, 0x14b

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_writing_buddy"

    const/16 v2, 0x14c

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_spen_pointer_switch"

    const/16 v2, 0x14d

    aput-object v1, v0, v2

    const-string/jumbo v1, "loss_prevention_alert"

    const/16 v2, 0x14e

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_additional_feedback_pen_sound"

    const/16 v2, 0x14f

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_additional_feedback_pen_haptic"

    const/16 v2, 0x150

    aput-object v1, v0, v2

    const-string/jumbo v1, "rename_device"

    const/16 v2, 0x151

    aput-object v1, v0, v2

    const-string/jumbo v1, "unpair"

    const/16 v2, 0x152

    aput-object v1, v0, v2

    const-string/jumbo v1, "profile_container"

    const/16 v2, 0x153

    aput-object v1, v0, v2

    const-string v1, "PAN"

    const/16 v2, 0x154

    aput-object v1, v0, v2

    const-string/jumbo v1, "profile_container"

    const/16 v2, 0x155

    aput-object v1, v0, v2

    const-string v1, "HEADSET"

    const/16 v2, 0x156

    aput-object v1, v0, v2

    const-string v1, "A2DP"

    const/16 v2, 0x157

    aput-object v1, v0, v2

    const-string v1, "AVRCP_CONTROLLER"

    const/16 v2, 0x158

    aput-object v1, v0, v2

    const-string v1, "PAN"

    const/16 v2, 0x159

    aput-object v1, v0, v2

    const-string v1, "INPUT_DEVICE"

    const/16 v2, 0x15a

    aput-object v1, v0, v2

    const-string v1, "MAP"

    const/16 v2, 0x15b

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_settings"

    const/16 v2, 0x15c

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_calling_settings_open"

    const/16 v2, 0x15d

    aput-object v1, v0, v2

    const-string v1, "bluetooth_settings"

    const/16 v2, 0x15e

    aput-object v1, v0, v2

    const-string/jumbo v1, "nfc_settings"

    const/16 v2, 0x15f

    aput-object v1, v0, v2

    const-string/jumbo v1, "tethering_and_hotspot"

    const/16 v2, 0x160

    aput-object v1, v0, v2

    const-string v1, "enable_bluetooth_tethering"

    const/16 v2, 0x161

    aput-object v1, v0, v2

    const-string/jumbo v1, "usb_tether_settings"

    const/16 v2, 0x162

    aput-object v1, v0, v2

    const-string/jumbo v1, "nearby_scanning_setting_category"

    const/16 v2, 0x163

    aput-object v1, v0, v2

    const-string/jumbo v1, "nearby_scanning_help"

    const/16 v2, 0x164

    aput-object v1, v0, v2

    const-string/jumbo v1, "privacy_category"

    const/16 v2, 0x165

    aput-object v1, v0, v2

    const-string/jumbo v1, "location_settings"

    const/16 v2, 0x166

    aput-object v1, v0, v2

    const-string v1, "device_info_date_time_settings"

    const/16 v2, 0x167

    aput-object v1, v0, v2

    const-string/jumbo v1, "mobile_network_settings"

    const/16 v2, 0x168

    aput-object v1, v0, v2

    const-string/jumbo v1, "simcard_management"

    const/16 v2, 0x169

    aput-object v1, v0, v2

    const-string/jumbo v1, "wireless_settings"

    const/16 v2, 0x16a

    aput-object v1, v0, v2

    const-string/jumbo v1, "wireless_settings_for_vzw"

    const/16 v2, 0x16b

    aput-object v1, v0, v2

    const-string v1, "apn_name"

    const/16 v2, 0x16c

    aput-object v1, v0, v2

    const-string v1, "apn_apn"

    const/16 v2, 0x16d

    aput-object v1, v0, v2

    const-string v1, "apn_http_proxy"

    const/16 v2, 0x16e

    aput-object v1, v0, v2

    const-string v1, "apn_http_port"

    const/16 v2, 0x16f

    aput-object v1, v0, v2

    const-string v1, "apn_user"

    const/16 v2, 0x170

    aput-object v1, v0, v2

    const-string v1, "apn_password"

    const/16 v2, 0x171

    aput-object v1, v0, v2

    const-string v1, "apn_server"

    const/16 v2, 0x172

    aput-object v1, v0, v2

    const-string v1, "apn_mmsc"

    const/16 v2, 0x173

    aput-object v1, v0, v2

    const-string v1, "apn_mms_proxy"

    const/16 v2, 0x174

    aput-object v1, v0, v2

    const-string v1, "apn_mms_port"

    const/16 v2, 0x175

    aput-object v1, v0, v2

    const-string v1, "apn_mcc"

    const/16 v2, 0x176

    aput-object v1, v0, v2

    const-string v1, "apn_mnc"

    const/16 v2, 0x177

    aput-object v1, v0, v2

    const-string v1, "auth_type"

    const/16 v2, 0x178

    aput-object v1, v0, v2

    const-string v1, "apn_type"

    const/16 v2, 0x179

    aput-object v1, v0, v2

    const-string v1, "apn_protocol"

    const/16 v2, 0x17a

    aput-object v1, v0, v2

    const-string v1, "apn_roaming_protocol"

    const/16 v2, 0x17b

    aput-object v1, v0, v2

    const-string v1, "carrier_enabled"

    const/16 v2, 0x17c

    aput-object v1, v0, v2

    const-string v1, "bearer_multi"

    const/16 v2, 0x17d

    aput-object v1, v0, v2

    const-string/jumbo v1, "mvno_type"

    const/16 v2, 0x17e

    aput-object v1, v0, v2

    const-string/jumbo v1, "mvno_match_data"

    const/16 v2, 0x17f

    aput-object v1, v0, v2

    const-string/jumbo v1, "wps_push_button"

    const/16 v2, 0x180

    aput-object v1, v0, v2

    const-string/jumbo v1, "wps_pin_entry"

    const/16 v2, 0x181

    aput-object v1, v0, v2

    const-string v1, "ethernet_settings"

    const/16 v2, 0x182

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_eth"

    const/16 v2, 0x183

    aput-object v1, v0, v2

    const-string v1, "eth_config"

    const/16 v2, 0x184

    aput-object v1, v0, v2

    const-string/jumbo v1, "my_phone_number"

    const/16 v2, 0x185

    aput-object v1, v0, v2

    const-string/jumbo v1, "sim_status"

    const/16 v2, 0x186

    aput-object v1, v0, v2

    const-string/jumbo v1, "imei_info"

    const/16 v2, 0x187

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_ip_address"

    const/16 v2, 0x188

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi_mac_address"

    const/16 v2, 0x189

    aput-object v1, v0, v2

    const-string v1, "bt_address"

    const/16 v2, 0x18a

    aput-object v1, v0, v2

    const-string v1, "ethernet_mac_address"

    const/16 v2, 0x18b

    aput-object v1, v0, v2

    const-string/jumbo v1, "serial_number"

    const/16 v2, 0x18c

    aput-object v1, v0, v2

    const-string/jumbo v1, "up_time"

    const/16 v2, 0x18d

    aput-object v1, v0, v2

    const-string/jumbo v1, "wimax_mac_address"

    const/16 v2, 0x18e

    aput-object v1, v0, v2

    const-string/jumbo v1, "spen_fcc_id"

    const/16 v2, 0x18f

    aput-object v1, v0, v2

    const-string/jumbo v1, "sysscope_status"

    const/16 v2, 0x190

    aput-object v1, v0, v2

    const-string/jumbo v1, "installment_balance"

    const/16 v2, 0x191

    aput-object v1, v0, v2

    const-string/jumbo v1, "operator_name"

    const/16 v2, 0x192

    aput-object v1, v0, v2

    const-string/jumbo v1, "signal_strength"

    const/16 v2, 0x193

    aput-object v1, v0, v2

    const-string/jumbo v1, "network_type"

    const/16 v2, 0x194

    aput-object v1, v0, v2

    const-string/jumbo v1, "latest_area_info"

    const/16 v2, 0x195

    aput-object v1, v0, v2

    const-string/jumbo v1, "service_state"

    const/16 v2, 0x196

    aput-object v1, v0, v2

    const-string/jumbo v1, "roaming_state"

    const/16 v2, 0x197

    aput-object v1, v0, v2

    const-string v1, "data_state"

    const/16 v2, 0x198

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsc_server_acg"

    const/16 v2, 0x199

    aput-object v1, v0, v2

    const-string/jumbo v1, "sim_lock_status_kddi"

    const/16 v2, 0x19a

    aput-object v1, v0, v2

    const-string/jumbo v1, "sim_state_status"

    const/16 v2, 0x19b

    aput-object v1, v0, v2

    const-string/jumbo v1, "sim_state_code"

    const/16 v2, 0x19c

    aput-object v1, v0, v2

    const-string/jumbo v1, "meid_number"

    const/16 v2, 0x19d

    aput-object v1, v0, v2

    const-string/jumbo v1, "imei"

    const/16 v2, 0x19e

    aput-object v1, v0, v2

    const-string/jumbo v1, "imei_sv"

    const/16 v2, 0x19f

    aput-object v1, v0, v2

    const-string v1, "_imei0"

    const/16 v2, 0x1a0

    aput-object v1, v0, v2

    const-string v1, "_imei_sv0"

    const/16 v2, 0x1a1

    aput-object v1, v0, v2

    const-string v1, "_imei1"

    const/16 v2, 0x1a2

    aput-object v1, v0, v2

    const-string v1, "_imei_sv1"

    const/16 v2, 0x1a3

    aput-object v1, v0, v2

    const-string/jumbo v1, "icc_id"

    const/16 v2, 0x1a4

    aput-object v1, v0, v2

    const-string/jumbo v1, "ims_reg"

    const/16 v2, 0x1a5

    aput-object v1, v0, v2

    const-string v1, "auto_brightness"

    const/16 v2, 0x1a6

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter"

    const/16 v2, 0x1a7

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_seekbar"

    const/16 v2, 0x1a8

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_desc"

    const/16 v2, 0x1a9

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_turn_on_now"

    const/16 v2, 0x1aa

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_turn_on_as_scheduled"

    const/16 v2, 0x1ab

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_auto_schedule"

    const/16 v2, 0x1ac

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_user_schedule"

    const/16 v2, 0x1ad

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_on_time"

    const/16 v2, 0x1ae

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_off_time"

    const/16 v2, 0x1af

    aput-object v1, v0, v2

    const-string/jumbo v1, "night_theme"

    const/16 v2, 0x1b0

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_night_theme_preview"

    const/16 v2, 0x1b1

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_night_theme_turn_on_now"

    const/16 v2, 0x1b2

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_night_theme_desc"

    const/16 v2, 0x1b3

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_font_size"

    const/16 v2, 0x1b4

    aput-object v1, v0, v2

    const-string v1, "bold_text"

    const/16 v2, 0x1b5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_font_style"

    const/16 v2, 0x1b6

    aput-object v1, v0, v2

    const-string/jumbo v1, "sec_screen_size"

    const/16 v2, 0x1b7

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_mode"

    const/16 v2, 0x1b8

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_resolution"

    const/16 v2, 0x1b9

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_resolution_desc"

    const/16 v2, 0x1ba

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_resolution_seekbar"

    const/16 v2, 0x1bb

    aput-object v1, v0, v2

    const-string/jumbo v1, "icon_backgrounds"

    const/16 v2, 0x1bc

    aput-object v1, v0, v2

    const-string/jumbo v1, "status_bar"

    const/16 v2, 0x1bd

    aput-object v1, v0, v2

    const-string/jumbo v1, "recent_notification_status_bar"

    const/16 v2, 0x1be

    aput-object v1, v0, v2

    const-string v1, "display_battery_percent"

    const/16 v2, 0x1bf

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigation_Bar"

    const/16 v2, 0x1c0

    aput-object v1, v0, v2

    const-string/jumbo v1, "show_hide_bar"

    const/16 v2, 0x1c1

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_hard_press"

    const/16 v2, 0x1c2

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_pressure_description"

    const/16 v2, 0x1c3

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_pressure_seekbar"

    const/16 v2, 0x1c4

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_pressure_test"

    const/16 v2, 0x1c5

    aput-object v1, v0, v2

    const-string/jumbo v1, "unlock_with_home_btn"

    const/16 v2, 0x1c6

    aput-object v1, v0, v2

    const-string v1, "gesture_container"

    const/16 v2, 0x1c7

    aput-object v1, v0, v2

    const-string v1, "gesture_preview"

    const/16 v2, 0x1c8

    aput-object v1, v0, v2

    const-string v1, "button_container"

    const/16 v2, 0x1c9

    aput-object v1, v0, v2

    const-string v1, "button_order"

    const/16 v2, 0x1ca

    aput-object v1, v0, v2

    const-string v1, "gesture_hint"

    const/16 v2, 0x1cb

    aput-object v1, v0, v2

    const-string/jumbo v1, "recents_key"

    const/16 v2, 0x1cc

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen_off_pocket"

    const/16 v2, 0x1cd

    aput-object v1, v0, v2

    const-string v1, "autobrightness_description"

    const/16 v2, 0x1ce

    aput-object v1, v0, v2

    const-string/jumbo v1, "reset_usage_pattern"

    const/16 v2, 0x1cf

    aput-object v1, v0, v2

    const-string/jumbo v1, "pen_settings_title"

    const/16 v2, 0x1d0

    aput-object v1, v0, v2

    const-string/jumbo v1, "pen_settings"

    const/16 v2, 0x1d1

    aput-object v1, v0, v2

    const-string/jumbo v1, "multi_window_setting"

    const/16 v2, 0x1d2

    aput-object v1, v0, v2

    const-string/jumbo v1, "split_screen_view"

    const/16 v2, 0x1d3

    aput-object v1, v0, v2

    const-string/jumbo v1, "snap_window"

    const/16 v2, 0x1d4

    aput-object v1, v0, v2

    const-string/jumbo v1, "smart_capture"

    const/16 v2, 0x1d5

    aput-object v1, v0, v2

    const-string/jumbo v1, "motion_and_gesture"

    const/16 v2, 0x1d6

    aput-object v1, v0, v2

    const-string/jumbo v1, "smart_stay"

    const/16 v2, 0x1d7

    aput-object v1, v0, v2

    const-string/jumbo v1, "smart_alert"

    const/16 v2, 0x1d8

    aput-object v1, v0, v2

    const-string v1, "easy_mute"

    const/16 v2, 0x1d9

    aput-object v1, v0, v2

    const-string v1, "direct_call"

    const/16 v2, 0x1da

    aput-object v1, v0, v2

    const-string/jumbo v1, "onehand_operation_settings"

    const/16 v2, 0x1db

    aput-object v1, v0, v2

    const-string v1, "gesture_type"

    const/16 v2, 0x1dc

    aput-object v1, v0, v2

    const-string v1, "button_type"

    const/16 v2, 0x1dd

    aput-object v1, v0, v2

    const-string v1, "finger_sensor_gesture"

    const/16 v2, 0x1de

    aput-object v1, v0, v2

    const-string/jumbo v1, "palm_swipe_to_capture"

    const/16 v2, 0x1df

    aput-object v1, v0, v2

    const-string v1, "always_on_screen"

    const/16 v2, 0x1e0

    aput-object v1, v0, v2

    const-string v1, "font_size_preference_screen"

    const/16 v2, 0x1e1

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_high_text_contrast_preference"

    const/16 v2, 0x1e2

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_show_button_bg"

    const/16 v2, 0x1e3

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_large_pointer_icon"

    const/16 v2, 0x1e4

    aput-object v1, v0, v2

    const-string/jumbo v1, "pref_app_header"

    const/16 v2, 0x1e5

    aput-object v1, v0, v2

    const-string v1, "block"

    const/16 v2, 0x1e6

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance"

    const/16 v2, 0x1e7

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance_high"

    const/16 v2, 0x1e8

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance_default"

    const/16 v2, 0x1e9

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance_low"

    const/16 v2, 0x1ea

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance_min"

    const/16 v2, 0x1eb

    aput-object v1, v0, v2

    const-string v1, "advanced"

    const/16 v2, 0x1ec

    aput-object v1, v0, v2

    const-string v1, "badge"

    const/16 v2, 0x1ed

    aput-object v1, v0, v2

    const-string v1, "app_link_category"

    const/16 v2, 0x1ee

    aput-object v1, v0, v2

    const-string v1, "app_link"

    const/16 v2, 0x1ef

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_status_bar"

    const/16 v2, 0x1f0

    aput-object v1, v0, v2

    const-string/jumbo v1, "show_notification_icons"

    const/16 v2, 0x1f1

    aput-object v1, v0, v2

    const-string/jumbo v1, "recent_notifications"

    const/16 v2, 0x1f2

    aput-object v1, v0, v2

    const-string v1, "all_notification"

    const/16 v2, 0x1f3

    aput-object v1, v0, v2

    const-string/jumbo v1, "show_battery_percent"

    const/16 v2, 0x1f4

    aput-object v1, v0, v2

    const-string/jumbo v1, "pbm_maximum_brightness"

    const/16 v2, 0x1f5

    aput-object v1, v0, v2

    const-string/jumbo v1, "pbm_screen_resolution"

    const/16 v2, 0x1f6

    aput-object v1, v0, v2

    const-string/jumbo v1, "pbm_video_enhancer"

    const/16 v2, 0x1f7

    aput-object v1, v0, v2

    const-string/jumbo v1, "pbm_uhq_upscaler_ver_1"

    const/16 v2, 0x1f8

    aput-object v1, v0, v2

    const-string/jumbo v1, "pbm_uhq_upscaler_ver_2"

    const/16 v2, 0x1f9

    aput-object v1, v0, v2

    const-string/jumbo v1, "pbm_uhq_upscaler_ver_3"

    const/16 v2, 0x1fa

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/PersonaPolicyManager;->SETTINGS_FOR_COM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    iput-object p1, p0, Landroid/os/PersonaPolicyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static addKnoxKey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addKnoxKeyToSecure(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getCloneToKnoxSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getComSettings()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/PersonaPolicyManager;->SETTINGS_FOR_COM:[Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getKnoxKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static getKnoxKeysToSecure(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static removeKnoxKey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeKnoxKeyFromSecure(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, addLockOnImage() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSecureKey(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->addSecureKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public addSystemKey(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->addSystemKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAirCommandEnabled(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAirCommandEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowAllShare(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowAllShare(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowContainerReset(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowContainerReset(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowCustomBadgeIcon(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomBadgeIcon(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowCustomColorIdentification(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomColorIdentification(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowCustomPersonaIcon(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomPersonaIcon(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowDLNADataTransfer(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowDLNADataTransfer(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowExportAndDeleteFiles(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowExportFiles(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportFiles(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowImportFiles(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowImportFiles(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowPrint(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowPrint(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowShortCutCreation(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowShortCutCreation(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowUniversalCallerId(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowUniversalCallerId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getCameraModeChangeEnabled(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getCameraModeChangeEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDisableSwitchWidgetOnLockScreen(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getDisableSwitchWidgetOnLockScreen(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getEncryptionStatus(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getEncryptionStatus(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getExcludeComponentList(ZZ)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_COMMON:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_KNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->EXCLUDE_FROM_SHARE_FROM_OWNER:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    if-eqz p2, :cond_4

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v1

    const-string v2, "blockedcompcommon"

    invoke-virtual {p0, v2, v1}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-direct {p0, v2}, Landroid/os/PersonaPolicyManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p1, :cond_3

    const-string v3, "blockedcompsecurefolder"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, v3}, Landroid/os/PersonaPolicyManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    goto :goto_1

    :cond_3
    const-string v3, "blockedcompknox"

    invoke-virtual {p0, v3, v1}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-direct {p0, v3}, Landroid/os/PersonaPolicyManager;->getComponentsFromPolicy(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getGearSupportEnabled(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getGearSupportEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getModifyLockScreenTimeout(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getModifyLockScreenTimeout(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getPasswordLockPolicy(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPasswordLockPolicy(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getPenWindowEnabled(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPenWindowEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, getRCPDataPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, getRCPDataPolicyForUser() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicyForUser, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, getRCPNotificationPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0}, Landroid/content/pm/IPersonaPolicyManager;->getSecureKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureKeystoreEnabled(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSecureKeystoreEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getSwitchNotifEnabled(I)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSwitchNotifEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "all_contacts"

    return-object v0
.end method

.method public getSystemKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0}, Landroid/content/pm/IPersonaPolicyManager;->getSystemKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBadgeRequired()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequired()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, isBadgeRequired() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isBadgeRequired , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBadgeRequiredFromOwner(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, isBadgeRequiredFromOwner(packageName) is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isBadgeRequiredFromOwner(packageName) , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMoveFilesToContainerAllowed(I)Z
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMoveFilesToOwnerAllowed(I)Z
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShareClipboardDataToContainerAllowed(I)Z
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerReceivers()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0}, Landroid/content/pm/IPersonaPolicyManager;->registerReceivers()V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, registerReceiversis not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get registerReceivers, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public removeSecureKey(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->removeSecureKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeSystemKey(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyManager;->removeSystemKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAirCommandEnabled(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAirCommandEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowAllShare(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowAllShare(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowContainerReset(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowContainerReset(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowCustomBadgeIcon(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomBadgeIcon(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowCustomColorIdentification(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomColorIdentification(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowCustomPersonaIcon(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomPersonaIcon(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowDLNADataTransfer(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowDLNADataTransfer(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowExportAndDeleteFiles(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportAndDeleteFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowExportFiles(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowImportFiles(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowImportFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowPrint(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowPrint(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowShortCutCreation(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowShortCutCreation(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllowUniversalCallerId(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowUniversalCallerId(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCameraModeChangeEnabled(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setCameraModeChangeEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDisableSwitchWidgetOnLockScreen(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setDisableSwitchWidgetOnLockScreen(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEncryptionStatus(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setEncryptionStatus(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setGearSupportEnabled(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setGearSupportEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setModifyLockScreenTimeout(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setModifyLockScreenTimeout(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPasswordLockPolicy(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPasswordLockPolicy(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPenWindowEnabled(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPenWindowEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, setRCPDataPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in PersonaPolicyManager, setRCPNotificationPolicy() is not called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSecureKeystoreEnabled(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSecureKeystoreEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSwitchNotifEnabled(IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSwitchNotifEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSyncPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
