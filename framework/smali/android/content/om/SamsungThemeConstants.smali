.class public final Landroid/content/om/SamsungThemeConstants;
.super Ljava/lang/Object;
.source "SamsungThemeConstants.java"


# static fields
.field public static final ACTION_THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field public static final DATA_APP_DIR:Ljava/lang/String; = "/data/app"

.field public static final DATA_OVERLAY_DIR:Ljava/lang/String; = "/data/overlays"

.field public static final DEBUG_THEMES:Z = true

.field public static final IS_SAMSUNG_THEMES_ENABLED:Z = true

.field public static final LEGACY_CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"

.field public static final LEGACY_CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LEGACY_INCALLUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.incallui"

.field public static final LEGACY_MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final PATH_LOCAL_TEMP:Ljava/lang/String; = "/data/local/tmp"

.field public static final PATH_OVERLAY:Ljava/lang/String; = "/data/overlays"

.field public static final PATH_OVERLAY_CURRENT_STYLE:Ljava/lang/String; = "/data/overlays/currentstyle"

.field public static final PATH_THEME_PREFERENCES:Ljava/lang/String; = "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

.field public static final PERMISSION_OVERLAY_COMPONENT:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

.field public static final PERMISSION_OVERLAY_LANGUAGE:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_LANGUAGE"

.field public static final PERMISSION_OVERLAY_THEME:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

.field public static final PERMISSION_SAMSUNG_OVERLAY:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_"

.field public static final SAMSUNGTHEME_SIBLING:Ljava/lang/String; = "samsungtheme-sibling"

.field public static final THEMECENTER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.themecenter"

.field public static final THEME_OVERLAY_DIR:Ljava/lang/String; = "/data/overlays/style"

.field public static final changeableApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static immortalApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static overlayTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static protectedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static siblingTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 63

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.sec.android.app.desktoplauncher"

    const-string v2, "com.sec.android.desktopmode.uiservice"

    const-string v3, "com.sec.android.app.eventnotification"

    const-string v4, "com.samsung.tmowfc.wfcpref"

    const-string v5, "com.sec.android.app.launcher"

    const-string v6, "com.sec.android.app.FlashBarService"

    const-string v7, "com.android.nfc"

    const-string v8, "com.samsung.felicalock"

    const-string v9, "com.samsung.app.highlightplayer"

    const-string v10, "com.android.apps.tag"

    const-string v11, "com.samsung.app.newtrim"

    const-string v12, "com.adnroid.dreams.phototable"

    const-string v13, "com.policydm"

    const-string v14, "com.samsung.android.securitylogagent"

    const-string v15, "com.sec.android.app.SecSetupWizard"

    const-string v16, "com.samsung.safetyinformation"

    const-string v17, "com.sec.app.samsungprinterservice"

    const-string v18, "com.samsung.spg"

    const-string v19, "com.sec.android.app.capabilitymanager"

    const-string v20, "com.sec.android.app.wallpaperchooser"

    const-string v21, "com.bst.airmessage"

    const-string v22, "com.sec.android.app.simsettingmgr"

    const-string v23, "com.sec.android.app.simcardmanagement"

    const-string v24, "com.sec.android.widgetapp.dualsimwidget"

    const-string v25, "com.sec.android.app.irsettings"

    const-string v26, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v27, "com.google.android.marvin.talkback"

    const-string v28, "com.samsung.android.SettingsReceiver"

    const-string v29, "com.sec.android.app.popupuireceiver"

    const-string v30, "com.sec.android.wallpapercropper2"

    const-string v31, "com.samsung.android.MtpApplication"

    const-string v32, "com.sec.android.app.soundalive"

    const-string v33, "com.samsung.android.game.gametools"

    const-string v34, "com.samsung.android.app.galaxylabs"

    const-string v35, "com.sec.android.mimage.photoretouching"

    const-string v36, "com.sec.android.mimage.gear360editor"

    const-string v37, "com.android.providers.media"

    const-string v38, "com.samsung.android.slinkcloud"

    const-string v39, "com.sec.android.emergencylauncher"

    const-string v40, "com.samsung.hongbaoassistant"

    const-string v41, "com.sec.android.app.firewall"

    const-string v42, "com.bst.spamcall"

    const-string v43, "com.sec.app.screenrecorder"

    const-string v44, "com.sec.android.app.wfdbroker"

    const-string v45, "com.samsung.android.smartmirroring"

    const-string v46, "com.samsung.android.mateagent"

    const-string v47, "com.android.bluetooth"

    const-string v48, "com.samsung.android.app.telephonyui.netsettings"

    const-string v49, "com.samsung.theme"

    const-string v50, "com.sec.winset"

    const-string v51, "com.sec.sesl.tester"

    const-string v52, "com.samsung.advancedcalling"

    const-string v53, "com.android.certinstaller"

    const-string v54, "com.android.keychain"

    const-string v55, "com.sec.android.app.quicktool"

    const-string v56, "com.sec.unifiedwfc"

    const-string v57, "com.samsung.advancedcalling"

    const-string v58, "com.samsung.knox.securefolder"

    const-string v59, "com.samsung.android.knox.containeragent"

    const-string v60, "com.samsung.android.tencentwifisecurity"

    const-string v61, "com.samsung.android.app.smartcapture"

    const-string v62, "com.samsung.android.app.clipboardedge"

    filled-new-array/range {v1 .. v62}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    new-instance v0, Landroid/content/om/SamsungThemeConstants$1;

    invoke-direct {v0}, Landroid/content/om/SamsungThemeConstants$1;-><init>()V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    const-string v2, "com.samsung.android.themecenter"

    const-string v3, "com.android.nfc"

    const-string v4, "com.samsung.android.universalswitch"

    const-string v5, "com.android.providers.media"

    const-string v6, "com.android.incallui"

    const-string v7, "com.android.phone"

    const-string v8, "com.samsung.android.app.aodservice"

    const-string v9, "com.sec.android.app.launcher"

    const-string v10, "com.sec.android.app.safetyassurance"

    const-string v11, "com.samsung.android.incallui"

    const-string v12, "com.samsung.android.scloud"

    const-string v13, "com.sec.android.app.wfdbroker"

    const-string v14, "com.samsung.android.smartmirroring"

    const-string v15, "com.android.bluetooth"

    const-string v16, "com.samsung.android.mateagent"

    const-string v17, "com.samsung.android.messaging"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->immortalApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.themecenter"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->protectedApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
